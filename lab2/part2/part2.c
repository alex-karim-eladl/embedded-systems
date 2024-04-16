
#include "stm32f4xx.h"
#include "system_stm32f4xx.h"

/*************************************************
 * function declarations
 *************************************************/
void init_systick(uint32_t s);
int main(void);
void delay_ms(uint32_t);
static volatile int PAUSE;

/*************************************************
 * variables
 *************************************************/
static volatile uint32_t tDelay;
extern uint32_t SystemCoreClock;

/*************************************************
 * default interrupt handler
 *************************************************/
void SysTick_Handler(void)
{
    if (tDelay != 0)
    {
        tDelay--;
    }
}

void EXTI9_5_IRQHandler(void)
{
    if (EXTI->PR & (1 << 7))
    {
        PAUSE = PAUSE ? 0 : 1;
        delay_ms(5);
        EXTI->PR |= (1 << 7);
    }
}

void TIM2_IRQHandler(void)
{

    // clear interrupt status
    if (TIM2->DIER & 0x01)
    {
        if (TIM2->SR & 0x01)
        {
            TIM2->SR &= ~(1U << 0);
        }
    }

    // OUTPUT
    GPIOC->MODER |= (1 << 14);
    // GPIOC->OTYPER = 0;
    //  Set PC7 to High
    GPIOC->ODR = (1 << 7);
    // Set it back to input
    GPIOC->MODER &= ~(3U << 14);
}

/*************************************************
 * initialize SysTick
 *************************************************/
void init_systick(uint32_t s)
{
    // Clear CTRL register
    SysTick->CTRL = 0x00000;
    // Main clock source is running with HSI by default which is at 8 Mhz.
    // SysTick clock source can be set with CTRL register (Bit 2)
    // 0: Processor clock/8 (AHB/8)
    // 1: Processor clock (AHB)
    SysTick->CTRL |= (1 << 2);
    // Enable callback (bit 1)
    SysTick->CTRL |= (1 << 1);
    // Load the value
    SysTick->LOAD = (uint32_t)(s - 1);
    // Set the current value to 0
    SysTick->VAL = 0;
    // Enable SysTick (bit 0)
    SysTick->CTRL |= (1 << 0);
}

/*************************************************
 * main code starts from here
 *************************************************/
int main(void)
{
    init_systick(SystemCoreClock / 1000);

    // Similar function is given with CMSIS
    // SysTick_Config(SystemCoreClock/1000);

    // setup LEDs and turn them on
    // enable TIM2 clock (bit0)
    RCC->APB1ENR |= (1 << 0);
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOCEN;
    GPIOD->MODER &= ~(0xFFU << 24);
    GPIOD->MODER |= (0x55 << 24);
    GPIOD->ODR = 0;
    // Set Port C clock
    RCC->AHB1ENR |= (1 << 2);
    /* Make Pin 7 output (MODER: bits 1:0) */
    GPIOC->MODER |= (1 << 14);
    GPIOC->PUPDR &= ~(3U << 14);
    // enable SYSCFG clock (APB2ENR: bit 14)
    RCC->APB2ENR |= (1 << 14);

    SYSCFG->EXTICR[1] = (2U << 12); // Write 0010 to map PC7 to EXTI2
    // Choose either rising edge trigger (RTSR) or falling edge trigger (FTSR)
    EXTI->FTSR |= (1 << 7);
    // Mask the used external interrupt numbers.
    EXTI->IMR |= (1 << 7);
    // Set Priority for each interrupt request
    NVIC_SetPriority(EXTI9_5_IRQn, 1); // Priority level 1
    // enable EXT1 IRQ from NVIC
    NVIC_EnableIRQ(EXTI9_5_IRQn);
    TIM2->PSC = 7999;

    // Set the auto-reload value to 10000
    //   which should give 1 second timer interrupts
    TIM2->ARR = 500;

    // Update Interrupt Enable
    TIM2->DIER |= (1 << 0);

    NVIC_SetPriority(TIM2_IRQn, 2); // Priority level 2
    // enable TIM2 IRQ from NVIC
    NVIC_EnableIRQ(TIM2_IRQn);

    // Enable Timer 2 module (CEN, bit0)
    TIM2->CR1 |= (1 << 0);
    // OUTPUT
    GPIOC->MODER |= (1 << 14);
    // GPIOC->OTYPER = 0;
    //  Set PC7 to High
    GPIOC->ODR = (1 << 7);
    // Set it back to input
    GPIOC->MODER &= ~(3U << 14);

    while (1)
    {
        for (int i = 0; i < 4; ++i)
        {

            delay_ms(500); // .5 sec delay
            while (PAUSE)
            {
                i = 0;
            }
            unsigned int light = (0x1 << (12 + i));
            GPIOD->ODR = light; // Toggle LEDs
        }
    }

    return 0;
}

/*
 * Millisecond delay function.
 */
void delay_ms(uint32_t s)
{
    tDelay = s;
    while (tDelay != 0)
        ;
}
