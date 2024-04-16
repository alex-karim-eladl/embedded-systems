
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


void EXTI0_IRQHandler(void)
{
    if (EXTI->PR & (1 << 0)){
        // GPIOA->IDR
        PAUSE = PAUSE ? 0 : 1;
        delay_ms(5);
        EXTI->PR = (1 << 0);
    }
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
    /* optinally set system clock to 168 Mhz */
    // set_sysclk_to_168();

    // SystemCoreClock should be configured correctly
    // depending on the operating frequency
    // SysTick runs at the same speed, so if we generate
    // a tick every clock_speed/1000 cycles, we can generate
    // a 1 ms tick speed.
    init_systick(SystemCoreClock / 1000);

    // Similar function is given with CMSIS
    // SysTick_Config(SystemCoreClock/1000);

    // setup LEDs and turn them on
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
    GPIOD->MODER &= ~(0xFFU << 24);
    GPIOD->MODER |= (0x55 << 24);
    GPIOD->ODR = 0;
    RCC->AHB1ENR |= (1 << 0);
    /* Make Pin 0 input (MODER: bits 1:0) */
    GPIOA->MODER &= ~(3U << 0);   // Reset bits 0-1 to clear old values

    // enable SYSCFG clock (APB2ENR: bit 14)
    RCC->APB2ENR |= (1 << 14);

    SYSCFG->EXTICR[0] |= 0x00000000; // Write 0000 to map PA0 to EXTI0
    // Choose either rising edge trigger (RTSR) or falling edge trigger (FTSR)
    EXTI->RTSR |= 0x00001;   // Enable rising edge trigger on EXTI0
    EXTI->FTSR |= 0x00001;   // Enable falling edge trigger on EXTI0
    // Mask the used external interrupt numbers.
    EXTI->IMR |= 0x00001;    // Mask EXTI0
    // Set Priority for each interrupt request
    NVIC_SetPriority(EXTI0_IRQn, 1); // Priority level 1
    // enable EXT0 IRQ from NVIC
    NVIC_EnableIRQ(EXTI0_IRQn);
    while(1){
        for (int i = 0; i < 4; ++i)
        {
            delay_ms(500); // 1 sec delay
            while(PAUSE){
                i = 0;
            }
            unsigned int light = (0x1 << (12+i));
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
