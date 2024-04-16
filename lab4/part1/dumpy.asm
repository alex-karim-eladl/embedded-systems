
emb-rust:	file format elf32-littlearm

Disassembly of section .text:

080001a8 <emb_rust::load_led_state::h9fe1fc53f51e306d>:
 80001a8:      	push	{r7, lr}
 80001aa:      	mov	r7, sp
 80001ac:      	sub	sp, #8
 80001ae:      	movw	r2, #4064
 80001b2:      	movt	r2, #8192
 80001b6:      	mov	r1, sp
 80001b8:      	ldr.w	sp, [r2]
 80001bc:      	pop	{r0}
 80001be:      	mov	sp, r1
 80001c0:      	str	r0, [sp, #4]
 80001c2:      	b	0x80001c4 <emb_rust::load_led_state::h9fe1fc53f51e306d+0x1c> @ imm = #-2
 80001c4:      	ldr	r0, [sp, #4]
 80001c6:      	cmp	r0, #0
 80001c8:      	it	ne
 80001ca:      	movne	r0, #1
 80001cc:      	add	sp, #8
 80001ce:      	pop	{r7, pc}

080001d0 <emb_rust::store_led_state::h8591c7f557061db6>:
 80001d0:      	push	{r7, lr}
 80001d2:      	mov	r7, sp
 80001d4:      	sub	sp, #8
 80001d6:      	mov	r1, r0
 80001d8:      	strb	r1, [r7, #-5]
 80001dc:      	str	r1, [sp, #4]
 80001de:      	mov	r0, sp
 80001e0:      	ldr.w	sp, [pc, #12]
 80001e4:      	push	{r1}
 80001e6:      	mov	sp, r0
 80001e8:      	b	0x80001ea <emb_rust::store_led_state::h8591c7f557061db6+0x1a> @ imm = #-2
 80001ea:      	add	sp, #8
 80001ec:      	pop	{r7, pc}
 80001ee:      	nop

080001f0 <$d.7>:
 80001f0:	00 10 00 20	.word	0x20001000

080001f4 <main>:
 80001f4:      	push	{r7, lr}
 80001f6:      	mov	r7, sp
 80001f8:      	bl	0x80001fe <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab> @ imm = #2
 80001fc:      	trap

080001fe <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab>:
 80001fe:      	push	{r7, lr}
 8000200:      	mov	r7, sp
 8000202:      	sub	sp, #376
 8000204:      	bl	0x80006ea <stm32f4::stm32f407::Peripherals::take::hbecbfa8b8e141e07> @ imm = #1250
 8000208:      	str	r0, [sp, #44]
 800020a:      	b	0x800020c <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0xe> @ imm = #-2
 800020c:      	bl	0x80005c8 <cortex_m::peripheral::Peripherals::take::hd58def208808300b> @ imm = #952
 8000210:      	str	r0, [sp, #40]
 8000212:      	b	0x8000214 <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x16> @ imm = #-2
 8000214:      	ldr	r0, [sp, #40]
 8000216:      	ldr	r1, [sp, #44]
 8000218:      	and	r1, r1, #1
 800021c:      	strb.w	r1, [sp, #48]
 8000220:      	and	r0, r0, #1
 8000224:      	strb.w	r0, [sp, #49]
 8000228:      	ldrb.w	r0, [sp, #48]
 800022c:      	lsls	r0, r0, #31
 800022e:      	cbz	r0, 0x800023c <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x3e> @ imm = #10
 8000230:      	b	0x8000232 <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x34> @ imm = #-2
 8000232:      	ldrb.w	r0, [sp, #49]
 8000236:      	lsls	r0, r0, #31
 8000238:      	cbnz	r0, 0x800023e <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x40> @ imm = #2
 800023a:      	b	0x800023c <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x3e> @ imm = #-2
 800023c:      	b	0x800023c <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x3e> @ imm = #-4
 800023e:      	bl	0x800293e <stm32f4xx_hal::gpio::gpiod::<impl stm32f4xx_hal::gpio::GpioExt for stm32f4::stm32f407::GPIOD>::split::h5e82dd3af4645640> @ imm = #9980
 8000242:      	b	0x8000244 <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x46> @ imm = #-2
 8000244:      	bl	0x8000738 <stm32f407g_disc::led::Leds::new::h0200c7488179d33a> @ imm = #1264
 8000248:      	str	r0, [sp, #252]
 800024a:      	ldr	r0, [sp, #252]
 800024c:      	str	r0, [sp, #56]
 800024e:      	b	0x8000250 <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x52> @ imm = #-2
 8000250:      	add	r0, sp, #52
 8000252:      	bl	0x80032fa <<stm32f4::stm32f407::RCC as core::ops::deref::Deref>::deref::h9fca7e46bd324da6> @ imm = #12452
 8000256:      	str	r0, [sp, #36]
 8000258:      	b	0x800025a <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x5c> @ imm = #-2
 800025a:      	ldr	r0, [sp, #36]
 800025c:      	adds	r0, #48
 800025e:      	str	r0, [sp, #32]
 8000260:      	str	r0, [sp, #280]
 8000262:      	str	r0, [sp, #288]
 8000264:      	str	r0, [sp, #304]
 8000266:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #12996
 800026a:      	str	r0, [sp, #284]
 800026c:      	str	r0, [sp, #272]
 800026e:      	str	r0, [sp, #276]
 8000270:      	add	r0, sp, #272
 8000272:      	str	r0, [sp, #264]
 8000274:      	add	r0, sp, #276
 8000276:      	str	r0, [sp, #268]
 8000278:      	ldr	r0, [sp, #264]
 800027a:      	ldr	r1, [sp, #268]
 800027c:      	bl	0x80003bc <emb_rust::__cortex_m_rt_main::{{closure}}::h98af4bcb0165fd86> @ imm = #316
 8000280:      	mov	r1, r0
 8000282:      	ldr	r0, [sp, #32]
 8000284:      	ldr	r1, [r1]
 8000286:      	str	r0, [sp, #292]
 8000288:      	str	r1, [sp, #296]
 800028a:      	str	r0, [sp, #300]
 800028c:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #12978
 8000290:      	b	0x8000292 <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x94> @ imm = #-2
 8000292:      	add	r0, sp, #52
 8000294:      	bl	0x80032fa <<stm32f4::stm32f407::RCC as core::ops::deref::Deref>::deref::h9fca7e46bd324da6> @ imm = #12386
 8000298:      	str	r0, [sp, #28]
 800029a:      	b	0x800029c <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x9e> @ imm = #-2
 800029c:      	ldr	r0, [sp, #28]
 800029e:      	adds	r0, #48
 80002a0:      	str	r0, [sp, #24]
 80002a2:      	str	r0, [sp, #324]
 80002a4:      	str	r0, [sp, #332]
 80002a6:      	str	r0, [sp, #348]
 80002a8:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #12930
 80002ac:      	str	r0, [sp, #328]
 80002ae:      	str	r0, [sp, #316]
 80002b0:      	str	r0, [sp, #320]
 80002b2:      	add	r0, sp, #316
 80002b4:      	str	r0, [sp, #308]
 80002b6:      	add	r0, sp, #320
 80002b8:      	str	r0, [sp, #312]
 80002ba:      	ldr	r0, [sp, #308]
 80002bc:      	ldr	r1, [sp, #312]
 80002be:      	bl	0x8000426 <emb_rust::__cortex_m_rt_main::{{closure}}::hd449918720fdc9d0> @ imm = #356
 80002c2:      	mov	r1, r0
 80002c4:      	ldr	r0, [sp, #24]
 80002c6:      	ldr	r1, [r1]
 80002c8:      	str	r0, [sp, #336]
 80002ca:      	str	r1, [sp, #340]
 80002cc:      	str	r0, [sp, #344]
 80002ce:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #12912
 80002d2:      	b	0x80002d4 <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0xd6> @ imm = #-2
 80002d4:      	add	r0, sp, #52
 80002d6:      	bl	0x80032fa <<stm32f4::stm32f407::RCC as core::ops::deref::Deref>::deref::h9fca7e46bd324da6> @ imm = #12320
 80002da:      	str	r0, [sp, #20]
 80002dc:      	b	0x80002de <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0xe0> @ imm = #-2
 80002de:      	ldr	r0, [sp, #20]
 80002e0:      	adds	r0, #68
 80002e2:      	str	r0, [sp, #16]
 80002e4:      	str	r0, [sp, #360]
 80002e6:      	movs	r0, #0
 80002e8:      	str	r0, [sp, #356]
 80002ea:      	add	r0, sp, #356
 80002ec:      	str	r0, [sp, #352]
 80002ee:      	ldr	r0, [sp, #352]
 80002f0:      	bl	0x8000492 <emb_rust::__cortex_m_rt_main::{{closure}}::hf451ad9daaab3f29> @ imm = #414
 80002f4:      	mov	r1, r0
 80002f6:      	ldr	r0, [sp, #16]
 80002f8:      	ldr	r1, [r1]
 80002fa:      	str	r0, [sp, #364]
 80002fc:      	str	r1, [sp, #368]
 80002fe:      	str	r0, [sp, #372]
 8000300:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #12862
 8000304:      	b	0x8000306 <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x108> @ imm = #-2
 8000306:      	add	r0, sp, #60
 8000308:      	bl	0x80025c0 <<stm32f4::stm32f407::RCC as stm32f4xx_hal::rcc::RccExt>::constrain::h2c1de49e9fb68952> @ imm = #8884
 800030c:      	b	0x800030e <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x110> @ imm = #-2
 800030e:      	add	r1, sp, #60
 8000310:      	add	r0, sp, #160
 8000312:      	ldm.w	r1!, {r2, r3, r4, r12, lr}
 8000316:      	stm.w	r0!, {r2, r3, r4, r12, lr}
 800031a:      	ldm.w	r1, {r2, r3, r4, r12, lr}
 800031e:      	stm.w	r0, {r2, r3, r4, r12, lr}
 8000322:      	movs	r0, #100
 8000324:      	bl	0x8002442 <<u32 as stm32f4xx_hal::time::U32Ext>::mhz::h2cf9daedcd2bad39> @ imm = #8474
 8000328:      	str	r0, [sp, #12]
 800032a:      	b	0x800032c <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x12e> @ imm = #-2
 800032c:      	ldr	r2, [sp, #12]
 800032e:      	add	r0, sp, #120
 8000330:      	add	r1, sp, #160
 8000332:      	bl	0x8000624 <stm32f4xx_hal::rcc::CFGR::sysclk::hbdf40ae1aab46985> @ imm = #750
 8000336:      	b	0x8000338 <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x13a> @ imm = #-2
 8000338:      	add	r0, sp, #100
 800033a:      	add	r1, sp, #120
 800033c:      	bl	0x80019e2 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6> @ imm = #5794
 8000340:      	b	0x8000342 <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x144> @ imm = #-2
 8000342:      	add	r2, sp, #100
 8000344:      	add	r1, sp, #220
 8000346:      	mov	r0, r1
 8000348:      	ldm.w	r2, {r3, r4, r5, r12, lr}
 800034c:      	stm.w	r0, {r3, r4, r5, r12, lr}
 8000350:      	add	r0, sp, #200
 8000352:      	bl	0x8001284 <stm32f4xx_hal::delay::Delay::new::h4f1fc3fc40392250> @ imm = #3886
 8000356:      	b	0x8000358 <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x15a> @ imm = #-2
 8000358:      	movs	r0, #3
 800035a:      	strb	r0, [r7, #-133]
 800035e:      	ldrb	r1, [r7, #-133]
 8000362:      	movw	r2, #15984
 8000366:      	movt	r2, #2048
 800036a:      	add	r0, sp, #56
 800036c:      	bl	0x8000798 <<stm32f407g_disc::led::Leds as core::ops::index::IndexMut<stm32f407g_disc::led::LedColor>>::index_mut::ha7c03e25d3689a68> @ imm = #1064
 8000370:      	str	r0, [sp, #8]
 8000372:      	b	0x8000374 <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x176> @ imm = #-2
 8000374:      	ldr	r0, [sp, #8]
 8000376:      	str	r0, [sp, #256]
 8000378:      	movs	r0, #1
 800037a:      	bl	0x80001d0 <emb_rust::store_led_state::h8591c7f557061db6> @ imm = #-430
 800037e:      	b	0x8000380 <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x182> @ imm = #-2
 8000380:      	bl	0x80001a8 <emb_rust::load_led_state::h9fe1fc53f51e306d> @ imm = #-476
 8000384:      	mov	r1, r0
 8000386:      	str	r1, [sp, #4]
 8000388:      	strb	r0, [r7, #-113]
 800038c:      	b	0x800038e <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x190> @ imm = #-2
 800038e:      	ldr	r1, [sp, #4]
 8000390:      	movs	r0, #1
 8000392:      	bics	r0, r1
 8000394:      	bl	0x80001d0 <emb_rust::store_led_state::h8591c7f557061db6> @ imm = #-456
 8000398:      	b	0x800039a <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x19c> @ imm = #-2
 800039a:      	ldr	r0, [sp, #4]
 800039c:      	lsls	r0, r0, #31
 800039e:      	cbnz	r0, 0x80003aa <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x1ac> @ imm = #8
 80003a0:      	b	0x80003a2 <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x1a4> @ imm = #-2
 80003a2:      	ldr	r0, [sp, #8]
 80003a4:      	bl	0x80007ca <stm32f407g_disc::led::Led::off::h77634a895e010dbf> @ imm = #1058
 80003a8:      	b	0x80003b2 <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x1b4> @ imm = #6
 80003aa:      	ldr	r0, [sp, #8]
 80003ac:      	bl	0x80007dc <stm32f407g_disc::led::Led::on::hb997d15048bdf64c> @ imm = #1068
 80003b0:      	b	0x80003b2 <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x1b4> @ imm = #-2
 80003b2:      	add	r0, sp, #200
 80003b4:      	movs	r1, #50
 80003b6:      	bl	0x80012c4 <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h5a9e757aecfe3a80> @ imm = #3850
 80003ba:      	b	0x8000380 <emb_rust::__cortex_m_rt_main::h7c514f50e65932ab+0x182> @ imm = #-62

080003bc <emb_rust::__cortex_m_rt_main::{{closure}}::h98af4bcb0165fd86>:
 80003bc:      	sub	sp, #56
 80003be:      	str	r0, [sp, #8]
 80003c0:      	str	r1, [sp, #12]
 80003c2:      	str	r1, [sp, #52]
 80003c4:      	str	r1, [sp, #48]
 80003c6:      	ldr	r0, [sp, #48]
 80003c8:      	str	r0, [sp]
 80003ca:      	b	0x80003cc <emb_rust::__cortex_m_rt_main::{{closure}}::h98af4bcb0165fd86+0x10> @ imm = #-2
 80003cc:      	ldr	r0, [sp]
 80003ce:      	str	r0, [sp, #20]
 80003d0:      	movs	r1, #1
 80003d2:      	strb.w	r1, [sp, #19]
 80003d6:      	ldrb.w	r1, [sp, #19]
 80003da:      	strb.w	r1, [sp, #27]
 80003de:      	str	r0, [sp, #28]
 80003e0:      	add.w	r0, sp, #27
 80003e4:      	str	r0, [sp, #36]
 80003e6:      	ldrb.w	r1, [sp, #27]
 80003ea:      	lsls	r0, r1, #31
 80003ec:      	cbz	r0, 0x80003f4 <emb_rust::__cortex_m_rt_main::{{closure}}::h98af4bcb0165fd86+0x38> @ imm = #4
 80003ee:      	b	0x80003f0 <emb_rust::__cortex_m_rt_main::{{closure}}::h98af4bcb0165fd86+0x34> @ imm = #-2
 80003f0:      	b	0x80003fc <emb_rust::__cortex_m_rt_main::{{closure}}::h98af4bcb0165fd86+0x40> @ imm = #8
 80003f2:      	trap
 80003f4:      	movs	r0, #0
 80003f6:      	strb.w	r0, [sp, #35]
 80003fa:      	b	0x8000404 <emb_rust::__cortex_m_rt_main::{{closure}}::h98af4bcb0165fd86+0x48> @ imm = #6
 80003fc:      	movs	r0, #1
 80003fe:      	strb.w	r0, [sp, #35]
 8000402:      	b	0x8000404 <emb_rust::__cortex_m_rt_main::{{closure}}::h98af4bcb0165fd86+0x48> @ imm = #-2
 8000404:      	ldr	r1, [sp]
 8000406:      	ldrb.w	r2, [sp, #35]
 800040a:      	str	r1, [sp, #40]
 800040c:      	strb.w	r2, [sp, #47]
 8000410:      	ldr	r0, [r1]
 8000412:      	bic	r0, r0, #1
 8000416:      	str	r0, [r1]
 8000418:      	ldr	r0, [r1]
 800041a:      	orrs	r0, r2
 800041c:      	str	r0, [r1]
 800041e:      	b	0x8000420 <emb_rust::__cortex_m_rt_main::{{closure}}::h98af4bcb0165fd86+0x64> @ imm = #-2
 8000420:      	ldr	r0, [sp]
 8000422:      	add	sp, #56
 8000424:      	bx	lr

08000426 <emb_rust::__cortex_m_rt_main::{{closure}}::hd449918720fdc9d0>:
 8000426:      	sub	sp, #56
 8000428:      	str	r0, [sp, #8]
 800042a:      	str	r1, [sp, #12]
 800042c:      	str	r1, [sp, #52]
 800042e:      	str	r1, [sp, #48]
 8000430:      	ldr	r0, [sp, #48]
 8000432:      	str	r0, [sp]
 8000434:      	b	0x8000436 <emb_rust::__cortex_m_rt_main::{{closure}}::hd449918720fdc9d0+0x10> @ imm = #-2
 8000436:      	ldr	r0, [sp]
 8000438:      	str	r0, [sp, #20]
 800043a:      	movs	r1, #1
 800043c:      	strb.w	r1, [sp, #19]
 8000440:      	ldrb.w	r1, [sp, #19]
 8000444:      	strb.w	r1, [sp, #27]
 8000448:      	str	r0, [sp, #28]
 800044a:      	add.w	r0, sp, #27
 800044e:      	str	r0, [sp, #36]
 8000450:      	ldrb.w	r1, [sp, #27]
 8000454:      	lsls	r0, r1, #31
 8000456:      	cbz	r0, 0x800045e <emb_rust::__cortex_m_rt_main::{{closure}}::hd449918720fdc9d0+0x38> @ imm = #4
 8000458:      	b	0x800045a <emb_rust::__cortex_m_rt_main::{{closure}}::hd449918720fdc9d0+0x34> @ imm = #-2
 800045a:      	b	0x8000466 <emb_rust::__cortex_m_rt_main::{{closure}}::hd449918720fdc9d0+0x40> @ imm = #8
 800045c:      	trap
 800045e:      	movs	r0, #0
 8000460:      	strb.w	r0, [sp, #35]
 8000464:      	b	0x800046e <emb_rust::__cortex_m_rt_main::{{closure}}::hd449918720fdc9d0+0x48> @ imm = #6
 8000466:      	movs	r0, #1
 8000468:      	strb.w	r0, [sp, #35]
 800046c:      	b	0x800046e <emb_rust::__cortex_m_rt_main::{{closure}}::hd449918720fdc9d0+0x48> @ imm = #-2
 800046e:      	ldr	r1, [sp]
 8000470:      	ldrb.w	r2, [sp, #35]
 8000474:      	str	r1, [sp, #40]
 8000476:      	strb.w	r2, [sp, #47]
 800047a:      	ldr	r0, [r1]
 800047c:      	bic	r0, r0, #8
 8000480:      	str	r0, [r1]
 8000482:      	ldr	r0, [r1]
 8000484:      	orr.w	r0, r0, r2, lsl #3
 8000488:      	str	r0, [r1]
 800048a:      	b	0x800048c <emb_rust::__cortex_m_rt_main::{{closure}}::hd449918720fdc9d0+0x66> @ imm = #-2
 800048c:      	ldr	r0, [sp]
 800048e:      	add	sp, #56
 8000490:      	bx	lr

08000492 <emb_rust::__cortex_m_rt_main::{{closure}}::hf451ad9daaab3f29>:
 8000492:      	sub	sp, #52
 8000494:      	str	r0, [sp, #8]
 8000496:      	str	r0, [sp, #48]
 8000498:      	str	r0, [sp, #44]
 800049a:      	ldr	r0, [sp, #44]
 800049c:      	str	r0, [sp]
 800049e:      	b	0x80004a0 <emb_rust::__cortex_m_rt_main::{{closure}}::hf451ad9daaab3f29+0xe> @ imm = #-2
 80004a0:      	ldr	r0, [sp]
 80004a2:      	str	r0, [sp, #16]
 80004a4:      	movs	r1, #1
 80004a6:      	strb.w	r1, [sp, #15]
 80004aa:      	ldrb.w	r1, [sp, #15]
 80004ae:      	strb.w	r1, [sp, #23]
 80004b2:      	str	r0, [sp, #24]
 80004b4:      	add.w	r0, sp, #23
 80004b8:      	str	r0, [sp, #32]
 80004ba:      	ldrb.w	r1, [sp, #23]
 80004be:      	lsls	r0, r1, #31
 80004c0:      	cbz	r0, 0x80004c8 <emb_rust::__cortex_m_rt_main::{{closure}}::hf451ad9daaab3f29+0x36> @ imm = #4
 80004c2:      	b	0x80004c4 <emb_rust::__cortex_m_rt_main::{{closure}}::hf451ad9daaab3f29+0x32> @ imm = #-2
 80004c4:      	b	0x80004d0 <emb_rust::__cortex_m_rt_main::{{closure}}::hf451ad9daaab3f29+0x3e> @ imm = #8
 80004c6:      	trap
 80004c8:      	movs	r0, #0
 80004ca:      	strb.w	r0, [sp, #31]
 80004ce:      	b	0x80004d8 <emb_rust::__cortex_m_rt_main::{{closure}}::hf451ad9daaab3f29+0x46> @ imm = #6
 80004d0:      	movs	r0, #1
 80004d2:      	strb.w	r0, [sp, #31]
 80004d6:      	b	0x80004d8 <emb_rust::__cortex_m_rt_main::{{closure}}::hf451ad9daaab3f29+0x46> @ imm = #-2
 80004d8:      	ldr	r1, [sp]
 80004da:      	ldrb.w	r2, [sp, #31]
 80004de:      	str	r1, [sp, #36]
 80004e0:      	strb.w	r2, [sp, #43]
 80004e4:      	ldr	r0, [r1]
 80004e6:      	bic	r0, r0, #16384
 80004ea:      	str	r0, [r1]
 80004ec:      	ldr	r0, [r1]
 80004ee:      	orr.w	r0, r0, r2, lsl #14
 80004f2:      	str	r0, [r1]
 80004f4:      	b	0x80004f6 <emb_rust::__cortex_m_rt_main::{{closure}}::hf451ad9daaab3f29+0x64> @ imm = #-2
 80004f6:      	ldr	r0, [sp]
 80004f8:      	add	sp, #52
 80004fa:      	bx	lr

080004fc <cortex_m::interrupt::disable::h476102fa468b97b2>:
 80004fc:      	push	{r7, lr}
 80004fe:      	mov	r7, sp
 8000500:      	bl	0x8003550 <__cpsid>     @ imm = #12364
 8000504:      	b	0x8000506 <cortex_m::interrupt::disable::h476102fa468b97b2+0xa> @ imm = #-2
 8000506:      	pop	{r7, pc}

08000508 <cortex_m::interrupt::enable::h190a4c677e9d5de7>:
 8000508:      	push	{r7, lr}
 800050a:      	mov	r7, sp
 800050c:      	bl	0x8003554 <__cpsie>     @ imm = #12356
 8000510:      	b	0x8000512 <cortex_m::interrupt::enable::h190a4c677e9d5de7+0xa> @ imm = #-2
 8000512:      	pop	{r7, pc}

08000514 <cortex_m::interrupt::free::h9eb59220649d626c>:
 8000514:      	push	{r7, lr}
 8000516:      	mov	r7, sp
 8000518:      	sub	sp, #24
 800051a:      	bl	0x800068c <cortex_m::register::primask::read::hb44e6cb4f8f45406> @ imm = #366
 800051e:      	mov	r1, r0
 8000520:      	str	r1, [sp, #8]
 8000522:      	strb	r0, [r7, #-2]
 8000526:      	b	0x8000528 <cortex_m::interrupt::free::h9eb59220649d626c+0x14> @ imm = #-2
 8000528:      	bl	0x80004fc <cortex_m::interrupt::disable::h476102fa468b97b2> @ imm = #-48
 800052c:      	b	0x800052e <cortex_m::interrupt::free::h9eb59220649d626c+0x1a> @ imm = #-2
 800052e:      	bl	0x800355e <bare_metal::CriticalSection::new::h8b2b389295cc81d9> @ imm = #12332
 8000532:      	b	0x8000534 <cortex_m::interrupt::free::h9eb59220649d626c+0x20> @ imm = #-2
 8000534:      	add	r0, sp, #16
 8000536:      	str	r0, [sp, #12]
 8000538:      	ldr	r0, [sp, #12]
 800053a:      	bl	0x80005e0 <cortex_m::peripheral::Peripherals::take::{{closure}}::h9acd26c70f9e8b45> @ imm = #162
 800053e:      	mov	r1, r0
 8000540:      	str	r1, [sp, #4]
 8000542:      	strb	r0, [r7, #-1]
 8000546:      	b	0x8000548 <cortex_m::interrupt::free::h9eb59220649d626c+0x34> @ imm = #-2
 8000548:      	ldr	r0, [sp, #8]
 800054a:      	and	r0, r0, #1
 800054e:      	bl	0x8000666 <cortex_m::register::primask::Primask::is_active::hb026e605106a30da> @ imm = #276
 8000552:      	str	r0, [sp]
 8000554:      	b	0x8000556 <cortex_m::interrupt::free::h9eb59220649d626c+0x42> @ imm = #-2
 8000556:      	ldr	r0, [sp]
 8000558:      	lsls	r0, r0, #31
 800055a:      	cbnz	r0, 0x8000568 <cortex_m::interrupt::free::h9eb59220649d626c+0x54> @ imm = #10
 800055c:      	b	0x800055e <cortex_m::interrupt::free::h9eb59220649d626c+0x4a> @ imm = #-2
 800055e:      	ldr	r0, [sp, #4]
 8000560:      	and	r0, r0, #1
 8000564:      	add	sp, #24
 8000566:      	pop	{r7, pc}
 8000568:      	bl	0x8000508 <cortex_m::interrupt::enable::h190a4c677e9d5de7> @ imm = #-100
 800056c:      	b	0x800055e <cortex_m::interrupt::free::h9eb59220649d626c+0x4a> @ imm = #-18

0800056e <cortex_m::interrupt::free::hec4e30222d840f62>:
 800056e:      	push	{r7, lr}
 8000570:      	mov	r7, sp
 8000572:      	sub	sp, #24
 8000574:      	bl	0x800068c <cortex_m::register::primask::read::hb44e6cb4f8f45406> @ imm = #276
 8000578:      	mov	r1, r0
 800057a:      	str	r1, [sp, #8]
 800057c:      	strb	r0, [r7, #-2]
 8000580:      	b	0x8000582 <cortex_m::interrupt::free::hec4e30222d840f62+0x14> @ imm = #-2
 8000582:      	bl	0x80004fc <cortex_m::interrupt::disable::h476102fa468b97b2> @ imm = #-138
 8000586:      	b	0x8000588 <cortex_m::interrupt::free::hec4e30222d840f62+0x1a> @ imm = #-2
 8000588:      	bl	0x800355e <bare_metal::CriticalSection::new::h8b2b389295cc81d9> @ imm = #12242
 800058c:      	b	0x800058e <cortex_m::interrupt::free::hec4e30222d840f62+0x20> @ imm = #-2
 800058e:      	add	r0, sp, #16
 8000590:      	str	r0, [sp, #12]
 8000592:      	ldr	r0, [sp, #12]
 8000594:      	bl	0x8000702 <stm32f4::stm32f407::Peripherals::take::{{closure}}::h8cead91cc65159e7> @ imm = #362
 8000598:      	mov	r1, r0
 800059a:      	str	r1, [sp, #4]
 800059c:      	strb	r0, [r7, #-1]
 80005a0:      	b	0x80005a2 <cortex_m::interrupt::free::hec4e30222d840f62+0x34> @ imm = #-2
 80005a2:      	ldr	r0, [sp, #8]
 80005a4:      	and	r0, r0, #1
 80005a8:      	bl	0x8000666 <cortex_m::register::primask::Primask::is_active::hb026e605106a30da> @ imm = #186
 80005ac:      	str	r0, [sp]
 80005ae:      	b	0x80005b0 <cortex_m::interrupt::free::hec4e30222d840f62+0x42> @ imm = #-2
 80005b0:      	ldr	r0, [sp]
 80005b2:      	lsls	r0, r0, #31
 80005b4:      	cbnz	r0, 0x80005c2 <cortex_m::interrupt::free::hec4e30222d840f62+0x54> @ imm = #10
 80005b6:      	b	0x80005b8 <cortex_m::interrupt::free::hec4e30222d840f62+0x4a> @ imm = #-2
 80005b8:      	ldr	r0, [sp, #4]
 80005ba:      	and	r0, r0, #1
 80005be:      	add	sp, #24
 80005c0:      	pop	{r7, pc}
 80005c2:      	bl	0x8000508 <cortex_m::interrupt::enable::h190a4c677e9d5de7> @ imm = #-190
 80005c6:      	b	0x80005b8 <cortex_m::interrupt::free::hec4e30222d840f62+0x4a> @ imm = #-18

080005c8 <cortex_m::peripheral::Peripherals::take::hd58def208808300b>:
 80005c8:      	push	{r7, lr}
 80005ca:      	mov	r7, sp
 80005cc:      	sub	sp, #8
 80005ce:      	bl	0x8000514 <cortex_m::interrupt::free::h9eb59220649d626c> @ imm = #-190
 80005d2:      	str	r0, [sp, #4]
 80005d4:      	b	0x80005d6 <cortex_m::peripheral::Peripherals::take::hd58def208808300b+0xe> @ imm = #-2
 80005d6:      	ldr	r0, [sp, #4]
 80005d8:      	and	r0, r0, #1
 80005dc:      	add	sp, #8
 80005de:      	pop	{r7, pc}

080005e0 <cortex_m::peripheral::Peripherals::take::{{closure}}::h9acd26c70f9e8b45>:
 80005e0:      	push	{r7, lr}
 80005e2:      	mov	r7, sp
 80005e4:      	sub	sp, #16
 80005e6:      	str	r0, [sp, #12]
 80005e8:      	movw	r0, #1
 80005ec:      	movt	r0, #8192
 80005f0:      	ldrb	r0, [r0]
 80005f2:      	lsls	r0, r0, #31
 80005f4:      	cbnz	r0, 0x80005fe <cortex_m::peripheral::Peripherals::take::{{closure}}::h9acd26c70f9e8b45+0x1e> @ imm = #6
 80005f6:      	b	0x80005f8 <cortex_m::peripheral::Peripherals::take::{{closure}}::h9acd26c70f9e8b45+0x18> @ imm = #-2
 80005f8:      	bl	0x8000616 <cortex_m::peripheral::Peripherals::steal::h95314185a9070149> @ imm = #26
 80005fc:      	b	0x800060e <cortex_m::peripheral::Peripherals::take::{{closure}}::h9acd26c70f9e8b45+0x2e> @ imm = #14
 80005fe:      	movs	r0, #0
 8000600:      	strb	r0, [r7, #-9]
 8000604:      	b	0x8000606 <cortex_m::peripheral::Peripherals::take::{{closure}}::h9acd26c70f9e8b45+0x26> @ imm = #-2
 8000606:      	ldrb	r0, [r7, #-9]
 800060a:      	add	sp, #16
 800060c:      	pop	{r7, pc}
 800060e:      	movs	r0, #1
 8000610:      	strb	r0, [r7, #-9]
 8000614:      	b	0x8000606 <cortex_m::peripheral::Peripherals::take::{{closure}}::h9acd26c70f9e8b45+0x26> @ imm = #-18

08000616 <cortex_m::peripheral::Peripherals::steal::h95314185a9070149>:
 8000616:      	movw	r1, #1
 800061a:      	movt	r1, #8192
 800061e:      	movs	r0, #1
 8000620:      	strb	r0, [r1]
 8000622:      	bx	lr

08000624 <stm32f4xx_hal::rcc::CFGR::sysclk::hbdf40ae1aab46985>:
 8000624:      	push	{r4, r6, r7, lr}
 8000626:      	add	r7, sp, #8
 8000628:      	sub	sp, #32
 800062a:      	str	r2, [sp, #8]
 800062c:      	str	r1, [sp, #4]
 800062e:      	mov	r1, r0
 8000630:      	ldr	r0, [sp, #8]
 8000632:      	str	r1, [sp, #12]
 8000634:      	str	r0, [sp, #28]
 8000636:      	bl	0x800244e <<stm32f4xx_hal::time::MegaHertz as core::convert::Into<stm32f4xx_hal::time::Hertz>>::into::h9a672a63173b795a> @ imm = #7700
 800063a:      	str	r0, [sp, #16]
 800063c:      	b	0x800063e <stm32f4xx_hal::rcc::CFGR::sysclk::hbdf40ae1aab46985+0x1a> @ imm = #-2
 800063e:      	ldr	r1, [sp, #4]
 8000640:      	ldr	r0, [sp, #12]
 8000642:      	ldr	r2, [sp, #16]
 8000644:      	str	r2, [sp, #24]
 8000646:      	movs	r2, #1
 8000648:      	str	r2, [sp, #20]
 800064a:      	ldr	r3, [sp, #20]
 800064c:      	ldr	r2, [sp, #24]
 800064e:      	str	r3, [r1, #32]
 8000650:      	str	r2, [r1, #36]
 8000652:      	ldm.w	r1!, {r2, r3, r4, r12, lr}
 8000656:      	stm.w	r0!, {r2, r3, r4, r12, lr}
 800065a:      	ldm.w	r1, {r2, r3, r4, r12, lr}
 800065e:      	stm.w	r0, {r2, r3, r4, r12, lr}
 8000662:      	add	sp, #32
 8000664:      	pop	{r4, r6, r7, pc}

08000666 <cortex_m::register::primask::Primask::is_active::hb026e605106a30da>:
 8000666:      	push	{r7, lr}
 8000668:      	mov	r7, sp
 800066a:      	sub	sp, #8
 800066c:      	strb	r0, [r7, #-1]
 8000670:      	movw	r1, #16000
 8000674:      	movt	r1, #2048
 8000678:      	subs	r0, r7, #1
 800067a:      	bl	0x80006be <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::hafcc42716863870d> @ imm = #64
 800067e:      	str	r0, [sp]
 8000680:      	b	0x8000682 <cortex_m::register::primask::Primask::is_active::hb026e605106a30da+0x1c> @ imm = #-2
 8000682:      	ldr	r0, [sp]
 8000684:      	and	r0, r0, #1
 8000688:      	add	sp, #8
 800068a:      	pop	{r7, pc}

0800068c <cortex_m::register::primask::read::hb44e6cb4f8f45406>:
 800068c:      	push	{r7, lr}
 800068e:      	mov	r7, sp
 8000690:      	sub	sp, #16
 8000692:      	bl	0x8003558 <__primask>   @ imm = #11970
 8000696:      	mov	r1, r0
 8000698:      	str	r1, [sp, #4]
 800069a:      	str	r0, [sp, #12]
 800069c:      	b	0x800069e <cortex_m::register::primask::read::hb44e6cb4f8f45406+0x12> @ imm = #-2
 800069e:      	ldr	r0, [sp, #4]
 80006a0:      	lsls	r0, r0, #31
 80006a2:      	cbnz	r0, 0x80006ae <cortex_m::register::primask::read::hb44e6cb4f8f45406+0x22> @ imm = #8
 80006a4:      	b	0x80006a6 <cortex_m::register::primask::read::hb44e6cb4f8f45406+0x1a> @ imm = #-2
 80006a6:      	movs	r0, #0
 80006a8:      	strb	r0, [r7, #-5]
 80006ac:      	b	0x80006b6 <cortex_m::register::primask::read::hb44e6cb4f8f45406+0x2a> @ imm = #6
 80006ae:      	movs	r0, #1
 80006b0:      	strb	r0, [r7, #-5]
 80006b4:      	b	0x80006b6 <cortex_m::register::primask::read::hb44e6cb4f8f45406+0x2a> @ imm = #-2
 80006b6:      	ldrb	r0, [r7, #-5]
 80006ba:      	add	sp, #16
 80006bc:      	pop	{r7, pc}

080006be <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::hafcc42716863870d>:
 80006be:      	sub	sp, #20
 80006c0:      	str	r0, [sp, #4]
 80006c2:      	str	r1, [sp, #8]
 80006c4:      	ldrb	r0, [r0]
 80006c6:      	str	r0, [sp, #12]
 80006c8:      	ldrb	r1, [r1]
 80006ca:      	str	r1, [sp, #16]
 80006cc:      	cmp	r0, r1
 80006ce:      	beq	0x80006da <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::hafcc42716863870d+0x1c> @ imm = #8
 80006d0:      	b	0x80006d2 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::hafcc42716863870d+0x14> @ imm = #-2
 80006d2:      	movs	r0, #0
 80006d4:      	strb.w	r0, [sp, #3]
 80006d8:      	b	0x80006e2 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::hafcc42716863870d+0x24> @ imm = #6
 80006da:      	movs	r0, #1
 80006dc:      	strb.w	r0, [sp, #3]
 80006e0:      	b	0x80006e2 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::hafcc42716863870d+0x24> @ imm = #-2
 80006e2:      	ldrb.w	r0, [sp, #3]
 80006e6:      	add	sp, #20
 80006e8:      	bx	lr

080006ea <stm32f4::stm32f407::Peripherals::take::hbecbfa8b8e141e07>:
 80006ea:      	push	{r7, lr}
 80006ec:      	mov	r7, sp
 80006ee:      	sub	sp, #8
 80006f0:      	bl	0x800056e <cortex_m::interrupt::free::hec4e30222d840f62> @ imm = #-390
 80006f4:      	str	r0, [sp, #4]
 80006f6:      	b	0x80006f8 <stm32f4::stm32f407::Peripherals::take::hbecbfa8b8e141e07+0xe> @ imm = #-2
 80006f8:      	ldr	r0, [sp, #4]
 80006fa:      	and	r0, r0, #1
 80006fe:      	add	sp, #8
 8000700:      	pop	{r7, pc}

08000702 <stm32f4::stm32f407::Peripherals::take::{{closure}}::h8cead91cc65159e7>:
 8000702:      	push	{r7, lr}
 8000704:      	mov	r7, sp
 8000706:      	sub	sp, #16
 8000708:      	str	r0, [sp, #12]
 800070a:      	movw	r0, #0
 800070e:      	movt	r0, #8192
 8000712:      	ldrb	r0, [r0]
 8000714:      	lsls	r0, r0, #31
 8000716:      	cbnz	r0, 0x8000720 <stm32f4::stm32f407::Peripherals::take::{{closure}}::h8cead91cc65159e7+0x1e> @ imm = #6
 8000718:      	b	0x800071a <stm32f4::stm32f407::Peripherals::take::{{closure}}::h8cead91cc65159e7+0x18> @ imm = #-2
 800071a:      	bl	0x800330c <stm32f4::stm32f407::Peripherals::steal::ha707f80f92bc4614> @ imm = #11246
 800071e:      	b	0x8000730 <stm32f4::stm32f407::Peripherals::take::{{closure}}::h8cead91cc65159e7+0x2e> @ imm = #14
 8000720:      	movs	r0, #0
 8000722:      	strb	r0, [r7, #-9]
 8000726:      	b	0x8000728 <stm32f4::stm32f407::Peripherals::take::{{closure}}::h8cead91cc65159e7+0x26> @ imm = #-2
 8000728:      	ldrb	r0, [r7, #-9]
 800072c:      	add	sp, #16
 800072e:      	pop	{r7, pc}
 8000730:      	movs	r0, #1
 8000732:      	strb	r0, [r7, #-9]
 8000736:      	b	0x8000728 <stm32f4::stm32f407::Peripherals::take::{{closure}}::h8cead91cc65159e7+0x26> @ imm = #-18

08000738 <stm32f407g_disc::led::Leds::new::h0200c7488179d33a>:
 8000738:      	push	{r7, lr}
 800073a:      	mov	r7, sp
 800073c:      	sub	sp, #48
 800073e:      	bl	0x80009a4 <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output17ha8a664d02aece940E> @ imm = #610
 8000742:      	b	0x8000744 <stm32f407g_disc::led::Leds::new::h0200c7488179d33a+0xc> @ imm = #-2
 8000744:      	bl	0x8000bdc <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output17ha429c1257ffde52dE> @ imm = #1172
 8000748:      	b	0x800074a <stm32f407g_disc::led::Leds::new::h0200c7488179d33a+0x12> @ imm = #-2
 800074a:      	bl	0x8000e14 <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output17h210f8f7e69975ae3E> @ imm = #1734
 800074e:      	b	0x8000750 <stm32f407g_disc::led::Leds::new::h0200c7488179d33a+0x18> @ imm = #-2
 8000750:      	bl	0x800104c <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output17h31db426039cbb91dE> @ imm = #2296
 8000754:      	b	0x8000756 <stm32f407g_disc::led::Leds::new::h0200c7488179d33a+0x1e> @ imm = #-2
 8000756:      	bl	0x80007ee <stm32f407g_disc::led::<impl core::convert::Into<stm32f407g_disc::led::Led> for stm32f4xx_hal::gpio::gpiod::PD12<stm32f4xx_hal::gpio::Output<stm32f4xx_hal::gpio::PushPull>>>::into::h04c451b9775d90c0> @ imm = #148
 800075a:      	str	r0, [sp, #16]
 800075c:      	b	0x800075e <stm32f407g_disc::led::Leds::new::h0200c7488179d33a+0x26> @ imm = #-2
 800075e:      	bl	0x800080a <stm32f407g_disc::led::<impl core::convert::Into<stm32f407g_disc::led::Led> for stm32f4xx_hal::gpio::gpiod::PD13<stm32f4xx_hal::gpio::Output<stm32f4xx_hal::gpio::PushPull>>>::into::h9dd9707435a2c5c1> @ imm = #168
 8000762:      	str	r0, [sp, #12]
 8000764:      	b	0x8000766 <stm32f407g_disc::led::Leds::new::h0200c7488179d33a+0x2e> @ imm = #-2
 8000766:      	bl	0x8000842 <stm32f407g_disc::led::<impl core::convert::Into<stm32f407g_disc::led::Led> for stm32f4xx_hal::gpio::gpiod::PD14<stm32f4xx_hal::gpio::Output<stm32f4xx_hal::gpio::PushPull>>>::into::hecf8bc8372d2de9f> @ imm = #216
 800076a:      	str	r0, [sp, #8]
 800076c:      	b	0x800076e <stm32f407g_disc::led::Leds::new::h0200c7488179d33a+0x36> @ imm = #-2
 800076e:      	bl	0x8000826 <stm32f407g_disc::led::<impl core::convert::Into<stm32f407g_disc::led::Led> for stm32f4xx_hal::gpio::gpiod::PD15<stm32f4xx_hal::gpio::Output<stm32f4xx_hal::gpio::PushPull>>>::into::h81b5d655221b3f64> @ imm = #180
 8000772:      	str	r0, [sp, #4]
 8000774:      	b	0x8000776 <stm32f407g_disc::led::Leds::new::h0200c7488179d33a+0x3e> @ imm = #-2
 8000776:      	ldr	r0, [sp, #4]
 8000778:      	ldr	r1, [sp, #8]
 800077a:      	ldr	r2, [sp, #12]
 800077c:      	ldr	r3, [sp, #16]
 800077e:      	strb.w	r3, [sp, #24]
 8000782:      	strb.w	r2, [sp, #25]
 8000786:      	strb.w	r1, [sp, #26]
 800078a:      	strb.w	r0, [sp, #27]
 800078e:      	ldr	r0, [sp, #24]
 8000790:      	str	r0, [sp, #20]
 8000792:      	ldr	r0, [sp, #20]
 8000794:      	add	sp, #48
 8000796:      	pop	{r7, pc}

08000798 <<stm32f407g_disc::led::Leds as core::ops::index::IndexMut<stm32f407g_disc::led::LedColor>>::index_mut::ha7c03e25d3689a68>:
 8000798:      	push	{r7, lr}
 800079a:      	mov	r7, sp
 800079c:      	sub	sp, #24
 800079e:      	str	r2, [sp, #4]
 80007a0:      	str	r0, [sp, #8]
 80007a2:      	str	r0, [sp, #16]
 80007a4:      	strb	r1, [r7, #-1]
 80007a8:      	uxtb	r0, r1
 80007aa:      	mov	r1, r0
 80007ac:      	str	r1, [sp, #12]
 80007ae:      	cmp	r0, #3
 80007b0:      	bhi	0x80007be <<stm32f407g_disc::led::Leds as core::ops::index::IndexMut<stm32f407g_disc::led::LedColor>>::index_mut::ha7c03e25d3689a68+0x26> @ imm = #10
 80007b2:      	b	0x80007b4 <<stm32f407g_disc::led::Leds as core::ops::index::IndexMut<stm32f407g_disc::led::LedColor>>::index_mut::ha7c03e25d3689a68+0x1c> @ imm = #-2
 80007b4:      	ldr	r0, [sp, #8]
 80007b6:      	ldr	r1, [sp, #12]
 80007b8:      	add	r0, r1
 80007ba:      	add	sp, #24
 80007bc:      	pop	{r7, pc}
 80007be:      	ldr	r2, [sp, #4]
 80007c0:      	ldr	r0, [sp, #12]
 80007c2:      	movs	r1, #4
 80007c4:      	bl	0x80035a4 <core::panicking::panic_bounds_check::he6f42b7f460f9bde> @ imm = #11740
 80007c8:      	trap

080007ca <stm32f407g_disc::led::Led::off::h77634a895e010dbf>:
 80007ca:      	push	{r7, lr}
 80007cc:      	mov	r7, sp
 80007ce:      	sub	sp, #8
 80007d0:      	str	r0, [sp, #4]
 80007d2:      	bl	0x80008ec <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$7set_low17h93a601ae2eed26eeE> @ imm = #278
 80007d6:      	b	0x80007d8 <stm32f407g_disc::led::Led::off::h77634a895e010dbf+0xe> @ imm = #-2
 80007d8:      	add	sp, #8
 80007da:      	pop	{r7, pc}

080007dc <stm32f407g_disc::led::Led::on::hb997d15048bdf64c>:
 80007dc:      	push	{r7, lr}
 80007de:      	mov	r7, sp
 80007e0:      	sub	sp, #8
 80007e2:      	str	r0, [sp, #4]
 80007e4:      	bl	0x800085e <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$8set_high17hbb85d00788a6a77eE> @ imm = #118
 80007e8:      	b	0x80007ea <stm32f407g_disc::led::Led::on::hb997d15048bdf64c+0xe> @ imm = #-2
 80007ea:      	add	sp, #8
 80007ec:      	pop	{r7, pc}

080007ee <stm32f407g_disc::led::<impl core::convert::Into<stm32f407g_disc::led::Led> for stm32f4xx_hal::gpio::gpiod::PD12<stm32f4xx_hal::gpio::Output<stm32f4xx_hal::gpio::PushPull>>>::into::h04c451b9775d90c0>:
 80007ee:      	push	{r7, lr}
 80007f0:      	mov	r7, sp
 80007f2:      	sub	sp, #16
 80007f4:      	bl	0x8000bcc <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$9downgrade17hd2e7388433b1201cE> @ imm = #980
 80007f8:      	str	r0, [sp, #4]
 80007fa:      	b	0x80007fc <stm32f407g_disc::led::<impl core::convert::Into<stm32f407g_disc::led::Led> for stm32f4xx_hal::gpio::gpiod::PD12<stm32f4xx_hal::gpio::Output<stm32f4xx_hal::gpio::PushPull>>>::into::h04c451b9775d90c0+0xe> @ imm = #-2
 80007fc:      	ldr	r0, [sp, #4]
 80007fe:      	strb	r0, [r7, #-5]
 8000802:      	ldrb	r0, [r7, #-5]
 8000806:      	add	sp, #16
 8000808:      	pop	{r7, pc}

0800080a <stm32f407g_disc::led::<impl core::convert::Into<stm32f407g_disc::led::Led> for stm32f4xx_hal::gpio::gpiod::PD13<stm32f4xx_hal::gpio::Output<stm32f4xx_hal::gpio::PushPull>>>::into::h9dd9707435a2c5c1>:
 800080a:      	push	{r7, lr}
 800080c:      	mov	r7, sp
 800080e:      	sub	sp, #16
 8000810:      	bl	0x8000e04 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$9downgrade17h17d169617fe0ef39E> @ imm = #1520
 8000814:      	str	r0, [sp, #4]
 8000816:      	b	0x8000818 <stm32f407g_disc::led::<impl core::convert::Into<stm32f407g_disc::led::Led> for stm32f4xx_hal::gpio::gpiod::PD13<stm32f4xx_hal::gpio::Output<stm32f4xx_hal::gpio::PushPull>>>::into::h9dd9707435a2c5c1+0xe> @ imm = #-2
 8000818:      	ldr	r0, [sp, #4]
 800081a:      	strb	r0, [r7, #-5]
 800081e:      	ldrb	r0, [r7, #-5]
 8000822:      	add	sp, #16
 8000824:      	pop	{r7, pc}

08000826 <stm32f407g_disc::led::<impl core::convert::Into<stm32f407g_disc::led::Led> for stm32f4xx_hal::gpio::gpiod::PD15<stm32f4xx_hal::gpio::Output<stm32f4xx_hal::gpio::PushPull>>>::into::h81b5d655221b3f64>:
 8000826:      	push	{r7, lr}
 8000828:      	mov	r7, sp
 800082a:      	sub	sp, #16
 800082c:      	bl	0x8001274 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$9downgrade17hdf3aabdab34d012cE> @ imm = #2628
 8000830:      	str	r0, [sp, #4]
 8000832:      	b	0x8000834 <stm32f407g_disc::led::<impl core::convert::Into<stm32f407g_disc::led::Led> for stm32f4xx_hal::gpio::gpiod::PD15<stm32f4xx_hal::gpio::Output<stm32f4xx_hal::gpio::PushPull>>>::into::h81b5d655221b3f64+0xe> @ imm = #-2
 8000834:      	ldr	r0, [sp, #4]
 8000836:      	strb	r0, [r7, #-5]
 800083a:      	ldrb	r0, [r7, #-5]
 800083e:      	add	sp, #16
 8000840:      	pop	{r7, pc}

08000842 <stm32f407g_disc::led::<impl core::convert::Into<stm32f407g_disc::led::Led> for stm32f4xx_hal::gpio::gpiod::PD14<stm32f4xx_hal::gpio::Output<stm32f4xx_hal::gpio::PushPull>>>::into::hecf8bc8372d2de9f>:
 8000842:      	push	{r7, lr}
 8000844:      	mov	r7, sp
 8000846:      	sub	sp, #16
 8000848:      	bl	0x800103c <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$9downgrade17h131ed5b39042e4beE> @ imm = #2032
 800084c:      	str	r0, [sp, #4]
 800084e:      	b	0x8000850 <stm32f407g_disc::led::<impl core::convert::Into<stm32f407g_disc::led::Led> for stm32f4xx_hal::gpio::gpiod::PD14<stm32f4xx_hal::gpio::Output<stm32f4xx_hal::gpio::PushPull>>>::into::hecf8bc8372d2de9f+0xe> @ imm = #-2
 8000850:      	ldr	r0, [sp, #4]
 8000852:      	strb	r0, [r7, #-5]
 8000856:      	ldrb	r0, [r7, #-5]
 800085a:      	add	sp, #16
 800085c:      	pop	{r7, pc}

0800085e <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$8set_high17hbb85d00788a6a77eE>:
 800085e:      	push	{r7, lr}
 8000860:      	mov	r7, sp
 8000862:      	sub	sp, #48
 8000864:      	str	r0, [sp, #8]
 8000866:      	b	0x8000868 <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$8set_high17hbb85d00788a6a77eE+0xa> @ imm = #-2
 8000868:      	add	r0, sp, #8
 800086a:      	str	r0, [sp, #16]
 800086c:      	ldr	r0, [sp, #16]
 800086e:      	movw	r1, #3096
 8000872:      	movt	r1, #16386
 8000876:      	str	r1, [sp, #4]
 8000878:      	str	r1, [sp, #28]
 800087a:      	str	r0, [sp, #32]
 800087c:      	movs	r1, #0
 800087e:      	str	r1, [sp, #24]
 8000880:      	add	r1, sp, #24
 8000882:      	str	r1, [sp, #20]
 8000884:      	ldr	r1, [sp, #20]
 8000886:      	bl	0x80008a0 <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$8set_high28_$u7b$$u7b$closure$u7d$$u7d$17h0b50fe6422133f13E> @ imm = #22
 800088a:      	mov	r1, r0
 800088c:      	ldr	r0, [sp, #4]
 800088e:      	ldr	r1, [r1]
 8000890:      	str	r0, [sp, #36]
 8000892:      	str	r1, [sp, #40]
 8000894:      	str	r0, [sp, #44]
 8000896:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #11432
 800089a:      	b	0x800089c <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$8set_high17hbb85d00788a6a77eE+0x3e> @ imm = #-2
 800089c:      	add	sp, #48
 800089e:      	pop	{r7, pc}

080008a0 <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$8set_high28_$u7b$$u7b$closure$u7d$$u7d$17h0b50fe6422133f13E>:
 80008a0:      	push	{r7, lr}
 80008a2:      	mov	r7, sp
 80008a4:      	sub	sp, #24
 80008a6:      	str	r1, [sp]
 80008a8:      	str	r0, [sp, #8]
 80008aa:      	str	r1, [sp, #12]
 80008ac:      	ldr	r0, [r0]
 80008ae:      	ldrb	r0, [r0]
 80008b0:      	and	r2, r0, #31
 80008b4:      	movs	r1, #1
 80008b6:      	lsls	r1, r2
 80008b8:      	str	r1, [sp, #4]
 80008ba:      	tst.w	r0, #224
 80008be:      	bne	0x80008ce <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$8set_high28_$u7b$$u7b$closure$u7d$$u7d$17h0b50fe6422133f13E+0x2e> @ imm = #12
 80008c0:      	b	0x80008c2 <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$8set_high28_$u7b$$u7b$closure$u7d$$u7d$17h0b50fe6422133f13E+0x22> @ imm = #-2
 80008c2:      	ldr	r0, [sp, #4]
 80008c4:      	ldr	r1, [sp]
 80008c6:      	str	r1, [sp, #16]
 80008c8:      	str	r0, [sp, #20]
 80008ca:      	str	r0, [r1]
 80008cc:      	b	0x80008e6 <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$8set_high28_$u7b$$u7b$closure$u7d$$u7d$17h0b50fe6422133f13E+0x46> @ imm = #22
 80008ce:      	movw	r0, #16112
 80008d2:      	movt	r0, #2048
 80008d6:      	movw	r2, #16092
 80008da:      	movt	r2, #2048
 80008de:      	movs	r1, #35
 80008e0:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #11408
 80008e4:      	trap
 80008e6:      	ldr	r0, [sp]
 80008e8:      	add	sp, #24
 80008ea:      	pop	{r7, pc}

080008ec <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$7set_low17h93a601ae2eed26eeE>:
 80008ec:      	push	{r7, lr}
 80008ee:      	mov	r7, sp
 80008f0:      	sub	sp, #48
 80008f2:      	str	r0, [sp, #8]
 80008f4:      	b	0x80008f6 <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$7set_low17h93a601ae2eed26eeE+0xa> @ imm = #-2
 80008f6:      	add	r0, sp, #8
 80008f8:      	str	r0, [sp, #16]
 80008fa:      	ldr	r0, [sp, #16]
 80008fc:      	movw	r1, #3096
 8000900:      	movt	r1, #16386
 8000904:      	str	r1, [sp, #4]
 8000906:      	str	r1, [sp, #28]
 8000908:      	str	r0, [sp, #32]
 800090a:      	movs	r1, #0
 800090c:      	str	r1, [sp, #24]
 800090e:      	add	r1, sp, #24
 8000910:      	str	r1, [sp, #20]
 8000912:      	ldr	r1, [sp, #20]
 8000914:      	bl	0x800092e <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$7set_low28_$u7b$$u7b$closure$u7d$$u7d$17he254544450f0025cE> @ imm = #22
 8000918:      	mov	r1, r0
 800091a:      	ldr	r0, [sp, #4]
 800091c:      	ldr	r1, [r1]
 800091e:      	str	r0, [sp, #36]
 8000920:      	str	r1, [sp, #40]
 8000922:      	str	r0, [sp, #44]
 8000924:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #11290
 8000928:      	b	0x800092a <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$7set_low17h93a601ae2eed26eeE+0x3e> @ imm = #-2
 800092a:      	add	sp, #48
 800092c:      	pop	{r7, pc}

0800092e <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$7set_low28_$u7b$$u7b$closure$u7d$$u7d$17he254544450f0025cE>:
 800092e:      	push	{r7, lr}
 8000930:      	mov	r7, sp
 8000932:      	sub	sp, #32
 8000934:      	str	r1, [sp, #8]
 8000936:      	str	r0, [sp, #16]
 8000938:      	str	r1, [sp, #20]
 800093a:      	ldr	r0, [r0]
 800093c:      	ldrb	r0, [r0]
 800093e:      	add.w	r1, r0, #16
 8000942:      	uxtb	r0, r1
 8000944:      	mov	r2, r1
 8000946:      	str	r2, [sp, #12]
 8000948:      	cmp	r0, r1
 800094a:      	bne	0x8000962 <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$7set_low28_$u7b$$u7b$closure$u7d$$u7d$17he254544450f0025cE+0x34> @ imm = #20
 800094c:      	b	0x800094e <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$7set_low28_$u7b$$u7b$closure$u7d$$u7d$17he254544450f0025cE+0x20> @ imm = #-2
 800094e:      	ldr	r0, [sp, #12]
 8000950:      	and	r2, r0, #31
 8000954:      	movs	r1, #1
 8000956:      	lsls	r1, r2
 8000958:      	str	r1, [sp, #4]
 800095a:      	tst.w	r0, #224
 800095e:      	bne	0x8000986 <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$7set_low28_$u7b$$u7b$closure$u7d$$u7d$17he254544450f0025cE+0x58> @ imm = #36
 8000960:      	b	0x800097a <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$7set_low28_$u7b$$u7b$closure$u7d$$u7d$17he254544450f0025cE+0x4c> @ imm = #22
 8000962:      	movw	r0, #16160
 8000966:      	movt	r0, #2048
 800096a:      	movw	r2, #16092
 800096e:      	movt	r2, #2048
 8000972:      	movs	r1, #28
 8000974:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #11260
 8000978:      	trap
 800097a:      	ldr	r0, [sp, #4]
 800097c:      	ldr	r1, [sp, #8]
 800097e:      	str	r1, [sp, #24]
 8000980:      	str	r0, [sp, #28]
 8000982:      	str	r0, [r1]
 8000984:      	b	0x800099e <_ZN134_$LT$stm32f4xx_hal..gpio..gpiod..PD$LT$stm32f4xx_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$7set_low28_$u7b$$u7b$closure$u7d$$u7d$17he254544450f0025cE+0x70> @ imm = #22
 8000986:      	movw	r0, #16112
 800098a:      	movt	r0, #2048
 800098e:      	movw	r2, #16092
 8000992:      	movt	r2, #2048
 8000996:      	movs	r1, #35
 8000998:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #11224
 800099c:      	trap
 800099e:      	ldr	r0, [sp, #8]
 80009a0:      	add	sp, #32
 80009a2:      	pop	{r7, pc}

080009a4 <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output17ha8a664d02aece940E>:
 80009a4:      	push	{r7, lr}
 80009a6:      	mov	r7, sp
 80009a8:      	sub	sp, #176
 80009aa:      	movw	r0, #16188
 80009ae:      	movt	r0, #2048
 80009b2:      	ldr	r0, [r0]
 80009b4:      	str	r0, [sp, #20]
 80009b6:      	b	0x80009b8 <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output17ha8a664d02aece940E+0x14> @ imm = #-2
 80009b8:      	add	r0, sp, #20
 80009ba:      	str	r0, [sp, #24]
 80009bc:      	ldr	r1, [sp, #24]
 80009be:      	str	r1, [sp, #12]
 80009c0:      	movw	r0, #3084
 80009c4:      	movt	r0, #16386
 80009c8:      	str	r0, [sp, #16]
 80009ca:      	str	r0, [sp, #144]
 80009cc:      	str	r1, [sp, #148]
 80009ce:      	str	r0, [sp, #156]
 80009d0:      	str	r0, [sp, #172]
 80009d2:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #11096
 80009d6:      	mov	r1, r0
 80009d8:      	ldr	r0, [sp, #12]
 80009da:      	str	r1, [sp, #152]
 80009dc:      	str	r1, [sp, #136]
 80009de:      	str	r1, [sp, #140]
 80009e0:      	add	r1, sp, #136
 80009e2:      	str	r1, [sp, #128]
 80009e4:      	add	r1, sp, #140
 80009e6:      	str	r1, [sp, #132]
 80009e8:      	ldr	r1, [sp, #128]
 80009ea:      	ldr	r2, [sp, #132]
 80009ec:      	bl	0x8000a90 <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17he1d08502b2268c8fE> @ imm = #160
 80009f0:      	mov	r1, r0
 80009f2:      	ldr	r0, [sp, #16]
 80009f4:      	ldr	r1, [r1]
 80009f6:      	str	r0, [sp, #160]
 80009f8:      	str	r1, [sp, #164]
 80009fa:      	str	r0, [sp, #168]
 80009fc:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #11074
 8000a00:      	b	0x8000a02 <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output17ha8a664d02aece940E+0x5e> @ imm = #-2
 8000a02:      	b	0x8000a04 <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output17ha8a664d02aece940E+0x60> @ imm = #-2
 8000a04:      	movw	r0, #3076
 8000a08:      	movt	r0, #16386
 8000a0c:      	str	r0, [sp, #8]
 8000a0e:      	str	r0, [sp, #100]
 8000a10:      	str	r0, [sp, #108]
 8000a12:      	str	r0, [sp, #124]
 8000a14:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #11030
 8000a18:      	str	r0, [sp, #104]
 8000a1a:      	str	r0, [sp, #92]
 8000a1c:      	str	r0, [sp, #96]
 8000a1e:      	add	r0, sp, #92
 8000a20:      	str	r0, [sp, #84]
 8000a22:      	add	r0, sp, #96
 8000a24:      	str	r0, [sp, #88]
 8000a26:      	ldr	r0, [sp, #84]
 8000a28:      	ldr	r1, [sp, #88]
 8000a2a:      	bl	0x8000b18 <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h72250ff91ace20cfE> @ imm = #234
 8000a2e:      	mov	r1, r0
 8000a30:      	ldr	r0, [sp, #8]
 8000a32:      	ldr	r1, [r1]
 8000a34:      	str	r0, [sp, #112]
 8000a36:      	str	r1, [sp, #116]
 8000a38:      	str	r0, [sp, #120]
 8000a3a:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #11012
 8000a3e:      	b	0x8000a40 <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output17ha8a664d02aece940E+0x9c> @ imm = #-2
 8000a40:      	b	0x8000a42 <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output17ha8a664d02aece940E+0x9e> @ imm = #-2
 8000a42:      	add	r0, sp, #20
 8000a44:      	str	r0, [sp, #28]
 8000a46:      	ldr	r1, [sp, #28]
 8000a48:      	str	r1, [sp]
 8000a4a:      	movw	r0, #3072
 8000a4e:      	movt	r0, #16386
 8000a52:      	str	r0, [sp, #4]
 8000a54:      	str	r0, [sp, #52]
 8000a56:      	str	r1, [sp, #56]
 8000a58:      	str	r0, [sp, #64]
 8000a5a:      	str	r0, [sp, #80]
 8000a5c:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #10958
 8000a60:      	mov	r1, r0
 8000a62:      	ldr	r0, [sp]
 8000a64:      	str	r1, [sp, #60]
 8000a66:      	str	r1, [sp, #44]
 8000a68:      	str	r1, [sp, #48]
 8000a6a:      	add	r1, sp, #44
 8000a6c:      	str	r1, [sp, #36]
 8000a6e:      	add	r1, sp, #48
 8000a70:      	str	r1, [sp, #40]
 8000a72:      	ldr	r1, [sp, #36]
 8000a74:      	ldr	r2, [sp, #40]
 8000a76:      	bl	0x8000b3e <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hb1147abb2f2523d3E> @ imm = #196
 8000a7a:      	mov	r1, r0
 8000a7c:      	ldr	r0, [sp, #4]
 8000a7e:      	ldr	r1, [r1]
 8000a80:      	str	r0, [sp, #68]
 8000a82:      	str	r1, [sp, #72]
 8000a84:      	str	r0, [sp, #76]
 8000a86:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #10936
 8000a8a:      	b	0x8000a8c <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output17ha8a664d02aece940E+0xe8> @ imm = #-2
 8000a8c:      	add	sp, #176
 8000a8e:      	pop	{r7, pc}

08000a90 <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17he1d08502b2268c8fE>:
 8000a90:      	push	{r7, lr}
 8000a92:      	mov	r7, sp
 8000a94:      	sub	sp, #48
 8000a96:      	str	r2, [sp, #12]
 8000a98:      	str	r0, [sp, #16]
 8000a9a:      	str	r0, [sp, #24]
 8000a9c:      	str	r1, [sp, #28]
 8000a9e:      	str	r2, [sp, #32]
 8000aa0:      	str	r1, [sp, #36]
 8000aa2:      	ldr	r0, [r1]
 8000aa4:      	str	r0, [sp, #20]
 8000aa6:      	b	0x8000aa8 <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17he1d08502b2268c8fE+0x18> @ imm = #-2
 8000aa8:      	ldr	r0, [sp, #16]
 8000aaa:      	ldr	r0, [r0]
 8000aac:      	and	r2, r0, #31
 8000ab0:      	movs	r1, #3
 8000ab2:      	lsls	r1, r2
 8000ab4:      	str	r1, [sp, #8]
 8000ab6:      	lsrs	r0, r0, #5
 8000ab8:      	cbnz	r0, 0x8000ad2 <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17he1d08502b2268c8fE+0x42> @ imm = #22
 8000aba:      	b	0x8000abc <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17he1d08502b2268c8fE+0x2c> @ imm = #-2
 8000abc:      	ldr	r0, [sp, #16]
 8000abe:      	ldr	r1, [sp, #20]
 8000ac0:      	ldr	r2, [sp, #8]
 8000ac2:      	bics	r1, r2
 8000ac4:      	str	r1, [sp]
 8000ac6:      	ldr	r0, [r0]
 8000ac8:      	movs	r1, #0
 8000aca:      	str	r1, [sp, #4]
 8000acc:      	lsrs	r0, r0, #5
 8000ace:      	cbnz	r0, 0x8000afa <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17he1d08502b2268c8fE+0x6a> @ imm = #40
 8000ad0:      	b	0x8000aea <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17he1d08502b2268c8fE+0x5a> @ imm = #22
 8000ad2:      	movw	r0, #16112
 8000ad6:      	movt	r0, #2048
 8000ada:      	movw	r2, #16092
 8000ade:      	movt	r2, #2048
 8000ae2:      	movs	r1, #35
 8000ae4:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #10892
 8000ae8:      	trap
 8000aea:      	ldr	r1, [sp, #12]
 8000aec:      	ldr	r0, [sp]
 8000aee:      	ldr	r2, [sp, #4]
 8000af0:      	orrs	r0, r2
 8000af2:      	str	r1, [sp, #40]
 8000af4:      	str	r0, [sp, #44]
 8000af6:      	str	r0, [r1]
 8000af8:      	b	0x8000b12 <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17he1d08502b2268c8fE+0x82> @ imm = #22
 8000afa:      	movw	r0, #16112
 8000afe:      	movt	r0, #2048
 8000b02:      	movw	r2, #16092
 8000b06:      	movt	r2, #2048
 8000b0a:      	movs	r1, #35
 8000b0c:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #10852
 8000b10:      	trap
 8000b12:      	ldr	r0, [sp, #12]
 8000b14:      	add	sp, #48
 8000b16:      	pop	{r7, pc}

08000b18 <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h72250ff91ace20cfE>:
 8000b18:      	sub	sp, #32
 8000b1a:      	str	r1, [sp]
 8000b1c:      	str	r0, [sp, #12]
 8000b1e:      	str	r1, [sp, #16]
 8000b20:      	str	r0, [sp, #20]
 8000b22:      	ldr	r0, [r0]
 8000b24:      	str	r0, [sp, #4]
 8000b26:      	b	0x8000b28 <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h72250ff91ace20cfE+0x10> @ imm = #-2
 8000b28:      	ldr	r1, [sp]
 8000b2a:      	ldr	r0, [sp, #4]
 8000b2c:      	bic	r0, r0, #4096
 8000b30:      	str	r1, [sp, #24]
 8000b32:      	str	r0, [sp, #28]
 8000b34:      	str	r0, [r1]
 8000b36:      	b	0x8000b38 <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h72250ff91ace20cfE+0x20> @ imm = #-2
 8000b38:      	ldr	r0, [sp]
 8000b3a:      	add	sp, #32
 8000b3c:      	bx	lr

08000b3e <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hb1147abb2f2523d3E>:
 8000b3e:      	push	{r7, lr}
 8000b40:      	mov	r7, sp
 8000b42:      	sub	sp, #48
 8000b44:      	str	r2, [sp, #12]
 8000b46:      	str	r0, [sp, #16]
 8000b48:      	str	r0, [sp, #24]
 8000b4a:      	str	r1, [sp, #28]
 8000b4c:      	str	r2, [sp, #32]
 8000b4e:      	str	r1, [sp, #36]
 8000b50:      	ldr	r0, [r1]
 8000b52:      	str	r0, [sp, #20]
 8000b54:      	b	0x8000b56 <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hb1147abb2f2523d3E+0x18> @ imm = #-2
 8000b56:      	ldr	r0, [sp, #16]
 8000b58:      	ldr	r0, [r0]
 8000b5a:      	and	r2, r0, #31
 8000b5e:      	movs	r1, #3
 8000b60:      	lsls	r1, r2
 8000b62:      	str	r1, [sp, #8]
 8000b64:      	lsrs	r0, r0, #5
 8000b66:      	cbnz	r0, 0x8000b86 <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hb1147abb2f2523d3E+0x48> @ imm = #28
 8000b68:      	b	0x8000b6a <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hb1147abb2f2523d3E+0x2c> @ imm = #-2
 8000b6a:      	ldr	r0, [sp, #16]
 8000b6c:      	ldr	r1, [sp, #20]
 8000b6e:      	ldr	r2, [sp, #8]
 8000b70:      	bics	r1, r2
 8000b72:      	str	r1, [sp]
 8000b74:      	ldr	r0, [r0]
 8000b76:      	and	r2, r0, #31
 8000b7a:      	movs	r1, #1
 8000b7c:      	lsls	r1, r2
 8000b7e:      	str	r1, [sp, #4]
 8000b80:      	lsrs	r0, r0, #5
 8000b82:      	cbnz	r0, 0x8000bae <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hb1147abb2f2523d3E+0x70> @ imm = #40
 8000b84:      	b	0x8000b9e <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hb1147abb2f2523d3E+0x60> @ imm = #22
 8000b86:      	movw	r0, #16112
 8000b8a:      	movt	r0, #2048
 8000b8e:      	movw	r2, #16092
 8000b92:      	movt	r2, #2048
 8000b96:      	movs	r1, #35
 8000b98:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #10712
 8000b9c:      	trap
 8000b9e:      	ldr	r1, [sp, #12]
 8000ba0:      	ldr	r0, [sp]
 8000ba2:      	ldr	r2, [sp, #4]
 8000ba4:      	orrs	r0, r2
 8000ba6:      	str	r1, [sp, #40]
 8000ba8:      	str	r0, [sp, #44]
 8000baa:      	str	r0, [r1]
 8000bac:      	b	0x8000bc6 <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hb1147abb2f2523d3E+0x88> @ imm = #22
 8000bae:      	movw	r0, #16112
 8000bb2:      	movt	r0, #2048
 8000bb6:      	movw	r2, #16092
 8000bba:      	movt	r2, #2048
 8000bbe:      	movs	r1, #35
 8000bc0:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #10672
 8000bc4:      	trap
 8000bc6:      	ldr	r0, [sp, #12]
 8000bc8:      	add	sp, #48
 8000bca:      	pop	{r7, pc}

08000bcc <_ZN13stm32f4xx_hal4gpio5gpiod16PD12$LT$MODE$GT$9downgrade17hd2e7388433b1201cE>:
 8000bcc:      	sub	sp, #8
 8000bce:      	movs	r0, #12
 8000bd0:      	strb.w	r0, [sp, #3]
 8000bd4:      	ldrb.w	r0, [sp, #3]
 8000bd8:      	add	sp, #8
 8000bda:      	bx	lr

08000bdc <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output17ha429c1257ffde52dE>:
 8000bdc:      	push	{r7, lr}
 8000bde:      	mov	r7, sp
 8000be0:      	sub	sp, #176
 8000be2:      	movw	r0, #16196
 8000be6:      	movt	r0, #2048
 8000bea:      	ldr	r0, [r0]
 8000bec:      	str	r0, [sp, #20]
 8000bee:      	b	0x8000bf0 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output17ha429c1257ffde52dE+0x14> @ imm = #-2
 8000bf0:      	add	r0, sp, #20
 8000bf2:      	str	r0, [sp, #24]
 8000bf4:      	ldr	r1, [sp, #24]
 8000bf6:      	str	r1, [sp, #12]
 8000bf8:      	movw	r0, #3084
 8000bfc:      	movt	r0, #16386
 8000c00:      	str	r0, [sp, #16]
 8000c02:      	str	r0, [sp, #144]
 8000c04:      	str	r1, [sp, #148]
 8000c06:      	str	r0, [sp, #156]
 8000c08:      	str	r0, [sp, #172]
 8000c0a:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #10528
 8000c0e:      	mov	r1, r0
 8000c10:      	ldr	r0, [sp, #12]
 8000c12:      	str	r1, [sp, #152]
 8000c14:      	str	r1, [sp, #136]
 8000c16:      	str	r1, [sp, #140]
 8000c18:      	add	r1, sp, #136
 8000c1a:      	str	r1, [sp, #128]
 8000c1c:      	add	r1, sp, #140
 8000c1e:      	str	r1, [sp, #132]
 8000c20:      	ldr	r1, [sp, #128]
 8000c22:      	ldr	r2, [sp, #132]
 8000c24:      	bl	0x8000cc8 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h756f27c56bc50123E> @ imm = #160
 8000c28:      	mov	r1, r0
 8000c2a:      	ldr	r0, [sp, #16]
 8000c2c:      	ldr	r1, [r1]
 8000c2e:      	str	r0, [sp, #160]
 8000c30:      	str	r1, [sp, #164]
 8000c32:      	str	r0, [sp, #168]
 8000c34:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #10506
 8000c38:      	b	0x8000c3a <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output17ha429c1257ffde52dE+0x5e> @ imm = #-2
 8000c3a:      	b	0x8000c3c <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output17ha429c1257ffde52dE+0x60> @ imm = #-2
 8000c3c:      	movw	r0, #3076
 8000c40:      	movt	r0, #16386
 8000c44:      	str	r0, [sp, #8]
 8000c46:      	str	r0, [sp, #100]
 8000c48:      	str	r0, [sp, #108]
 8000c4a:      	str	r0, [sp, #124]
 8000c4c:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #10462
 8000c50:      	str	r0, [sp, #104]
 8000c52:      	str	r0, [sp, #92]
 8000c54:      	str	r0, [sp, #96]
 8000c56:      	add	r0, sp, #92
 8000c58:      	str	r0, [sp, #84]
 8000c5a:      	add	r0, sp, #96
 8000c5c:      	str	r0, [sp, #88]
 8000c5e:      	ldr	r0, [sp, #84]
 8000c60:      	ldr	r1, [sp, #88]
 8000c62:      	bl	0x8000d50 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hbcefcb66e6a1e44dE> @ imm = #234
 8000c66:      	mov	r1, r0
 8000c68:      	ldr	r0, [sp, #8]
 8000c6a:      	ldr	r1, [r1]
 8000c6c:      	str	r0, [sp, #112]
 8000c6e:      	str	r1, [sp, #116]
 8000c70:      	str	r0, [sp, #120]
 8000c72:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #10444
 8000c76:      	b	0x8000c78 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output17ha429c1257ffde52dE+0x9c> @ imm = #-2
 8000c78:      	b	0x8000c7a <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output17ha429c1257ffde52dE+0x9e> @ imm = #-2
 8000c7a:      	add	r0, sp, #20
 8000c7c:      	str	r0, [sp, #28]
 8000c7e:      	ldr	r1, [sp, #28]
 8000c80:      	str	r1, [sp]
 8000c82:      	movw	r0, #3072
 8000c86:      	movt	r0, #16386
 8000c8a:      	str	r0, [sp, #4]
 8000c8c:      	str	r0, [sp, #52]
 8000c8e:      	str	r1, [sp, #56]
 8000c90:      	str	r0, [sp, #64]
 8000c92:      	str	r0, [sp, #80]
 8000c94:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #10390
 8000c98:      	mov	r1, r0
 8000c9a:      	ldr	r0, [sp]
 8000c9c:      	str	r1, [sp, #60]
 8000c9e:      	str	r1, [sp, #44]
 8000ca0:      	str	r1, [sp, #48]
 8000ca2:      	add	r1, sp, #44
 8000ca4:      	str	r1, [sp, #36]
 8000ca6:      	add	r1, sp, #48
 8000ca8:      	str	r1, [sp, #40]
 8000caa:      	ldr	r1, [sp, #36]
 8000cac:      	ldr	r2, [sp, #40]
 8000cae:      	bl	0x8000d76 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h0dc361ab85a89688E> @ imm = #196
 8000cb2:      	mov	r1, r0
 8000cb4:      	ldr	r0, [sp, #4]
 8000cb6:      	ldr	r1, [r1]
 8000cb8:      	str	r0, [sp, #68]
 8000cba:      	str	r1, [sp, #72]
 8000cbc:      	str	r0, [sp, #76]
 8000cbe:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #10368
 8000cc2:      	b	0x8000cc4 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output17ha429c1257ffde52dE+0xe8> @ imm = #-2
 8000cc4:      	add	sp, #176
 8000cc6:      	pop	{r7, pc}

08000cc8 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h756f27c56bc50123E>:
 8000cc8:      	push	{r7, lr}
 8000cca:      	mov	r7, sp
 8000ccc:      	sub	sp, #48
 8000cce:      	str	r2, [sp, #12]
 8000cd0:      	str	r0, [sp, #16]
 8000cd2:      	str	r0, [sp, #24]
 8000cd4:      	str	r1, [sp, #28]
 8000cd6:      	str	r2, [sp, #32]
 8000cd8:      	str	r1, [sp, #36]
 8000cda:      	ldr	r0, [r1]
 8000cdc:      	str	r0, [sp, #20]
 8000cde:      	b	0x8000ce0 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h756f27c56bc50123E+0x18> @ imm = #-2
 8000ce0:      	ldr	r0, [sp, #16]
 8000ce2:      	ldr	r0, [r0]
 8000ce4:      	and	r2, r0, #31
 8000ce8:      	movs	r1, #3
 8000cea:      	lsls	r1, r2
 8000cec:      	str	r1, [sp, #8]
 8000cee:      	lsrs	r0, r0, #5
 8000cf0:      	cbnz	r0, 0x8000d0a <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h756f27c56bc50123E+0x42> @ imm = #22
 8000cf2:      	b	0x8000cf4 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h756f27c56bc50123E+0x2c> @ imm = #-2
 8000cf4:      	ldr	r0, [sp, #16]
 8000cf6:      	ldr	r1, [sp, #20]
 8000cf8:      	ldr	r2, [sp, #8]
 8000cfa:      	bics	r1, r2
 8000cfc:      	str	r1, [sp]
 8000cfe:      	ldr	r0, [r0]
 8000d00:      	movs	r1, #0
 8000d02:      	str	r1, [sp, #4]
 8000d04:      	lsrs	r0, r0, #5
 8000d06:      	cbnz	r0, 0x8000d32 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h756f27c56bc50123E+0x6a> @ imm = #40
 8000d08:      	b	0x8000d22 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h756f27c56bc50123E+0x5a> @ imm = #22
 8000d0a:      	movw	r0, #16112
 8000d0e:      	movt	r0, #2048
 8000d12:      	movw	r2, #16092
 8000d16:      	movt	r2, #2048
 8000d1a:      	movs	r1, #35
 8000d1c:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #10324
 8000d20:      	trap
 8000d22:      	ldr	r1, [sp, #12]
 8000d24:      	ldr	r0, [sp]
 8000d26:      	ldr	r2, [sp, #4]
 8000d28:      	orrs	r0, r2
 8000d2a:      	str	r1, [sp, #40]
 8000d2c:      	str	r0, [sp, #44]
 8000d2e:      	str	r0, [r1]
 8000d30:      	b	0x8000d4a <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h756f27c56bc50123E+0x82> @ imm = #22
 8000d32:      	movw	r0, #16112
 8000d36:      	movt	r0, #2048
 8000d3a:      	movw	r2, #16092
 8000d3e:      	movt	r2, #2048
 8000d42:      	movs	r1, #35
 8000d44:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #10284
 8000d48:      	trap
 8000d4a:      	ldr	r0, [sp, #12]
 8000d4c:      	add	sp, #48
 8000d4e:      	pop	{r7, pc}

08000d50 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hbcefcb66e6a1e44dE>:
 8000d50:      	sub	sp, #32
 8000d52:      	str	r1, [sp]
 8000d54:      	str	r0, [sp, #12]
 8000d56:      	str	r1, [sp, #16]
 8000d58:      	str	r0, [sp, #20]
 8000d5a:      	ldr	r0, [r0]
 8000d5c:      	str	r0, [sp, #4]
 8000d5e:      	b	0x8000d60 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hbcefcb66e6a1e44dE+0x10> @ imm = #-2
 8000d60:      	ldr	r1, [sp]
 8000d62:      	ldr	r0, [sp, #4]
 8000d64:      	bic	r0, r0, #8192
 8000d68:      	str	r1, [sp, #24]
 8000d6a:      	str	r0, [sp, #28]
 8000d6c:      	str	r0, [r1]
 8000d6e:      	b	0x8000d70 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hbcefcb66e6a1e44dE+0x20> @ imm = #-2
 8000d70:      	ldr	r0, [sp]
 8000d72:      	add	sp, #32
 8000d74:      	bx	lr

08000d76 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h0dc361ab85a89688E>:
 8000d76:      	push	{r7, lr}
 8000d78:      	mov	r7, sp
 8000d7a:      	sub	sp, #48
 8000d7c:      	str	r2, [sp, #12]
 8000d7e:      	str	r0, [sp, #16]
 8000d80:      	str	r0, [sp, #24]
 8000d82:      	str	r1, [sp, #28]
 8000d84:      	str	r2, [sp, #32]
 8000d86:      	str	r1, [sp, #36]
 8000d88:      	ldr	r0, [r1]
 8000d8a:      	str	r0, [sp, #20]
 8000d8c:      	b	0x8000d8e <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h0dc361ab85a89688E+0x18> @ imm = #-2
 8000d8e:      	ldr	r0, [sp, #16]
 8000d90:      	ldr	r0, [r0]
 8000d92:      	and	r2, r0, #31
 8000d96:      	movs	r1, #3
 8000d98:      	lsls	r1, r2
 8000d9a:      	str	r1, [sp, #8]
 8000d9c:      	lsrs	r0, r0, #5
 8000d9e:      	cbnz	r0, 0x8000dbe <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h0dc361ab85a89688E+0x48> @ imm = #28
 8000da0:      	b	0x8000da2 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h0dc361ab85a89688E+0x2c> @ imm = #-2
 8000da2:      	ldr	r0, [sp, #16]
 8000da4:      	ldr	r1, [sp, #20]
 8000da6:      	ldr	r2, [sp, #8]
 8000da8:      	bics	r1, r2
 8000daa:      	str	r1, [sp]
 8000dac:      	ldr	r0, [r0]
 8000dae:      	and	r2, r0, #31
 8000db2:      	movs	r1, #1
 8000db4:      	lsls	r1, r2
 8000db6:      	str	r1, [sp, #4]
 8000db8:      	lsrs	r0, r0, #5
 8000dba:      	cbnz	r0, 0x8000de6 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h0dc361ab85a89688E+0x70> @ imm = #40
 8000dbc:      	b	0x8000dd6 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h0dc361ab85a89688E+0x60> @ imm = #22
 8000dbe:      	movw	r0, #16112
 8000dc2:      	movt	r0, #2048
 8000dc6:      	movw	r2, #16092
 8000dca:      	movt	r2, #2048
 8000dce:      	movs	r1, #35
 8000dd0:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #10144
 8000dd4:      	trap
 8000dd6:      	ldr	r1, [sp, #12]
 8000dd8:      	ldr	r0, [sp]
 8000dda:      	ldr	r2, [sp, #4]
 8000ddc:      	orrs	r0, r2
 8000dde:      	str	r1, [sp, #40]
 8000de0:      	str	r0, [sp, #44]
 8000de2:      	str	r0, [r1]
 8000de4:      	b	0x8000dfe <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h0dc361ab85a89688E+0x88> @ imm = #22
 8000de6:      	movw	r0, #16112
 8000dea:      	movt	r0, #2048
 8000dee:      	movw	r2, #16092
 8000df2:      	movt	r2, #2048
 8000df6:      	movs	r1, #35
 8000df8:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #10104
 8000dfc:      	trap
 8000dfe:      	ldr	r0, [sp, #12]
 8000e00:      	add	sp, #48
 8000e02:      	pop	{r7, pc}

08000e04 <_ZN13stm32f4xx_hal4gpio5gpiod16PD13$LT$MODE$GT$9downgrade17h17d169617fe0ef39E>:
 8000e04:      	sub	sp, #8
 8000e06:      	movs	r0, #13
 8000e08:      	strb.w	r0, [sp, #3]
 8000e0c:      	ldrb.w	r0, [sp, #3]
 8000e10:      	add	sp, #8
 8000e12:      	bx	lr

08000e14 <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output17h210f8f7e69975ae3E>:
 8000e14:      	push	{r7, lr}
 8000e16:      	mov	r7, sp
 8000e18:      	sub	sp, #176
 8000e1a:      	movw	r0, #16212
 8000e1e:      	movt	r0, #2048
 8000e22:      	ldr	r0, [r0]
 8000e24:      	str	r0, [sp, #20]
 8000e26:      	b	0x8000e28 <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output17h210f8f7e69975ae3E+0x14> @ imm = #-2
 8000e28:      	add	r0, sp, #20
 8000e2a:      	str	r0, [sp, #24]
 8000e2c:      	ldr	r1, [sp, #24]
 8000e2e:      	str	r1, [sp, #12]
 8000e30:      	movw	r0, #3084
 8000e34:      	movt	r0, #16386
 8000e38:      	str	r0, [sp, #16]
 8000e3a:      	str	r0, [sp, #144]
 8000e3c:      	str	r1, [sp, #148]
 8000e3e:      	str	r0, [sp, #156]
 8000e40:      	str	r0, [sp, #172]
 8000e42:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #9960
 8000e46:      	mov	r1, r0
 8000e48:      	ldr	r0, [sp, #12]
 8000e4a:      	str	r1, [sp, #152]
 8000e4c:      	str	r1, [sp, #136]
 8000e4e:      	str	r1, [sp, #140]
 8000e50:      	add	r1, sp, #136
 8000e52:      	str	r1, [sp, #128]
 8000e54:      	add	r1, sp, #140
 8000e56:      	str	r1, [sp, #132]
 8000e58:      	ldr	r1, [sp, #128]
 8000e5a:      	ldr	r2, [sp, #132]
 8000e5c:      	bl	0x8000f00 <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h282256c9620a662bE> @ imm = #160
 8000e60:      	mov	r1, r0
 8000e62:      	ldr	r0, [sp, #16]
 8000e64:      	ldr	r1, [r1]
 8000e66:      	str	r0, [sp, #160]
 8000e68:      	str	r1, [sp, #164]
 8000e6a:      	str	r0, [sp, #168]
 8000e6c:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #9938
 8000e70:      	b	0x8000e72 <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output17h210f8f7e69975ae3E+0x5e> @ imm = #-2
 8000e72:      	b	0x8000e74 <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output17h210f8f7e69975ae3E+0x60> @ imm = #-2
 8000e74:      	movw	r0, #3076
 8000e78:      	movt	r0, #16386
 8000e7c:      	str	r0, [sp, #8]
 8000e7e:      	str	r0, [sp, #100]
 8000e80:      	str	r0, [sp, #108]
 8000e82:      	str	r0, [sp, #124]
 8000e84:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #9894
 8000e88:      	str	r0, [sp, #104]
 8000e8a:      	str	r0, [sp, #92]
 8000e8c:      	str	r0, [sp, #96]
 8000e8e:      	add	r0, sp, #92
 8000e90:      	str	r0, [sp, #84]
 8000e92:      	add	r0, sp, #96
 8000e94:      	str	r0, [sp, #88]
 8000e96:      	ldr	r0, [sp, #84]
 8000e98:      	ldr	r1, [sp, #88]
 8000e9a:      	bl	0x8000f88 <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h29a14977e1a14e9cE> @ imm = #234
 8000e9e:      	mov	r1, r0
 8000ea0:      	ldr	r0, [sp, #8]
 8000ea2:      	ldr	r1, [r1]
 8000ea4:      	str	r0, [sp, #112]
 8000ea6:      	str	r1, [sp, #116]
 8000ea8:      	str	r0, [sp, #120]
 8000eaa:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #9876
 8000eae:      	b	0x8000eb0 <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output17h210f8f7e69975ae3E+0x9c> @ imm = #-2
 8000eb0:      	b	0x8000eb2 <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output17h210f8f7e69975ae3E+0x9e> @ imm = #-2
 8000eb2:      	add	r0, sp, #20
 8000eb4:      	str	r0, [sp, #28]
 8000eb6:      	ldr	r1, [sp, #28]
 8000eb8:      	str	r1, [sp]
 8000eba:      	movw	r0, #3072
 8000ebe:      	movt	r0, #16386
 8000ec2:      	str	r0, [sp, #4]
 8000ec4:      	str	r0, [sp, #52]
 8000ec6:      	str	r1, [sp, #56]
 8000ec8:      	str	r0, [sp, #64]
 8000eca:      	str	r0, [sp, #80]
 8000ecc:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #9822
 8000ed0:      	mov	r1, r0
 8000ed2:      	ldr	r0, [sp]
 8000ed4:      	str	r1, [sp, #60]
 8000ed6:      	str	r1, [sp, #44]
 8000ed8:      	str	r1, [sp, #48]
 8000eda:      	add	r1, sp, #44
 8000edc:      	str	r1, [sp, #36]
 8000ede:      	add	r1, sp, #48
 8000ee0:      	str	r1, [sp, #40]
 8000ee2:      	ldr	r1, [sp, #36]
 8000ee4:      	ldr	r2, [sp, #40]
 8000ee6:      	bl	0x8000fae <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hecc6ee2240be408aE> @ imm = #196
 8000eea:      	mov	r1, r0
 8000eec:      	ldr	r0, [sp, #4]
 8000eee:      	ldr	r1, [r1]
 8000ef0:      	str	r0, [sp, #68]
 8000ef2:      	str	r1, [sp, #72]
 8000ef4:      	str	r0, [sp, #76]
 8000ef6:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #9800
 8000efa:      	b	0x8000efc <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output17h210f8f7e69975ae3E+0xe8> @ imm = #-2
 8000efc:      	add	sp, #176
 8000efe:      	pop	{r7, pc}

08000f00 <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h282256c9620a662bE>:
 8000f00:      	push	{r7, lr}
 8000f02:      	mov	r7, sp
 8000f04:      	sub	sp, #48
 8000f06:      	str	r2, [sp, #12]
 8000f08:      	str	r0, [sp, #16]
 8000f0a:      	str	r0, [sp, #24]
 8000f0c:      	str	r1, [sp, #28]
 8000f0e:      	str	r2, [sp, #32]
 8000f10:      	str	r1, [sp, #36]
 8000f12:      	ldr	r0, [r1]
 8000f14:      	str	r0, [sp, #20]
 8000f16:      	b	0x8000f18 <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h282256c9620a662bE+0x18> @ imm = #-2
 8000f18:      	ldr	r0, [sp, #16]
 8000f1a:      	ldr	r0, [r0]
 8000f1c:      	and	r2, r0, #31
 8000f20:      	movs	r1, #3
 8000f22:      	lsls	r1, r2
 8000f24:      	str	r1, [sp, #8]
 8000f26:      	lsrs	r0, r0, #5
 8000f28:      	cbnz	r0, 0x8000f42 <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h282256c9620a662bE+0x42> @ imm = #22
 8000f2a:      	b	0x8000f2c <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h282256c9620a662bE+0x2c> @ imm = #-2
 8000f2c:      	ldr	r0, [sp, #16]
 8000f2e:      	ldr	r1, [sp, #20]
 8000f30:      	ldr	r2, [sp, #8]
 8000f32:      	bics	r1, r2
 8000f34:      	str	r1, [sp]
 8000f36:      	ldr	r0, [r0]
 8000f38:      	movs	r1, #0
 8000f3a:      	str	r1, [sp, #4]
 8000f3c:      	lsrs	r0, r0, #5
 8000f3e:      	cbnz	r0, 0x8000f6a <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h282256c9620a662bE+0x6a> @ imm = #40
 8000f40:      	b	0x8000f5a <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h282256c9620a662bE+0x5a> @ imm = #22
 8000f42:      	movw	r0, #16112
 8000f46:      	movt	r0, #2048
 8000f4a:      	movw	r2, #16092
 8000f4e:      	movt	r2, #2048
 8000f52:      	movs	r1, #35
 8000f54:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #9756
 8000f58:      	trap
 8000f5a:      	ldr	r1, [sp, #12]
 8000f5c:      	ldr	r0, [sp]
 8000f5e:      	ldr	r2, [sp, #4]
 8000f60:      	orrs	r0, r2
 8000f62:      	str	r1, [sp, #40]
 8000f64:      	str	r0, [sp, #44]
 8000f66:      	str	r0, [r1]
 8000f68:      	b	0x8000f82 <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h282256c9620a662bE+0x82> @ imm = #22
 8000f6a:      	movw	r0, #16112
 8000f6e:      	movt	r0, #2048
 8000f72:      	movw	r2, #16092
 8000f76:      	movt	r2, #2048
 8000f7a:      	movs	r1, #35
 8000f7c:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #9716
 8000f80:      	trap
 8000f82:      	ldr	r0, [sp, #12]
 8000f84:      	add	sp, #48
 8000f86:      	pop	{r7, pc}

08000f88 <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h29a14977e1a14e9cE>:
 8000f88:      	sub	sp, #32
 8000f8a:      	str	r1, [sp]
 8000f8c:      	str	r0, [sp, #12]
 8000f8e:      	str	r1, [sp, #16]
 8000f90:      	str	r0, [sp, #20]
 8000f92:      	ldr	r0, [r0]
 8000f94:      	str	r0, [sp, #4]
 8000f96:      	b	0x8000f98 <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h29a14977e1a14e9cE+0x10> @ imm = #-2
 8000f98:      	ldr	r1, [sp]
 8000f9a:      	ldr	r0, [sp, #4]
 8000f9c:      	bic	r0, r0, #16384
 8000fa0:      	str	r1, [sp, #24]
 8000fa2:      	str	r0, [sp, #28]
 8000fa4:      	str	r0, [r1]
 8000fa6:      	b	0x8000fa8 <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h29a14977e1a14e9cE+0x20> @ imm = #-2
 8000fa8:      	ldr	r0, [sp]
 8000faa:      	add	sp, #32
 8000fac:      	bx	lr

08000fae <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hecc6ee2240be408aE>:
 8000fae:      	push	{r7, lr}
 8000fb0:      	mov	r7, sp
 8000fb2:      	sub	sp, #48
 8000fb4:      	str	r2, [sp, #12]
 8000fb6:      	str	r0, [sp, #16]
 8000fb8:      	str	r0, [sp, #24]
 8000fba:      	str	r1, [sp, #28]
 8000fbc:      	str	r2, [sp, #32]
 8000fbe:      	str	r1, [sp, #36]
 8000fc0:      	ldr	r0, [r1]
 8000fc2:      	str	r0, [sp, #20]
 8000fc4:      	b	0x8000fc6 <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hecc6ee2240be408aE+0x18> @ imm = #-2
 8000fc6:      	ldr	r0, [sp, #16]
 8000fc8:      	ldr	r0, [r0]
 8000fca:      	and	r2, r0, #31
 8000fce:      	movs	r1, #3
 8000fd0:      	lsls	r1, r2
 8000fd2:      	str	r1, [sp, #8]
 8000fd4:      	lsrs	r0, r0, #5
 8000fd6:      	cbnz	r0, 0x8000ff6 <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hecc6ee2240be408aE+0x48> @ imm = #28
 8000fd8:      	b	0x8000fda <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hecc6ee2240be408aE+0x2c> @ imm = #-2
 8000fda:      	ldr	r0, [sp, #16]
 8000fdc:      	ldr	r1, [sp, #20]
 8000fde:      	ldr	r2, [sp, #8]
 8000fe0:      	bics	r1, r2
 8000fe2:      	str	r1, [sp]
 8000fe4:      	ldr	r0, [r0]
 8000fe6:      	and	r2, r0, #31
 8000fea:      	movs	r1, #1
 8000fec:      	lsls	r1, r2
 8000fee:      	str	r1, [sp, #4]
 8000ff0:      	lsrs	r0, r0, #5
 8000ff2:      	cbnz	r0, 0x800101e <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hecc6ee2240be408aE+0x70> @ imm = #40
 8000ff4:      	b	0x800100e <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hecc6ee2240be408aE+0x60> @ imm = #22
 8000ff6:      	movw	r0, #16112
 8000ffa:      	movt	r0, #2048
 8000ffe:      	movw	r2, #16092
 8001002:      	movt	r2, #2048
 8001006:      	movs	r1, #35
 8001008:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #9576
 800100c:      	trap
 800100e:      	ldr	r1, [sp, #12]
 8001010:      	ldr	r0, [sp]
 8001012:      	ldr	r2, [sp, #4]
 8001014:      	orrs	r0, r2
 8001016:      	str	r1, [sp, #40]
 8001018:      	str	r0, [sp, #44]
 800101a:      	str	r0, [r1]
 800101c:      	b	0x8001036 <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hecc6ee2240be408aE+0x88> @ imm = #22
 800101e:      	movw	r0, #16112
 8001022:      	movt	r0, #2048
 8001026:      	movw	r2, #16092
 800102a:      	movt	r2, #2048
 800102e:      	movs	r1, #35
 8001030:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #9536
 8001034:      	trap
 8001036:      	ldr	r0, [sp, #12]
 8001038:      	add	sp, #48
 800103a:      	pop	{r7, pc}

0800103c <_ZN13stm32f4xx_hal4gpio5gpiod16PD14$LT$MODE$GT$9downgrade17h131ed5b39042e4beE>:
 800103c:      	sub	sp, #8
 800103e:      	movs	r0, #14
 8001040:      	strb.w	r0, [sp, #3]
 8001044:      	ldrb.w	r0, [sp, #3]
 8001048:      	add	sp, #8
 800104a:      	bx	lr

0800104c <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output17h31db426039cbb91dE>:
 800104c:      	push	{r7, lr}
 800104e:      	mov	r7, sp
 8001050:      	sub	sp, #176
 8001052:      	movw	r0, #16204
 8001056:      	movt	r0, #2048
 800105a:      	ldr	r0, [r0]
 800105c:      	str	r0, [sp, #20]
 800105e:      	b	0x8001060 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output17h31db426039cbb91dE+0x14> @ imm = #-2
 8001060:      	add	r0, sp, #20
 8001062:      	str	r0, [sp, #24]
 8001064:      	ldr	r1, [sp, #24]
 8001066:      	str	r1, [sp, #12]
 8001068:      	movw	r0, #3084
 800106c:      	movt	r0, #16386
 8001070:      	str	r0, [sp, #16]
 8001072:      	str	r0, [sp, #144]
 8001074:      	str	r1, [sp, #148]
 8001076:      	str	r0, [sp, #156]
 8001078:      	str	r0, [sp, #172]
 800107a:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #9392
 800107e:      	mov	r1, r0
 8001080:      	ldr	r0, [sp, #12]
 8001082:      	str	r1, [sp, #152]
 8001084:      	str	r1, [sp, #136]
 8001086:      	str	r1, [sp, #140]
 8001088:      	add	r1, sp, #136
 800108a:      	str	r1, [sp, #128]
 800108c:      	add	r1, sp, #140
 800108e:      	str	r1, [sp, #132]
 8001090:      	ldr	r1, [sp, #128]
 8001092:      	ldr	r2, [sp, #132]
 8001094:      	bl	0x8001138 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h4dd9c15ff23d3373E> @ imm = #160
 8001098:      	mov	r1, r0
 800109a:      	ldr	r0, [sp, #16]
 800109c:      	ldr	r1, [r1]
 800109e:      	str	r0, [sp, #160]
 80010a0:      	str	r1, [sp, #164]
 80010a2:      	str	r0, [sp, #168]
 80010a4:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #9370
 80010a8:      	b	0x80010aa <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output17h31db426039cbb91dE+0x5e> @ imm = #-2
 80010aa:      	b	0x80010ac <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output17h31db426039cbb91dE+0x60> @ imm = #-2
 80010ac:      	movw	r0, #3076
 80010b0:      	movt	r0, #16386
 80010b4:      	str	r0, [sp, #8]
 80010b6:      	str	r0, [sp, #100]
 80010b8:      	str	r0, [sp, #108]
 80010ba:      	str	r0, [sp, #124]
 80010bc:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #9326
 80010c0:      	str	r0, [sp, #104]
 80010c2:      	str	r0, [sp, #92]
 80010c4:      	str	r0, [sp, #96]
 80010c6:      	add	r0, sp, #92
 80010c8:      	str	r0, [sp, #84]
 80010ca:      	add	r0, sp, #96
 80010cc:      	str	r0, [sp, #88]
 80010ce:      	ldr	r0, [sp, #84]
 80010d0:      	ldr	r1, [sp, #88]
 80010d2:      	bl	0x80011c0 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h15ed49cc33cbf8a0E> @ imm = #234
 80010d6:      	mov	r1, r0
 80010d8:      	ldr	r0, [sp, #8]
 80010da:      	ldr	r1, [r1]
 80010dc:      	str	r0, [sp, #112]
 80010de:      	str	r1, [sp, #116]
 80010e0:      	str	r0, [sp, #120]
 80010e2:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #9308
 80010e6:      	b	0x80010e8 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output17h31db426039cbb91dE+0x9c> @ imm = #-2
 80010e8:      	b	0x80010ea <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output17h31db426039cbb91dE+0x9e> @ imm = #-2
 80010ea:      	add	r0, sp, #20
 80010ec:      	str	r0, [sp, #28]
 80010ee:      	ldr	r1, [sp, #28]
 80010f0:      	str	r1, [sp]
 80010f2:      	movw	r0, #3072
 80010f6:      	movt	r0, #16386
 80010fa:      	str	r0, [sp, #4]
 80010fc:      	str	r0, [sp, #52]
 80010fe:      	str	r1, [sp, #56]
 8001100:      	str	r0, [sp, #64]
 8001102:      	str	r0, [sp, #80]
 8001104:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #9254
 8001108:      	mov	r1, r0
 800110a:      	ldr	r0, [sp]
 800110c:      	str	r1, [sp, #60]
 800110e:      	str	r1, [sp, #44]
 8001110:      	str	r1, [sp, #48]
 8001112:      	add	r1, sp, #44
 8001114:      	str	r1, [sp, #36]
 8001116:      	add	r1, sp, #48
 8001118:      	str	r1, [sp, #40]
 800111a:      	ldr	r1, [sp, #36]
 800111c:      	ldr	r2, [sp, #40]
 800111e:      	bl	0x80011e6 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h223c92066affc1f3E> @ imm = #196
 8001122:      	mov	r1, r0
 8001124:      	ldr	r0, [sp, #4]
 8001126:      	ldr	r1, [r1]
 8001128:      	str	r0, [sp, #68]
 800112a:      	str	r1, [sp, #72]
 800112c:      	str	r0, [sp, #76]
 800112e:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #9232
 8001132:      	b	0x8001134 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output17h31db426039cbb91dE+0xe8> @ imm = #-2
 8001134:      	add	sp, #176
 8001136:      	pop	{r7, pc}

08001138 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h4dd9c15ff23d3373E>:
 8001138:      	push	{r7, lr}
 800113a:      	mov	r7, sp
 800113c:      	sub	sp, #48
 800113e:      	str	r2, [sp, #12]
 8001140:      	str	r0, [sp, #16]
 8001142:      	str	r0, [sp, #24]
 8001144:      	str	r1, [sp, #28]
 8001146:      	str	r2, [sp, #32]
 8001148:      	str	r1, [sp, #36]
 800114a:      	ldr	r0, [r1]
 800114c:      	str	r0, [sp, #20]
 800114e:      	b	0x8001150 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h4dd9c15ff23d3373E+0x18> @ imm = #-2
 8001150:      	ldr	r0, [sp, #16]
 8001152:      	ldr	r0, [r0]
 8001154:      	and	r2, r0, #31
 8001158:      	movs	r1, #3
 800115a:      	lsls	r1, r2
 800115c:      	str	r1, [sp, #8]
 800115e:      	lsrs	r0, r0, #5
 8001160:      	cbnz	r0, 0x800117a <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h4dd9c15ff23d3373E+0x42> @ imm = #22
 8001162:      	b	0x8001164 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h4dd9c15ff23d3373E+0x2c> @ imm = #-2
 8001164:      	ldr	r0, [sp, #16]
 8001166:      	ldr	r1, [sp, #20]
 8001168:      	ldr	r2, [sp, #8]
 800116a:      	bics	r1, r2
 800116c:      	str	r1, [sp]
 800116e:      	ldr	r0, [r0]
 8001170:      	movs	r1, #0
 8001172:      	str	r1, [sp, #4]
 8001174:      	lsrs	r0, r0, #5
 8001176:      	cbnz	r0, 0x80011a2 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h4dd9c15ff23d3373E+0x6a> @ imm = #40
 8001178:      	b	0x8001192 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h4dd9c15ff23d3373E+0x5a> @ imm = #22
 800117a:      	movw	r0, #16112
 800117e:      	movt	r0, #2048
 8001182:      	movw	r2, #16092
 8001186:      	movt	r2, #2048
 800118a:      	movs	r1, #35
 800118c:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #9188
 8001190:      	trap
 8001192:      	ldr	r1, [sp, #12]
 8001194:      	ldr	r0, [sp]
 8001196:      	ldr	r2, [sp, #4]
 8001198:      	orrs	r0, r2
 800119a:      	str	r1, [sp, #40]
 800119c:      	str	r0, [sp, #44]
 800119e:      	str	r0, [r1]
 80011a0:      	b	0x80011ba <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h4dd9c15ff23d3373E+0x82> @ imm = #22
 80011a2:      	movw	r0, #16112
 80011a6:      	movt	r0, #2048
 80011aa:      	movw	r2, #16092
 80011ae:      	movt	r2, #2048
 80011b2:      	movs	r1, #35
 80011b4:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #9148
 80011b8:      	trap
 80011ba:      	ldr	r0, [sp, #12]
 80011bc:      	add	sp, #48
 80011be:      	pop	{r7, pc}

080011c0 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h15ed49cc33cbf8a0E>:
 80011c0:      	sub	sp, #32
 80011c2:      	str	r1, [sp]
 80011c4:      	str	r0, [sp, #12]
 80011c6:      	str	r1, [sp, #16]
 80011c8:      	str	r0, [sp, #20]
 80011ca:      	ldr	r0, [r0]
 80011cc:      	str	r0, [sp, #4]
 80011ce:      	b	0x80011d0 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h15ed49cc33cbf8a0E+0x10> @ imm = #-2
 80011d0:      	ldr	r1, [sp]
 80011d2:      	ldr	r0, [sp, #4]
 80011d4:      	bic	r0, r0, #32768
 80011d8:      	str	r1, [sp, #24]
 80011da:      	str	r0, [sp, #28]
 80011dc:      	str	r0, [r1]
 80011de:      	b	0x80011e0 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h15ed49cc33cbf8a0E+0x20> @ imm = #-2
 80011e0:      	ldr	r0, [sp]
 80011e2:      	add	sp, #32
 80011e4:      	bx	lr

080011e6 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h223c92066affc1f3E>:
 80011e6:      	push	{r7, lr}
 80011e8:      	mov	r7, sp
 80011ea:      	sub	sp, #48
 80011ec:      	str	r2, [sp, #12]
 80011ee:      	str	r0, [sp, #16]
 80011f0:      	str	r0, [sp, #24]
 80011f2:      	str	r1, [sp, #28]
 80011f4:      	str	r2, [sp, #32]
 80011f6:      	str	r1, [sp, #36]
 80011f8:      	ldr	r0, [r1]
 80011fa:      	str	r0, [sp, #20]
 80011fc:      	b	0x80011fe <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h223c92066affc1f3E+0x18> @ imm = #-2
 80011fe:      	ldr	r0, [sp, #16]
 8001200:      	ldr	r0, [r0]
 8001202:      	and	r2, r0, #31
 8001206:      	movs	r1, #3
 8001208:      	lsls	r1, r2
 800120a:      	str	r1, [sp, #8]
 800120c:      	lsrs	r0, r0, #5
 800120e:      	cbnz	r0, 0x800122e <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h223c92066affc1f3E+0x48> @ imm = #28
 8001210:      	b	0x8001212 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h223c92066affc1f3E+0x2c> @ imm = #-2
 8001212:      	ldr	r0, [sp, #16]
 8001214:      	ldr	r1, [sp, #20]
 8001216:      	ldr	r2, [sp, #8]
 8001218:      	bics	r1, r2
 800121a:      	str	r1, [sp]
 800121c:      	ldr	r0, [r0]
 800121e:      	and	r2, r0, #31
 8001222:      	movs	r1, #1
 8001224:      	lsls	r1, r2
 8001226:      	str	r1, [sp, #4]
 8001228:      	lsrs	r0, r0, #5
 800122a:      	cbnz	r0, 0x8001256 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h223c92066affc1f3E+0x70> @ imm = #40
 800122c:      	b	0x8001246 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h223c92066affc1f3E+0x60> @ imm = #22
 800122e:      	movw	r0, #16112
 8001232:      	movt	r0, #2048
 8001236:      	movw	r2, #16092
 800123a:      	movt	r2, #2048
 800123e:      	movs	r1, #35
 8001240:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #9008
 8001244:      	trap
 8001246:      	ldr	r1, [sp, #12]
 8001248:      	ldr	r0, [sp]
 800124a:      	ldr	r2, [sp, #4]
 800124c:      	orrs	r0, r2
 800124e:      	str	r1, [sp, #40]
 8001250:      	str	r0, [sp, #44]
 8001252:      	str	r0, [r1]
 8001254:      	b	0x800126e <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h223c92066affc1f3E+0x88> @ imm = #22
 8001256:      	movw	r0, #16112
 800125a:      	movt	r0, #2048
 800125e:      	movw	r2, #16092
 8001262:      	movt	r2, #2048
 8001266:      	movs	r1, #35
 8001268:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #8968
 800126c:      	trap
 800126e:      	ldr	r0, [sp, #12]
 8001270:      	add	sp, #48
 8001272:      	pop	{r7, pc}

08001274 <_ZN13stm32f4xx_hal4gpio5gpiod16PD15$LT$MODE$GT$9downgrade17hdf3aabdab34d012cE>:
 8001274:      	sub	sp, #8
 8001276:      	movs	r0, #15
 8001278:      	strb.w	r0, [sp, #3]
 800127c:      	ldrb.w	r0, [sp, #3]
 8001280:      	add	sp, #8
 8001282:      	bx	lr

08001284 <stm32f4xx_hal::delay::Delay::new::h4f1fc3fc40392250>:
 8001284:      	push	{r4, r5, r6, r7, lr}
 8001286:      	add	r7, sp, #12
 8001288:      	str	r11, [sp, #-4]!
 800128c:      	sub	sp, #32
 800128e:      	str	r1, [sp]
 8001290:      	str	r0, [sp, #4]
 8001292:      	movs	r0, #1
 8001294:      	strb	r0, [r7, #-37]
 8001298:      	ldrb	r1, [r7, #-37]
 800129c:      	add	r0, sp, #8
 800129e:      	bl	0x80026de <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::set_clock_source::hc486c3aa027da09d> @ imm = #5180
 80012a2:      	b	0x80012a4 <stm32f4xx_hal::delay::Delay::new::h4f1fc3fc40392250+0x20> @ imm = #-2
 80012a4:      	ldr	r0, [sp, #4]
 80012a6:      	ldr	r3, [sp]
 80012a8:      	add	r1, sp, #12
 80012aa:      	mov	r2, r1
 80012ac:      	ldm.w	r3, {r4, r5, r6, r12, lr}
 80012b0:      	stm.w	r2, {r4, r5, r6, r12, lr}
 80012b4:      	ldm.w	r1, {r2, r3, r4, r12, lr}
 80012b8:      	stm.w	r0, {r2, r3, r4, r12, lr}
 80012bc:      	add	sp, #32
 80012be:      	ldr	r11, [sp], #4
 80012c2:      	pop	{r4, r5, r6, r7, pc}

080012c4 <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h5a9e757aecfe3a80>:
 80012c4:      	push	{r7, lr}
 80012c6:      	mov	r7, sp
 80012c8:      	sub	sp, #16
 80012ca:      	str	r0, [sp]
 80012cc:      	str	r0, [sp, #8]
 80012ce:      	str	r1, [sp, #12]
 80012d0:      	mov.w	r0, #1000
 80012d4:      	umull	r1, r0, r1, r0
 80012d8:      	str	r1, [sp, #4]
 80012da:      	cbnz	r0, 0x80012e8 <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h5a9e757aecfe3a80+0x24> @ imm = #10
 80012dc:      	b	0x80012de <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h5a9e757aecfe3a80+0x1a> @ imm = #-2
 80012de:      	ldr	r1, [sp, #4]
 80012e0:      	ldr	r0, [sp]
 80012e2:      	bl	0x8001304 <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60> @ imm = #30
 80012e6:      	b	0x8001300 <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h5a9e757aecfe3a80+0x3c> @ imm = #22
 80012e8:      	movw	r0, #16336
 80012ec:      	movt	r0, #2048
 80012f0:      	movw	r2, #16312
 80012f4:      	movt	r2, #2048
 80012f8:      	movs	r1, #33
 80012fa:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #8822
 80012fe:      	trap
 8001300:      	add	sp, #16
 8001302:      	pop	{r7, pc}

08001304 <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60>:
 8001304:      	push	{r7, lr}
 8001306:      	mov	r7, sp
 8001308:      	sub	sp, #40
 800130a:      	str	r1, [sp, #12]
 800130c:      	str	r0, [sp, #16]
 800130e:      	str	r0, [sp, #32]
 8001310:      	str	r1, [sp, #36]
 8001312:      	bl	0x8002438 <stm32f4xx_hal::rcc::Clocks::hclk::hdb6dd802bdb1100c> @ imm = #4386
 8001316:      	str	r0, [sp, #20]
 8001318:      	b	0x800131a <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0x16> @ imm = #-2
 800131a:      	ldr	r0, [sp, #12]
 800131c:      	ldr	r1, [sp, #20]
 800131e:      	movw	r2, #56963
 8001322:      	movt	r2, #17179
 8001326:      	umull	r2, r1, r1, r2
 800132a:      	lsrs	r1, r1, #21
 800132c:      	umull	r1, r0, r0, r1
 8001330:      	str	r1, [sp, #8]
 8001332:      	cbnz	r0, 0x800133c <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0x38> @ imm = #6
 8001334:      	b	0x8001336 <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0x32> @ imm = #-2
 8001336:      	ldr	r0, [sp, #8]
 8001338:      	str	r0, [sp, #24]
 800133a:      	b	0x8001354 <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0x50> @ imm = #22
 800133c:      	movw	r0, #16336
 8001340:      	movt	r0, #2048
 8001344:      	movw	r2, #16372
 8001348:      	movt	r2, #2048
 800134c:      	movs	r1, #33
 800134e:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #8738
 8001352:      	trap
 8001354:      	ldr	r0, [sp, #24]
 8001356:      	cbnz	r0, 0x800135e <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0x5a> @ imm = #4
 8001358:      	b	0x800135a <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0x56> @ imm = #-2
 800135a:      	add	sp, #40
 800135c:      	pop	{r7, pc}
 800135e:      	ldr	r0, [sp, #24]
 8001360:      	cmp.w	r0, #16777216
 8001364:      	blo	0x8001370 <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0x6c> @ imm = #8
 8001366:      	b	0x8001368 <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0x64> @ imm = #-2
 8001368:      	mvn	r0, #4278190080
 800136c:      	str	r0, [sp, #28]
 800136e:      	b	0x8001376 <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0x72> @ imm = #4
 8001370:      	ldr	r0, [sp, #24]
 8001372:      	str	r0, [sp, #28]
 8001374:      	b	0x8001376 <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0x72> @ imm = #-2
 8001376:      	ldr	r0, [sp, #16]
 8001378:      	ldr	r1, [sp, #28]
 800137a:      	bl	0x8002762 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::set_reload::hafeb120135abb1fe> @ imm = #5092
 800137e:      	b	0x8001380 <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0x7c> @ imm = #-2
 8001380:      	ldr	r0, [sp, #16]
 8001382:      	bl	0x8002610 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::clear_current::h61b805346877f5ff> @ imm = #4746
 8001386:      	b	0x8001388 <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0x84> @ imm = #-2
 8001388:      	ldr	r0, [sp, #16]
 800138a:      	bl	0x8002676 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::enable_counter::hee4b300b15d05d9e> @ imm = #4840
 800138e:      	b	0x8001390 <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0x8c> @ imm = #-2
 8001390:      	ldr	r1, [sp, #28]
 8001392:      	ldr	r0, [sp, #24]
 8001394:      	subs	r2, r0, r1
 8001396:      	str	r2, [sp, #4]
 8001398:      	cmp	r0, r1
 800139a:      	blo	0x80013a4 <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0xa0> @ imm = #6
 800139c:      	b	0x800139e <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0x9a> @ imm = #-2
 800139e:      	ldr	r0, [sp, #4]
 80013a0:      	str	r0, [sp, #24]
 80013a2:      	b	0x80013bc <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0xb8> @ imm = #22
 80013a4:      	movw	r0, #16416
 80013a8:      	movt	r0, #2048
 80013ac:      	movw	r2, #16388
 80013b0:      	movt	r2, #2048
 80013b4:      	movs	r1, #33
 80013b6:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #8634
 80013ba:      	trap
 80013bc:      	ldr	r0, [sp, #16]
 80013be:      	bl	0x80026b2 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::has_wrapped::h1097f1f669bff1f2> @ imm = #4848
 80013c2:      	str	r0, [sp]
 80013c4:      	b	0x80013c6 <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0xc2> @ imm = #-2
 80013c6:      	ldr	r0, [sp]
 80013c8:      	lsls	r0, r0, #31
 80013ca:      	cmp	r0, #0
 80013cc:      	beq	0x80013bc <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0xb8> @ imm = #-20
 80013ce:      	b	0x80013d0 <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0xcc> @ imm = #-2
 80013d0:      	ldr	r0, [sp, #16]
 80013d2:      	bl	0x800263a <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::disable_counter::h44893b150bf47ab0> @ imm = #4708
 80013d6:      	b	0x8001354 <<stm32f4xx_hal::delay::Delay as embedded_hal::blocking::delay::DelayUs<u32>>::delay_us::h7cb1ba5ab0c12c60+0x50> @ imm = #-134

080013d8 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd>:
 80013d8:      	push	{r7, lr}
 80013da:      	mov	r7, sp
 80013dc:      	sub	sp, #192
 80013de:      	str	r0, [sp, #52]
 80013e0:      	b	0x80013e2 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0xa> @ imm = #-2
 80013e2:      	movw	r0, #14336
 80013e6:      	movt	r0, #16386
 80013ea:      	str	r0, [sp, #132]
 80013ec:      	ldr	r1, [sp, #52]
 80013ee:      	ldr	r0, [r1]
 80013f0:      	ldr	r1, [r1, #4]
 80013f2:      	movw	r2, #9216
 80013f6:      	movt	r2, #244
 80013fa:      	bl	0x8002dde <core::option::Option<T>::unwrap_or::h57d45cfe6d34e911> @ imm = #6624
 80013fe:      	str	r0, [sp, #64]
 8001400:      	b	0x8001402 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x2a> @ imm = #-2
 8001402:      	ldr	r1, [sp, #52]
 8001404:      	ldr	r0, [r1, #32]
 8001406:      	ldr	r1, [r1, #36]
 8001408:      	ldr	r2, [sp, #64]
 800140a:      	bl	0x8002dde <core::option::Option<T>::unwrap_or::h57d45cfe6d34e911> @ imm = #6608
 800140e:      	str	r0, [sp, #68]
 8001410:      	b	0x8001412 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x3a> @ imm = #-2
 8001412:      	ldr	r0, [sp, #68]
 8001414:      	str	r0, [sp, #48]
 8001416:      	cbz	r0, 0x8001436 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x5e> @ imm = #28
 8001418:      	b	0x800141a <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x42> @ imm = #-2
 800141a:      	ldr	r1, [sp, #48]
 800141c:      	movw	r0, #52224
 8001420:      	movt	r0, #6591
 8001424:      	udiv	r0, r0, r1
 8001428:      	bic	r1, r0, #1
 800142c:      	movs	r0, #8
 800142e:      	bl	0x800304e <core::cmp::min::h2d0ec0d421dc37a2> @ imm = #7196
 8001432:      	str	r0, [sp, #72]
 8001434:      	b	0x800144e <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x76> @ imm = #22
 8001436:      	movw	r0, #16560
 800143a:      	movt	r0, #2048
 800143e:      	movw	r2, #16540
 8001442:      	movt	r2, #2048
 8001446:      	movs	r1, #25
 8001448:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #8488
 800144c:      	trap
 800144e:      	ldr	r1, [sp, #64]
 8001450:      	movw	r0, #33919
 8001454:      	movt	r0, #30
 8001458:      	add	r0, r1
 800145a:      	mov	r2, r0
 800145c:      	str	r2, [sp, #44]
 800145e:      	cmp	r0, r1
 8001460:      	blo	0x8001488 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0xb0> @ imm = #36
 8001462:      	b	0x8001464 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x8c> @ imm = #-2
 8001464:      	ldr	r0, [sp, #44]
 8001466:      	movw	r2, #56963
 800146a:      	movt	r2, #17179
 800146e:      	umull	r1, r0, r0, r2
 8001472:      	lsrs	r1, r0, #19
 8001474:      	str	r1, [sp, #136]
 8001476:      	ldr	r0, [sp, #64]
 8001478:      	umull	r2, r0, r0, r2
 800147c:      	lsrs	r2, r0, #18
 800147e:      	str	r2, [sp, #140]
 8001480:      	add	r0, sp, #80
 8001482:      	bl	0x80027ba <core::ops::range::RangeInclusive<Idx>::new::h559050dc9e880a1d> @ imm = #4916
 8001486:      	b	0x80014a0 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0xc8> @ imm = #22
 8001488:      	movw	r0, #16608
 800148c:      	movt	r0, #2048
 8001490:      	movw	r2, #16588
 8001494:      	movt	r2, #2048
 8001498:      	movs	r1, #28
 800149a:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #8406
 800149e:      	trap
 80014a0:      	add	r0, sp, #64
 80014a2:      	str	r0, [sp, #92]
 80014a4:      	add	r0, sp, #68
 80014a6:      	str	r0, [sp, #96]
 80014a8:      	add	r0, sp, #72
 80014aa:      	str	r0, [sp, #100]
 80014ac:      	add	r0, sp, #80
 80014ae:      	add	r1, sp, #92
 80014b0:      	bl	0x8002cdc <core::iter::traits::iterator::Iterator::min_by_key::h277a6d975814092d> @ imm = #6184
 80014b4:      	str	r0, [sp, #36]
 80014b6:      	str	r1, [sp, #40]
 80014b8:      	b	0x80014ba <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0xe2> @ imm = #-2
 80014ba:      	ldr	r1, [sp, #40]
 80014bc:      	ldr	r0, [sp, #36]
 80014be:      	movw	r2, #16636
 80014c2:      	movt	r2, #2048
 80014c6:      	bl	0x8002dae <core::option::Option<T>::unwrap::h95bb23752b790de8> @ imm = #6372
 80014ca:      	str	r0, [sp, #76]
 80014cc:      	b	0x80014ce <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0xf6> @ imm = #-2
 80014ce:      	ldr	r0, [sp, #64]
 80014d0:      	str	r0, [sp, #28]
 80014d2:      	ldr	r0, [sp, #76]
 80014d4:      	str	r0, [sp, #32]
 80014d6:      	cbz	r0, 0x80014f6 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x11e> @ imm = #28
 80014d8:      	b	0x80014da <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x102> @ imm = #-2
 80014da:      	ldr	r0, [sp, #28]
 80014dc:      	ldr	r1, [sp, #32]
 80014de:      	udiv	r0, r0, r1
 80014e2:      	mov	r1, r0
 80014e4:      	str	r1, [sp, #24]
 80014e6:      	str	r0, [sp, #144]
 80014e8:      	movw	r1, #16959
 80014ec:      	movt	r1, #15
 80014f0:      	cmp	r0, r1
 80014f2:      	bhi	0x8001516 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x13e> @ imm = #32
 80014f4:      	b	0x800150e <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x136> @ imm = #22
 80014f6:      	movw	r0, #16560
 80014fa:      	movt	r0, #2048
 80014fe:      	movw	r2, #16652
 8001502:      	movt	r2, #2048
 8001506:      	movs	r1, #25
 8001508:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #8296
 800150c:      	trap
 800150e:      	movs	r0, #0
 8001510:      	strb	r0, [r7, #-85]
 8001514:      	b	0x800152e <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x156> @ imm = #22
 8001516:      	ldr	r1, [sp, #24]
 8001518:      	movw	r2, #33921
 800151c:      	movt	r2, #30
 8001520:      	movs	r0, #0
 8001522:      	cmp	r1, r2
 8001524:      	it	lo
 8001526:      	movlo	r0, #1
 8001528:      	strb	r0, [r7, #-85]
 800152c:      	b	0x800152e <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x156> @ imm = #-2
 800152e:      	ldrb	r0, [r7, #-85]
 8001532:      	lsls	r0, r0, #31
 8001534:      	cbz	r0, 0x8001546 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x16e> @ imm = #14
 8001536:      	b	0x8001538 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x160> @ imm = #-2
 8001538:      	ldr	r0, [sp, #68]
 800153a:      	ldr	r1, [sp, #72]
 800153c:      	umull	r1, r0, r0, r1
 8001540:      	str	r1, [sp, #20]
 8001542:      	cbnz	r0, 0x8001564 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x18c> @ imm = #30
 8001544:      	b	0x800155e <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x186> @ imm = #22
 8001546:      	movw	r0, #16668
 800154a:      	movt	r0, #2048
 800154e:      	movw	r2, #16728
 8001552:      	movt	r2, #2048
 8001556:      	movs	r1, #60
 8001558:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #8216
 800155c:      	trap
 800155e:      	ldr	r0, [sp, #24]
 8001560:      	cbz	r0, 0x8001598 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x1c0> @ imm = #52
 8001562:      	b	0x800157c <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x1a4> @ imm = #22
 8001564:      	movw	r0, #16336
 8001568:      	movt	r0, #2048
 800156c:      	movw	r2, #16744
 8001570:      	movt	r2, #2048
 8001574:      	movs	r1, #33
 8001576:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #8186
 800157a:      	trap
 800157c:      	ldr	r0, [sp, #20]
 800157e:      	ldr	r1, [sp, #24]
 8001580:      	udiv	r0, r0, r1
 8001584:      	str	r0, [sp, #108]
 8001586:      	ldr	r2, [sp, #72]
 8001588:      	lsrs	r0, r2, #1
 800158a:      	movs	r1, #1
 800158c:      	rsb	r1, r1, r2, lsr #1
 8001590:      	str	r1, [sp, #16]
 8001592:      	cmp	r0, #1
 8001594:      	blo	0x80015c2 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x1ea> @ imm = #42
 8001596:      	b	0x80015b0 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x1d8> @ imm = #22
 8001598:      	movw	r0, #16560
 800159c:      	movt	r0, #2048
 80015a0:      	movw	r2, #16744
 80015a4:      	movt	r2, #2048
 80015a8:      	movs	r1, #25
 80015aa:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #8134
 80015ae:      	trap
 80015b0:      	ldr	r0, [sp, #24]
 80015b2:      	ldr	r1, [sp, #16]
 80015b4:      	str	r1, [sp, #112]
 80015b6:      	ldr	r1, [sp, #108]
 80015b8:      	umull	r1, r0, r0, r1
 80015bc:      	str	r1, [sp, #12]
 80015be:      	cbnz	r0, 0x80015e2 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x20a> @ imm = #32
 80015c0:      	b	0x80015da <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x202> @ imm = #22
 80015c2:      	movw	r0, #16416
 80015c6:      	movt	r0, #2048
 80015ca:      	movw	r2, #16760
 80015ce:      	movt	r2, #2048
 80015d2:      	movs	r1, #33
 80015d4:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #8092
 80015d8:      	trap
 80015da:      	ldr	r0, [sp, #72]
 80015dc:      	str	r0, [sp, #8]
 80015de:      	cbz	r0, 0x8001610 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x238> @ imm = #46
 80015e0:      	b	0x80015fa <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x222> @ imm = #22
 80015e2:      	movw	r0, #16336
 80015e6:      	movt	r0, #2048
 80015ea:      	movw	r2, #16776
 80015ee:      	movt	r2, #2048
 80015f2:      	movs	r1, #33
 80015f4:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #8060
 80015f8:      	trap
 80015fa:      	ldr	r0, [sp, #12]
 80015fc:      	ldr	r1, [sp, #8]
 80015fe:      	udiv	r0, r0, r1
 8001602:      	mov	r1, r0
 8001604:      	str	r1, [sp, #4]
 8001606:      	str	r0, [sp, #148]
 8001608:      	ldr	r1, [sp, #64]
 800160a:      	cmp	r0, r1
 800160c:      	bne	0x8001634 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x25c> @ imm = #36
 800160e:      	b	0x8001628 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x250> @ imm = #22
 8001610:      	movw	r0, #16560
 8001614:      	movt	r0, #2048
 8001618:      	movw	r2, #16776
 800161c:      	movt	r2, #2048
 8001620:      	movs	r1, #25
 8001622:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #8014
 8001626:      	trap
 8001628:      	ldr	r0, [sp, #64]
 800162a:      	movs	r1, #0
 800162c:      	strb.w	r1, [sp, #56]
 8001630:      	str	r0, [sp, #60]
 8001632:      	b	0x8001694 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x2bc> @ imm = #94
 8001634:      	add	r0, sp, #76
 8001636:      	str	r0, [sp, #116]
 8001638:      	add	r0, sp, #108
 800163a:      	str	r0, [sp, #120]
 800163c:      	add	r0, sp, #112
 800163e:      	str	r0, [sp, #124]
 8001640:      	add	r0, sp, #52
 8001642:      	str	r0, [sp, #128]
 8001644:      	movw	r0, #14340
 8001648:      	movt	r0, #16386
 800164c:      	str	r0, [sp]
 800164e:      	str	r0, [sp, #176]
 8001650:      	ldr	r0, [sp, #116]
 8001652:      	ldr	r1, [sp, #120]
 8001654:      	ldr	r2, [sp, #124]
 8001656:      	ldr	r3, [sp, #128]
 8001658:      	str	r3, [sp, #164]
 800165a:      	str	r2, [sp, #160]
 800165c:      	str	r1, [sp, #156]
 800165e:      	str	r0, [sp, #152]
 8001660:      	movw	r0, #12304
 8001664:      	movt	r0, #9216
 8001668:      	str	r0, [sp, #172]
 800166a:      	add	r0, sp, #172
 800166c:      	str	r0, [sp, #168]
 800166e:      	ldr	r1, [sp, #168]
 8001670:      	add	r0, sp, #152
 8001672:      	bl	0x800178e <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h1f35e008aa5b862d> @ imm = #280
 8001676:      	mov	r1, r0
 8001678:      	ldr	r0, [sp]
 800167a:      	ldr	r1, [r1]
 800167c:      	str	r0, [sp, #180]
 800167e:      	str	r1, [sp, #184]
 8001680:      	str	r0, [sp, #188]
 8001682:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #7868
 8001686:      	b	0x8001688 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x2b0> @ imm = #-2
 8001688:      	ldr	r0, [sp, #4]
 800168a:      	movs	r1, #1
 800168c:      	strb.w	r1, [sp, #56]
 8001690:      	str	r0, [sp, #60]
 8001692:      	b	0x8001694 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd+0x2bc> @ imm = #-2
 8001694:      	ldrb.w	r0, [sp, #56]
 8001698:      	ldr	r1, [sp, #60]
 800169a:      	add	sp, #192
 800169c:      	pop	{r7, pc}

0800169e <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h56d422c1601df1b5>:
 800169e:      	push	{r7, lr}
 80016a0:      	mov	r7, sp
 80016a2:      	sub	sp, #48
 80016a4:      	str	r0, [sp, #24]
 80016a6:      	str	r0, [sp, #32]
 80016a8:      	str	r1, [sp, #36]
 80016aa:      	ldr	r0, [r0]
 80016ac:      	ldr	r0, [r0]
 80016ae:      	bl	0x80032e0 <<u32 as core::ops::arith::Div<&u32>>::div::he3cbbf6d2a47f743> @ imm = #7214
 80016b2:      	mov	r1, r0
 80016b4:      	str	r1, [sp, #28]
 80016b6:      	str	r0, [sp, #40]
 80016b8:      	b	0x80016ba <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h56d422c1601df1b5+0x1c> @ imm = #-2
 80016ba:      	ldr	r1, [sp, #24]
 80016bc:      	ldr	r0, [r1, #4]
 80016be:      	ldr	r1, [r1, #8]
 80016c0:      	ldr	r0, [r0]
 80016c2:      	ldr	r1, [r1]
 80016c4:      	umull	r1, r0, r0, r1
 80016c8:      	str	r1, [sp, #20]
 80016ca:      	cbnz	r0, 0x80016d4 <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h56d422c1601df1b5+0x36> @ imm = #6
 80016cc:      	b	0x80016ce <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h56d422c1601df1b5+0x30> @ imm = #-2
 80016ce:      	ldr	r0, [sp, #28]
 80016d0:      	cbz	r0, 0x8001708 <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h56d422c1601df1b5+0x6a> @ imm = #52
 80016d2:      	b	0x80016ec <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h56d422c1601df1b5+0x4e> @ imm = #22
 80016d4:      	movw	r0, #16336
 80016d8:      	movt	r0, #2048
 80016dc:      	movw	r2, #16792
 80016e0:      	movt	r2, #2048
 80016e4:      	movs	r1, #33
 80016e6:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #7818
 80016ea:      	trap
 80016ec:      	ldr	r0, [sp, #28]
 80016ee:      	ldr	r2, [sp, #24]
 80016f0:      	ldr	r1, [sp, #20]
 80016f2:      	udiv	r1, r1, r0
 80016f6:      	str	r1, [sp, #44]
 80016f8:      	ldr	r2, [r2, #4]
 80016fa:      	ldr	r2, [r2]
 80016fc:      	str	r2, [sp, #12]
 80016fe:      	umull	r1, r0, r0, r1
 8001702:      	str	r1, [sp, #16]
 8001704:      	cbnz	r0, 0x800172c <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h56d422c1601df1b5+0x8e> @ imm = #36
 8001706:      	b	0x8001720 <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h56d422c1601df1b5+0x82> @ imm = #22
 8001708:      	movw	r0, #16560
 800170c:      	movt	r0, #2048
 8001710:      	movw	r2, #16792
 8001714:      	movt	r2, #2048
 8001718:      	movs	r1, #25
 800171a:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #7766
 800171e:      	trap
 8001720:      	ldr	r0, [sp, #24]
 8001722:      	ldr	r0, [r0, #8]
 8001724:      	ldr	r0, [r0]
 8001726:      	str	r0, [sp, #8]
 8001728:      	cbz	r0, 0x8001758 <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h56d422c1601df1b5+0xba> @ imm = #44
 800172a:      	b	0x8001744 <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h56d422c1601df1b5+0xa6> @ imm = #22
 800172c:      	movw	r0, #16336
 8001730:      	movt	r0, #2048
 8001734:      	movw	r2, #16808
 8001738:      	movt	r2, #2048
 800173c:      	movs	r1, #33
 800173e:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #7730
 8001742:      	trap
 8001744:      	ldr	r0, [sp, #12]
 8001746:      	ldr	r1, [sp, #16]
 8001748:      	ldr	r2, [sp, #8]
 800174a:      	udiv	r1, r1, r2
 800174e:      	subs	r2, r0, r1
 8001750:      	str	r2, [sp, #4]
 8001752:      	cmp	r0, r1
 8001754:      	blo	0x8001776 <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h56d422c1601df1b5+0xd8> @ imm = #30
 8001756:      	b	0x8001770 <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h56d422c1601df1b5+0xd2> @ imm = #22
 8001758:      	movw	r0, #16560
 800175c:      	movt	r0, #2048
 8001760:      	movw	r2, #16824
 8001764:      	movt	r2, #2048
 8001768:      	movs	r1, #25
 800176a:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #7686
 800176e:      	trap
 8001770:      	ldr	r0, [sp, #4]
 8001772:      	add	sp, #48
 8001774:      	pop	{r7, pc}
 8001776:      	movw	r0, #16416
 800177a:      	movt	r0, #2048
 800177e:      	movw	r2, #16840
 8001782:      	movt	r2, #2048
 8001786:      	movs	r1, #33
 8001788:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #7656
 800178c:      	trap

0800178e <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h1f35e008aa5b862d>:
 800178e:      	push	{r7, lr}
 8001790:      	mov	r7, sp
 8001792:      	sub	sp, #96
 8001794:      	str	r0, [sp, #20]
 8001796:      	str	r1, [sp, #28]
 8001798:      	str	r1, [sp, #76]
 800179a:      	str	r1, [sp, #72]
 800179c:      	ldr	r0, [sp, #72]
 800179e:      	str	r0, [sp, #24]
 80017a0:      	b	0x80017a2 <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h1f35e008aa5b862d+0x14> @ imm = #-2
 80017a2:      	ldr	r1, [sp, #24]
 80017a4:      	ldr	r0, [sp, #20]
 80017a6:      	ldr	r0, [r0]
 80017a8:      	ldr	r0, [r0]
 80017aa:      	str	r1, [sp, #40]
 80017ac:      	strb	r0, [r7, #-49]
 80017b0:      	ldr	r2, [r1]
 80017b2:      	bic	r2, r2, #63
 80017b6:      	str	r2, [r1]
 80017b8:      	and	r2, r0, #63
 80017bc:      	ldr	r0, [r1]
 80017be:      	orrs	r0, r2
 80017c0:      	str	r0, [r1]
 80017c2:      	b	0x80017c4 <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h1f35e008aa5b862d+0x36> @ imm = #-2
 80017c4:      	ldr	r0, [sp, #24]
 80017c6:      	str	r0, [sp, #84]
 80017c8:      	str	r0, [sp, #80]
 80017ca:      	ldr	r0, [sp, #80]
 80017cc:      	str	r0, [sp, #16]
 80017ce:      	b	0x80017d0 <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h1f35e008aa5b862d+0x42> @ imm = #-2
 80017d0:      	ldr	r1, [sp, #16]
 80017d2:      	ldr	r0, [sp, #20]
 80017d4:      	ldr	r0, [r0, #4]
 80017d6:      	ldr	r2, [r0]
 80017d8:      	str	r1, [sp, #48]
 80017da:      	strh	r2, [r7, #-42]
 80017de:      	ldr	r0, [r1]
 80017e0:      	movw	r3, #32704
 80017e4:      	bics	r0, r3
 80017e6:      	str	r0, [r1]
 80017e8:      	bfc	r2, #9, #23
 80017ec:      	ldr	r0, [r1]
 80017ee:      	orr.w	r0, r0, r2, lsl #6
 80017f2:      	str	r0, [r1]
 80017f4:      	b	0x80017f6 <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h1f35e008aa5b862d+0x68> @ imm = #-2
 80017f6:      	ldr	r0, [sp, #16]
 80017f8:      	str	r0, [sp, #92]
 80017fa:      	str	r0, [sp, #88]
 80017fc:      	ldr	r0, [sp, #88]
 80017fe:      	str	r0, [sp, #12]
 8001800:      	b	0x8001802 <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h1f35e008aa5b862d+0x74> @ imm = #-2
 8001802:      	ldr	r1, [sp, #12]
 8001804:      	ldr	r0, [sp, #20]
 8001806:      	ldr	r0, [r0, #8]
 8001808:      	ldr	r0, [r0]
 800180a:      	str	r1, [sp, #56]
 800180c:      	strb	r0, [r7, #-33]
 8001810:      	ldr	r2, [r1]
 8001812:      	bic	r2, r2, #196608
 8001816:      	str	r2, [r1]
 8001818:      	and	r2, r0, #3
 800181c:      	ldr	r0, [r1]
 800181e:      	orr.w	r0, r0, r2, lsl #16
 8001822:      	str	r0, [r1]
 8001824:      	b	0x8001826 <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h1f35e008aa5b862d+0x98> @ imm = #-2
 8001826:      	ldr	r0, [sp, #12]
 8001828:      	str	r0, [sp, #68]
 800182a:      	str	r0, [sp, #64]
 800182c:      	ldr	r0, [sp, #64]
 800182e:      	str	r0, [sp, #8]
 8001830:      	b	0x8001832 <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h1f35e008aa5b862d+0xa4> @ imm = #-2
 8001832:      	ldr	r0, [sp, #20]
 8001834:      	ldr	r0, [r0, #12]
 8001836:      	ldr	r0, [r0]
 8001838:      	bl	0x8002d8a <core::option::Option<T>::is_some::h0d89005eda2dd870> @ imm = #5454
 800183c:      	str	r0, [sp, #4]
 800183e:      	b	0x8001840 <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h1f35e008aa5b862d+0xb2> @ imm = #-2
 8001840:      	ldr	r1, [sp, #8]
 8001842:      	ldr	r0, [sp, #4]
 8001844:      	str	r1, [sp, #32]
 8001846:      	and	r2, r0, #1
 800184a:      	strb	r2, [r7, #-57]
 800184e:      	ldr	r0, [r1]
 8001850:      	bic	r0, r0, #4194304
 8001854:      	str	r0, [r1]
 8001856:      	ldr	r0, [r1]
 8001858:      	orr.w	r0, r0, r2, lsl #22
 800185c:      	str	r0, [r1]
 800185e:      	b	0x8001860 <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h1f35e008aa5b862d+0xd2> @ imm = #-2
 8001860:      	ldr	r0, [sp, #8]
 8001862:      	add	sp, #96
 8001864:      	pop	{r7, pc}

08001866 <stm32f4xx_hal::rcc::CFGR::flash_setup::h4394d4f213667583>:
 8001866:      	push	{r7, lr}
 8001868:      	mov	r7, sp
 800186a:      	sub	sp, #88
 800186c:      	str	r0, [sp, #16]
 800186e:      	movw	r0, #50048
 8001872:      	movt	r0, #457
 8001876:      	str	r0, [sp, #20]
 8001878:      	b	0x800187a <stm32f4xx_hal::rcc::CFGR::flash_setup::h4394d4f213667583+0x14> @ imm = #-2
 800187a:      	movw	r0, #15360
 800187e:      	movt	r0, #16386
 8001882:      	str	r0, [sp, #12]
 8001884:      	str	r0, [sp, #32]
 8001886:      	add	r1, sp, #16
 8001888:      	str	r1, [sp, #24]
 800188a:      	add	r1, sp, #20
 800188c:      	str	r1, [sp, #28]
 800188e:      	ldr	r2, [sp, #24]
 8001890:      	str	r2, [sp, #8]
 8001892:      	ldr	r1, [sp, #28]
 8001894:      	str	r1, [sp, #4]
 8001896:      	str	r0, [sp, #52]
 8001898:      	str	r2, [sp, #56]
 800189a:      	str	r1, [sp, #60]
 800189c:      	str	r0, [sp, #68]
 800189e:      	str	r0, [sp, #84]
 80018a0:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #7306
 80018a4:      	ldr	r1, [sp, #4]
 80018a6:      	mov	r2, r0
 80018a8:      	ldr	r0, [sp, #8]
 80018aa:      	str	r2, [sp, #64]
 80018ac:      	str	r2, [sp, #44]
 80018ae:      	str	r2, [sp, #48]
 80018b0:      	add	r2, sp, #44
 80018b2:      	str	r2, [sp, #36]
 80018b4:      	add	r2, sp, #48
 80018b6:      	str	r2, [sp, #40]
 80018b8:      	ldr	r2, [sp, #36]
 80018ba:      	ldr	r3, [sp, #40]
 80018bc:      	bl	0x80018d6 <stm32f4xx_hal::rcc::CFGR::flash_setup::{{closure}}::h145d7f22e325218b> @ imm = #22
 80018c0:      	mov	r1, r0
 80018c2:      	ldr	r0, [sp, #12]
 80018c4:      	ldr	r1, [r1]
 80018c6:      	str	r0, [sp, #72]
 80018c8:      	str	r1, [sp, #76]
 80018ca:      	str	r0, [sp, #80]
 80018cc:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #7282
 80018d0:      	b	0x80018d2 <stm32f4xx_hal::rcc::CFGR::flash_setup::h4394d4f213667583+0x6c> @ imm = #-2
 80018d2:      	add	sp, #88
 80018d4:      	pop	{r7, pc}

080018d6 <stm32f4xx_hal::rcc::CFGR::flash_setup::{{closure}}::h145d7f22e325218b>:
 80018d6:      	push	{r7, lr}
 80018d8:      	mov	r7, sp
 80018da:      	sub	sp, #128
 80018dc:      	str	r1, [sp, #24]
 80018de:      	str	r0, [sp, #28]
 80018e0:      	str	r0, [sp, #36]
 80018e2:      	str	r1, [sp, #40]
 80018e4:      	str	r2, [sp, #44]
 80018e6:      	str	r3, [sp, #48]
 80018e8:      	str	r3, [sp, #100]
 80018ea:      	str	r3, [sp, #96]
 80018ec:      	ldr	r0, [sp, #96]
 80018ee:      	str	r0, [sp, #32]
 80018f0:      	b	0x80018f2 <stm32f4xx_hal::rcc::CFGR::flash_setup::{{closure}}::h145d7f22e325218b+0x1c> @ imm = #-2
 80018f2:      	ldr	r0, [sp, #28]
 80018f4:      	ldr	r0, [r0]
 80018f6:      	subs	r1, r0, #1
 80018f8:      	str	r1, [sp, #20]
 80018fa:      	cmp	r0, #1
 80018fc:      	blo	0x800190a <stm32f4xx_hal::rcc::CFGR::flash_setup::{{closure}}::h145d7f22e325218b+0x34> @ imm = #10
 80018fe:      	b	0x8001900 <stm32f4xx_hal::rcc::CFGR::flash_setup::{{closure}}::h145d7f22e325218b+0x2a> @ imm = #-2
 8001900:      	ldr	r0, [sp, #24]
 8001902:      	ldr	r0, [r0]
 8001904:      	str	r0, [sp, #16]
 8001906:      	cbz	r0, 0x8001946 <stm32f4xx_hal::rcc::CFGR::flash_setup::{{closure}}::h145d7f22e325218b+0x70> @ imm = #60
 8001908:      	b	0x8001922 <stm32f4xx_hal::rcc::CFGR::flash_setup::{{closure}}::h145d7f22e325218b+0x4c> @ imm = #22
 800190a:      	movw	r0, #16416
 800190e:      	movt	r0, #2048
 8001912:      	movw	r2, #16856
 8001916:      	movt	r2, #2048
 800191a:      	movs	r1, #33
 800191c:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #7252
 8001920:      	trap
 8001922:      	ldr	r1, [sp, #32]
 8001924:      	ldr	r0, [sp, #20]
 8001926:      	ldr	r2, [sp, #16]
 8001928:      	udiv	r0, r0, r2
 800192c:      	str	r1, [sp, #52]
 800192e:      	strb	r0, [r7, #-69]
 8001932:      	ldr	r2, [r1]
 8001934:      	bic	r2, r2, #7
 8001938:      	str	r2, [r1]
 800193a:      	and	r2, r0, #7
 800193e:      	ldr	r0, [r1]
 8001940:      	orrs	r0, r2
 8001942:      	str	r0, [r1]
 8001944:      	b	0x800195e <stm32f4xx_hal::rcc::CFGR::flash_setup::{{closure}}::h145d7f22e325218b+0x88> @ imm = #22
 8001946:      	movw	r0, #16560
 800194a:      	movt	r0, #2048
 800194e:      	movw	r2, #16872
 8001952:      	movt	r2, #2048
 8001956:      	movs	r1, #25
 8001958:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #7192
 800195c:      	trap
 800195e:      	ldr	r0, [sp, #32]
 8001960:      	str	r0, [sp, #108]
 8001962:      	str	r0, [sp, #104]
 8001964:      	ldr	r0, [sp, #104]
 8001966:      	str	r0, [sp, #12]
 8001968:      	b	0x800196a <stm32f4xx_hal::rcc::CFGR::flash_setup::{{closure}}::h145d7f22e325218b+0x94> @ imm = #-2
 800196a:      	ldr	r1, [sp, #12]
 800196c:      	str	r1, [sp, #60]
 800196e:      	str	r1, [sp, #64]
 8001970:      	movs	r0, #1
 8001972:      	strb	r0, [r7, #-57]
 8001976:      	ldr	r0, [r1]
 8001978:      	bic	r0, r0, #256
 800197c:      	str	r0, [r1]
 800197e:      	ldr	r0, [r1]
 8001980:      	orr	r0, r0, #256
 8001984:      	str	r0, [r1]
 8001986:      	b	0x8001988 <stm32f4xx_hal::rcc::CFGR::flash_setup::{{closure}}::h145d7f22e325218b+0xb2> @ imm = #-2
 8001988:      	ldr	r0, [sp, #12]
 800198a:      	str	r0, [sp, #116]
 800198c:      	str	r0, [sp, #112]
 800198e:      	ldr	r0, [sp, #112]
 8001990:      	str	r0, [sp, #8]
 8001992:      	b	0x8001994 <stm32f4xx_hal::rcc::CFGR::flash_setup::{{closure}}::h145d7f22e325218b+0xbe> @ imm = #-2
 8001994:      	ldr	r1, [sp, #8]
 8001996:      	str	r1, [sp, #72]
 8001998:      	str	r1, [sp, #76]
 800199a:      	movs	r0, #1
 800199c:      	strb	r0, [r7, #-45]
 80019a0:      	ldr	r0, [r1]
 80019a2:      	bic	r0, r0, #512
 80019a6:      	str	r0, [r1]
 80019a8:      	ldr	r0, [r1]
 80019aa:      	orr	r0, r0, #512
 80019ae:      	str	r0, [r1]
 80019b0:      	b	0x80019b2 <stm32f4xx_hal::rcc::CFGR::flash_setup::{{closure}}::h145d7f22e325218b+0xdc> @ imm = #-2
 80019b2:      	ldr	r0, [sp, #8]
 80019b4:      	str	r0, [sp, #124]
 80019b6:      	str	r0, [sp, #120]
 80019b8:      	ldr	r0, [sp, #120]
 80019ba:      	str	r0, [sp, #4]
 80019bc:      	b	0x80019be <stm32f4xx_hal::rcc::CFGR::flash_setup::{{closure}}::h145d7f22e325218b+0xe8> @ imm = #-2
 80019be:      	ldr	r1, [sp, #4]
 80019c0:      	str	r1, [sp, #84]
 80019c2:      	str	r1, [sp, #88]
 80019c4:      	movs	r0, #1
 80019c6:      	strb	r0, [r7, #-33]
 80019ca:      	ldr	r0, [r1]
 80019cc:      	bic	r0, r0, #1024
 80019d0:      	str	r0, [r1]
 80019d2:      	ldr	r0, [r1]
 80019d4:      	orr	r0, r0, #1024
 80019d8:      	str	r0, [r1]
 80019da:      	b	0x80019dc <stm32f4xx_hal::rcc::CFGR::flash_setup::{{closure}}::h145d7f22e325218b+0x106> @ imm = #-2
 80019dc:      	ldr	r0, [sp, #4]
 80019de:      	add	sp, #128
 80019e0:      	pop	{r7, pc}

080019e2 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6>:
 80019e2:      	push	{r4, r5, r6, r7, lr}
 80019e4:      	add	r7, sp, #12
 80019e6:      	str	r11, [sp, #-4]!
 80019ea:      	sub.w	sp, sp, #512
 80019ee:      	str	r1, [sp, #120]
 80019f0:      	str	r0, [sp, #124]
 80019f2:      	b	0x80019f4 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x12> @ imm = #-2
 80019f4:      	ldr	r0, [sp, #120]
 80019f6:      	movw	r1, #14336
 80019fa:      	movt	r1, #16386
 80019fe:      	str	r1, [sp, #240]
 8001a00:      	bl	0x80013d8 <stm32f4xx_hal::rcc::CFGR::pll_setup::hcc2adb178d618bdd> @ imm = #-1580
 8001a04:      	str	r0, [sp, #112]
 8001a06:      	str	r1, [sp, #116]
 8001a08:      	b	0x8001a0a <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x28> @ imm = #-2
 8001a0a:      	ldr	r0, [sp, #116]
 8001a0c:      	ldr	r1, [sp, #112]
 8001a0e:      	and	r1, r1, #1
 8001a12:      	strb.w	r1, [sp, #128]
 8001a16:      	str	r0, [sp, #244]
 8001a18:      	movw	r0, #13824
 8001a1c:      	movt	r0, #366
 8001a20:      	str	r0, [sp, #248]
 8001a22:      	movw	r0, #31232
 8001a26:      	movt	r0, #2563
 8001a2a:      	str	r0, [sp, #252]
 8001a2c:      	ldrb.w	r0, [sp, #128]
 8001a30:      	lsls	r0, r0, #31
 8001a32:      	cbz	r0, 0x8001a46 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x64> @ imm = #16
 8001a34:      	b	0x8001a36 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x54> @ imm = #-2
 8001a36:      	ldr	r0, [sp, #116]
 8001a38:      	movw	r1, #31233
 8001a3c:      	movt	r1, #2563
 8001a40:      	cmp	r0, r1
 8001a42:      	blo	0x8001a60 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x7e> @ imm = #26
 8001a44:      	b	0x8001a58 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x76> @ imm = #16
 8001a46:      	movs	r0, #1
 8001a48:      	strb.w	r0, [sp, #129]
 8001a4c:      	b	0x8001a4e <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x6c> @ imm = #-2
 8001a4e:      	ldrb.w	r0, [sp, #129]
 8001a52:      	lsls	r0, r0, #31
 8001a54:      	cbz	r0, 0x8001a96 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0xb4> @ imm = #62
 8001a56:      	b	0x8001a82 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0xa0> @ imm = #40
 8001a58:      	movs	r0, #0
 8001a5a:      	strb.w	r0, [sp, #130]
 8001a5e:      	b	0x8001a78 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x96> @ imm = #22
 8001a60:      	ldr	r1, [sp, #116]
 8001a62:      	movw	r2, #13823
 8001a66:      	movt	r2, #366
 8001a6a:      	movs	r0, #0
 8001a6c:      	cmp	r1, r2
 8001a6e:      	it	hi
 8001a70:      	movhi	r0, #1
 8001a72:      	strb.w	r0, [sp, #130]
 8001a76:      	b	0x8001a78 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x96> @ imm = #-2
 8001a78:      	ldrb.w	r0, [sp, #130]
 8001a7c:      	strb.w	r0, [sp, #129]
 8001a80:      	b	0x8001a4e <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x6c> @ imm = #-54
 8001a82:      	ldr	r2, [sp, #116]
 8001a84:      	ldr	r1, [sp, #120]
 8001a86:      	ldr	r0, [r1, #8]
 8001a88:      	ldr	r1, [r1, #12]
 8001a8a:      	bl	0x8002dde <core::option::Option<T>::unwrap_or::h57d45cfe6d34e911> @ imm = #4944
 8001a8e:      	mov	r1, r0
 8001a90:      	str	r1, [sp, #108]
 8001a92:      	str	r0, [sp, #256]
 8001a94:      	b	0x8001aae <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0xcc> @ imm = #22
 8001a96:      	movw	r0, #16888
 8001a9a:      	movt	r0, #2048
 8001a9e:      	movw	r2, #16964
 8001aa2:      	movt	r2, #2048
 8001aa6:      	movs	r1, #74
 8001aa8:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #6856
 8001aac:      	trap
 8001aae:      	ldr	r1, [sp, #116]
 8001ab0:      	ldr	r0, [sp, #108]
 8001ab2:      	add	r0, r1
 8001ab4:      	mov	r2, r0
 8001ab6:      	str	r2, [sp, #104]
 8001ab8:      	cmp	r0, r1
 8001aba:      	blo	0x8001aca <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0xe8> @ imm = #12
 8001abc:      	b	0x8001abe <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0xdc> @ imm = #-2
 8001abe:      	ldr	r0, [sp, #104]
 8001ac0:      	subs	r1, r0, #1
 8001ac2:      	str	r1, [sp, #100]
 8001ac4:      	cmp	r0, #1
 8001ac6:      	blo	0x8001ae8 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x106> @ imm = #30
 8001ac8:      	b	0x8001ae2 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x100> @ imm = #22
 8001aca:      	movw	r0, #16608
 8001ace:      	movt	r0, #2048
 8001ad2:      	movw	r2, #16980
 8001ad6:      	movt	r2, #2048
 8001ada:      	movs	r1, #28
 8001adc:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #6804
 8001ae0:      	trap
 8001ae2:      	ldr	r0, [sp, #108]
 8001ae4:      	cbz	r0, 0x8001b20 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x13e> @ imm = #56
 8001ae6:      	b	0x8001b00 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x11e> @ imm = #22
 8001ae8:      	movw	r0, #16416
 8001aec:      	movt	r0, #2048
 8001af0:      	movw	r2, #16996
 8001af4:      	movt	r2, #2048
 8001af8:      	movs	r1, #33
 8001afa:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #6774
 8001afe:      	trap
 8001b00:      	ldr	r0, [sp, #100]
 8001b02:      	ldr	r1, [sp, #108]
 8001b04:      	udiv	r0, r0, r1
 8001b08:      	mov	r1, r0
 8001b0a:      	str	r1, [sp, #96]
 8001b0c:      	cbz	r0, 0x8001b40 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x15e> @ imm = #48
 8001b0e:      	b	0x8001b10 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x12e> @ imm = #-2
 8001b10:      	ldr	r0, [sp, #96]
 8001b12:      	cmp	r0, #1
 8001b14:      	beq	0x8001b58 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x176> @ imm = #64
 8001b16:      	b	0x8001b18 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x136> @ imm = #-2
 8001b18:      	ldr	r0, [sp, #96]
 8001b1a:      	cmp	r0, #2
 8001b1c:      	beq	0x8001b64 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x182> @ imm = #68
 8001b1e:      	b	0x8001b38 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x156> @ imm = #22
 8001b20:      	movw	r0, #16560
 8001b24:      	movt	r0, #2048
 8001b28:      	movw	r2, #16996
 8001b2c:      	movt	r2, #2048
 8001b30:      	movs	r1, #25
 8001b32:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #6718
 8001b36:      	trap
 8001b38:      	ldr	r0, [sp, #96]
 8001b3a:      	cmp	r0, #2
 8001b3c:      	bhi	0x8001b78 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x196> @ imm = #56
 8001b3e:      	b	0x8001b70 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x18e> @ imm = #46
 8001b40:      	movw	r0, #17228
 8001b44:      	movt	r0, #2048
 8001b48:      	movw	r2, #17300
 8001b4c:      	movt	r2, #2048
 8001b50:      	movs	r1, #40
 8001b52:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #6686
 8001b56:      	trap
 8001b58:      	movs	r0, #0
 8001b5a:      	strb.w	r0, [sp, #132]
 8001b5e:      	movs	r0, #1
 8001b60:      	str	r0, [sp, #136]
 8001b62:      	b	0x8001b8c <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1aa> @ imm = #38
 8001b64:      	movs	r0, #1
 8001b66:      	strb.w	r0, [sp, #132]
 8001b6a:      	movs	r0, #2
 8001b6c:      	str	r0, [sp, #136]
 8001b6e:      	b	0x8001b8c <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1aa> @ imm = #26
 8001b70:      	ldr	r0, [sp, #96]
 8001b72:      	cmp	r0, #5
 8001b74:      	bhi	0x8001ba8 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1c6> @ imm = #48
 8001b76:      	b	0x8001ba0 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1be> @ imm = #38
 8001b78:      	ldr	r0, [sp, #96]
 8001b7a:      	cmp	r0, #5
 8001b7c:      	bhi	0x8001b70 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x18e> @ imm = #-16
 8001b7e:      	b	0x8001b80 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x19e> @ imm = #-2
 8001b80:      	movs	r0, #2
 8001b82:      	strb.w	r0, [sp, #132]
 8001b86:      	movs	r0, #4
 8001b88:      	str	r0, [sp, #136]
 8001b8a:      	b	0x8001b8c <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1aa> @ imm = #-2
 8001b8c:      	ldrb.w	r0, [sp, #132]
 8001b90:      	strb.w	r0, [sp, #131]
 8001b94:      	ldr	r0, [sp, #136]
 8001b96:      	str	r0, [sp, #92]
 8001b98:      	str	r0, [sp, #260]
 8001b9a:      	cmp	r0, #0
 8001b9c:      	beq	0x8001c7a <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x298> @ imm = #218
 8001b9e:      	b	0x8001c36 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x254> @ imm = #148
 8001ba0:      	ldr	r0, [sp, #96]
 8001ba2:      	cmp	r0, #11
 8001ba4:      	bhi	0x8001bc4 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1e2> @ imm = #28
 8001ba6:      	b	0x8001bbc <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1da> @ imm = #18
 8001ba8:      	ldr	r0, [sp, #96]
 8001baa:      	cmp	r0, #11
 8001bac:      	bhi	0x8001ba0 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1be> @ imm = #-16
 8001bae:      	b	0x8001bb0 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1ce> @ imm = #-2
 8001bb0:      	movs	r0, #3
 8001bb2:      	strb.w	r0, [sp, #132]
 8001bb6:      	movs	r0, #8
 8001bb8:      	str	r0, [sp, #136]
 8001bba:      	b	0x8001b8c <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1aa> @ imm = #-50
 8001bbc:      	ldr	r0, [sp, #96]
 8001bbe:      	cmp	r0, #39
 8001bc0:      	bhi	0x8001be0 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1fe> @ imm = #28
 8001bc2:      	b	0x8001bd8 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1f6> @ imm = #18
 8001bc4:      	ldr	r0, [sp, #96]
 8001bc6:      	cmp	r0, #39
 8001bc8:      	bhi	0x8001bbc <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1da> @ imm = #-16
 8001bca:      	b	0x8001bcc <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1ea> @ imm = #-2
 8001bcc:      	movs	r0, #4
 8001bce:      	strb.w	r0, [sp, #132]
 8001bd2:      	movs	r0, #16
 8001bd4:      	str	r0, [sp, #136]
 8001bd6:      	b	0x8001b8c <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1aa> @ imm = #-78
 8001bd8:      	ldr	r0, [sp, #96]
 8001bda:      	cmp	r0, #95
 8001bdc:      	bhi	0x8001bfc <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x21a> @ imm = #28
 8001bde:      	b	0x8001bf4 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x212> @ imm = #18
 8001be0:      	ldr	r0, [sp, #96]
 8001be2:      	cmp	r0, #95
 8001be4:      	bhi	0x8001bd8 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1f6> @ imm = #-16
 8001be6:      	b	0x8001be8 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x206> @ imm = #-2
 8001be8:      	movs	r0, #5
 8001bea:      	strb.w	r0, [sp, #132]
 8001bee:      	movs	r0, #64
 8001bf0:      	str	r0, [sp, #136]
 8001bf2:      	b	0x8001b8c <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1aa> @ imm = #-106
 8001bf4:      	ldr	r0, [sp, #96]
 8001bf6:      	cmp	r0, #191
 8001bf8:      	bhi	0x8001c1e <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x23c> @ imm = #34
 8001bfa:      	b	0x8001c10 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x22e> @ imm = #18
 8001bfc:      	ldr	r0, [sp, #96]
 8001bfe:      	cmp	r0, #191
 8001c00:      	bhi	0x8001bf4 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x212> @ imm = #-16
 8001c02:      	b	0x8001c04 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x222> @ imm = #-2
 8001c04:      	movs	r0, #6
 8001c06:      	strb.w	r0, [sp, #132]
 8001c0a:      	movs	r0, #128
 8001c0c:      	str	r0, [sp, #136]
 8001c0e:      	b	0x8001b8c <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1aa> @ imm = #-134
 8001c10:      	movs	r0, #8
 8001c12:      	strb.w	r0, [sp, #132]
 8001c16:      	mov.w	r0, #512
 8001c1a:      	str	r0, [sp, #136]
 8001c1c:      	b	0x8001b8c <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1aa> @ imm = #-148
 8001c1e:      	ldr	r0, [sp, #96]
 8001c20:      	lsrs	r0, r0, #7
 8001c22:      	cmp	r0, #2
 8001c24:      	bhi	0x8001c10 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x22e> @ imm = #-24
 8001c26:      	b	0x8001c28 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x246> @ imm = #-2
 8001c28:      	movs	r0, #7
 8001c2a:      	strb.w	r0, [sp, #132]
 8001c2e:      	mov.w	r0, #256
 8001c32:      	str	r0, [sp, #136]
 8001c34:      	b	0x8001b8c <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x1aa> @ imm = #-172
 8001c36:      	ldr	r1, [sp, #120]
 8001c38:      	ldr	r0, [sp, #116]
 8001c3a:      	ldr	r2, [sp, #92]
 8001c3c:      	udiv	r0, r0, r2
 8001c40:      	str	r0, [sp, #140]
 8001c42:      	movw	r0, #56960
 8001c46:      	movt	r0, #640
 8001c4a:      	str	r0, [sp, #152]
 8001c4c:      	movw	r0, #48384
 8001c50:      	movt	r0, #1281
 8001c54:      	str	r0, [sp, #156]
 8001c56:      	ldr	r0, [sp, #152]
 8001c58:      	str	r0, [sp, #144]
 8001c5a:      	ldr	r0, [sp, #156]
 8001c5c:      	str	r0, [sp, #148]
 8001c5e:      	ldr	r0, [r1, #16]
 8001c60:      	ldr	r1, [r1, #20]
 8001c62:      	add	r2, sp, #144
 8001c64:      	str	r2, [sp, #160]
 8001c66:      	add	r2, sp, #140
 8001c68:      	str	r2, [sp, #164]
 8001c6a:      	ldr	r2, [sp, #160]
 8001c6c:      	ldr	r3, [sp, #164]
 8001c6e:      	bl	0x8002e24 <core::option::Option<T>::unwrap_or_else::h1158e63276434cd1> @ imm = #4530
 8001c72:      	mov	r1, r0
 8001c74:      	str	r1, [sp, #88]
 8001c76:      	str	r0, [sp, #264]
 8001c78:      	b	0x8001c92 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x2b0> @ imm = #22
 8001c7a:      	movw	r0, #16560
 8001c7e:      	movt	r0, #2048
 8001c82:      	movw	r2, #17012
 8001c86:      	movt	r2, #2048
 8001c8a:      	movs	r1, #25
 8001c8c:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #6372
 8001c90:      	trap
 8001c92:      	ldr	r0, [sp, #88]
 8001c94:      	ldr	r1, [sp, #140]
 8001c96:      	add	r0, r1
 8001c98:      	mov	r2, r0
 8001c9a:      	str	r2, [sp, #84]
 8001c9c:      	cmp	r0, r1
 8001c9e:      	blo	0x8001cae <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x2cc> @ imm = #12
 8001ca0:      	b	0x8001ca2 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x2c0> @ imm = #-2
 8001ca2:      	ldr	r0, [sp, #84]
 8001ca4:      	subs	r1, r0, #1
 8001ca6:      	str	r1, [sp, #80]
 8001ca8:      	cmp	r0, #1
 8001caa:      	blo	0x8001ccc <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x2ea> @ imm = #30
 8001cac:      	b	0x8001cc6 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x2e4> @ imm = #22
 8001cae:      	movw	r0, #16608
 8001cb2:      	movt	r0, #2048
 8001cb6:      	movw	r2, #17028
 8001cba:      	movt	r2, #2048
 8001cbe:      	movs	r1, #28
 8001cc0:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #6320
 8001cc4:      	trap
 8001cc6:      	ldr	r0, [sp, #88]
 8001cc8:      	cbz	r0, 0x8001d04 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x322> @ imm = #56
 8001cca:      	b	0x8001ce4 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x302> @ imm = #22
 8001ccc:      	movw	r0, #16416
 8001cd0:      	movt	r0, #2048
 8001cd4:      	movw	r2, #17044
 8001cd8:      	movt	r2, #2048
 8001cdc:      	movs	r1, #33
 8001cde:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #6290
 8001ce2:      	trap
 8001ce4:      	ldr	r0, [sp, #80]
 8001ce6:      	ldr	r1, [sp, #88]
 8001ce8:      	udiv	r0, r0, r1
 8001cec:      	mov	r1, r0
 8001cee:      	str	r1, [sp, #76]
 8001cf0:      	cbz	r0, 0x8001d24 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x342> @ imm = #48
 8001cf2:      	b	0x8001cf4 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x312> @ imm = #-2
 8001cf4:      	ldr	r0, [sp, #76]
 8001cf6:      	cmp	r0, #1
 8001cf8:      	beq	0x8001d3c <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x35a> @ imm = #64
 8001cfa:      	b	0x8001cfc <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x31a> @ imm = #-2
 8001cfc:      	ldr	r0, [sp, #76]
 8001cfe:      	cmp	r0, #2
 8001d00:      	beq	0x8001d4a <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x368> @ imm = #70
 8001d02:      	b	0x8001d1c <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x33a> @ imm = #22
 8001d04:      	movw	r0, #16560
 8001d08:      	movt	r0, #2048
 8001d0c:      	movw	r2, #17044
 8001d10:      	movt	r2, #2048
 8001d14:      	movs	r1, #25
 8001d16:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #6234
 8001d1a:      	trap
 8001d1c:      	ldr	r0, [sp, #76]
 8001d1e:      	cmp	r0, #2
 8001d20:      	bhi	0x8001d60 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x37e> @ imm = #60
 8001d22:      	b	0x8001d58 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x376> @ imm = #50
 8001d24:      	movw	r0, #17228
 8001d28:      	movt	r0, #2048
 8001d2c:      	movw	r2, #17284
 8001d30:      	movt	r2, #2048
 8001d34:      	movs	r1, #40
 8001d36:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #6202
 8001d3a:      	trap
 8001d3c:      	movs	r0, #0
 8001d3e:      	strb.w	r0, [sp, #172]
 8001d42:      	movs	r0, #1
 8001d44:      	strb.w	r0, [sp, #173]
 8001d48:      	b	0x8001d76 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x394> @ imm = #42
 8001d4a:      	movs	r0, #4
 8001d4c:      	strb.w	r0, [sp, #172]
 8001d50:      	movs	r0, #2
 8001d52:      	strb.w	r0, [sp, #173]
 8001d56:      	b	0x8001d76 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x394> @ imm = #28
 8001d58:      	ldr	r0, [sp, #76]
 8001d5a:      	cmp	r0, #5
 8001d5c:      	bhi	0x8001da4 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x3c2> @ imm = #68
 8001d5e:      	b	0x8001d96 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x3b4> @ imm = #52
 8001d60:      	ldr	r0, [sp, #76]
 8001d62:      	cmp	r0, #5
 8001d64:      	bhi	0x8001d58 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x376> @ imm = #-16
 8001d66:      	b	0x8001d68 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x386> @ imm = #-2
 8001d68:      	movs	r0, #5
 8001d6a:      	strb.w	r0, [sp, #172]
 8001d6e:      	movs	r0, #4
 8001d70:      	strb.w	r0, [sp, #173]
 8001d74:      	b	0x8001d76 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x394> @ imm = #-2
 8001d76:      	ldrb.w	r0, [sp, #172]
 8001d7a:      	strb.w	r0, [sp, #171]
 8001d7e:      	ldrb.w	r0, [sp, #173]
 8001d82:      	mov	r1, r0
 8001d84:      	str	r1, [sp, #64]
 8001d86:      	strb.w	r0, [sp, #271]
 8001d8a:      	ldr	r1, [sp, #140]
 8001d8c:      	str	r1, [sp, #68]
 8001d8e:      	bl	0x8002f84 <core::convert::num::<impl core::convert::From<u8> for u32>::from::he8b08c584ad136ba> @ imm = #4594
 8001d92:      	str	r0, [sp, #72]
 8001d94:      	b	0x8001dba <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x3d8> @ imm = #34
 8001d96:      	movs	r0, #7
 8001d98:      	strb.w	r0, [sp, #172]
 8001d9c:      	movs	r0, #16
 8001d9e:      	strb.w	r0, [sp, #173]
 8001da2:      	b	0x8001d76 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x394> @ imm = #-48
 8001da4:      	ldr	r0, [sp, #76]
 8001da6:      	cmp	r0, #11
 8001da8:      	bhi	0x8001d96 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x3b4> @ imm = #-22
 8001daa:      	b	0x8001dac <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x3ca> @ imm = #-2
 8001dac:      	movs	r0, #6
 8001dae:      	strb.w	r0, [sp, #172]
 8001db2:      	movs	r0, #8
 8001db4:      	strb.w	r0, [sp, #173]
 8001db8:      	b	0x8001d76 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x394> @ imm = #-70
 8001dba:      	ldr	r0, [sp, #72]
 8001dbc:      	cbz	r0, 0x8001dd6 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x3f4> @ imm = #22
 8001dbe:      	b	0x8001dc0 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x3de> @ imm = #-2
 8001dc0:      	ldr	r0, [sp, #68]
 8001dc2:      	ldr	r1, [sp, #72]
 8001dc4:      	udiv	r0, r0, r1
 8001dc8:      	mov	r1, r0
 8001dca:      	str	r1, [sp, #60]
 8001dcc:      	str	r0, [sp, #272]
 8001dce:      	ldr	r1, [sp, #144]
 8001dd0:      	cmp	r0, r1
 8001dd2:      	bhi	0x8001e0c <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x42a> @ imm = #54
 8001dd4:      	b	0x8001dee <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x40c> @ imm = #22
 8001dd6:      	movw	r0, #16560
 8001dda:      	movt	r0, #2048
 8001dde:      	movw	r2, #17060
 8001de2:      	movt	r2, #2048
 8001de6:      	movs	r1, #25
 8001de8:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #6024
 8001dec:      	trap
 8001dee:      	ldr	r1, [sp, #120]
 8001df0:      	ldr	r0, [r1, #24]
 8001df2:      	ldr	r1, [r1, #28]
 8001df4:      	add	r2, sp, #148
 8001df6:      	str	r2, [sp, #176]
 8001df8:      	add	r2, sp, #140
 8001dfa:      	str	r2, [sp, #180]
 8001dfc:      	ldr	r2, [sp, #176]
 8001dfe:      	ldr	r3, [sp, #180]
 8001e00:      	bl	0x8002e7a <core::option::Option<T>::unwrap_or_else::hf68f3eb960d12950> @ imm = #4214
 8001e04:      	mov	r1, r0
 8001e06:      	str	r1, [sp, #56]
 8001e08:      	str	r0, [sp, #276]
 8001e0a:      	b	0x8001e24 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x442> @ imm = #22
 8001e0c:      	movw	r0, #17076
 8001e10:      	movt	r0, #2048
 8001e14:      	movw	r2, #17112
 8001e18:      	movt	r2, #2048
 8001e1c:      	movs	r1, #36
 8001e1e:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #5970
 8001e22:      	trap
 8001e24:      	ldr	r0, [sp, #56]
 8001e26:      	ldr	r1, [sp, #140]
 8001e28:      	add	r0, r1
 8001e2a:      	mov	r2, r0
 8001e2c:      	str	r2, [sp, #52]
 8001e2e:      	cmp	r0, r1
 8001e30:      	blo	0x8001e40 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x45e> @ imm = #12
 8001e32:      	b	0x8001e34 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x452> @ imm = #-2
 8001e34:      	ldr	r0, [sp, #52]
 8001e36:      	subs	r1, r0, #1
 8001e38:      	str	r1, [sp, #48]
 8001e3a:      	cmp	r0, #1
 8001e3c:      	blo	0x8001e5e <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x47c> @ imm = #30
 8001e3e:      	b	0x8001e58 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x476> @ imm = #22
 8001e40:      	movw	r0, #16608
 8001e44:      	movt	r0, #2048
 8001e48:      	movw	r2, #17128
 8001e4c:      	movt	r2, #2048
 8001e50:      	movs	r1, #28
 8001e52:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #5918
 8001e56:      	trap
 8001e58:      	ldr	r0, [sp, #56]
 8001e5a:      	cbz	r0, 0x8001e96 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x4b4> @ imm = #56
 8001e5c:      	b	0x8001e76 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x494> @ imm = #22
 8001e5e:      	movw	r0, #16416
 8001e62:      	movt	r0, #2048
 8001e66:      	movw	r2, #17144
 8001e6a:      	movt	r2, #2048
 8001e6e:      	movs	r1, #33
 8001e70:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #5888
 8001e74:      	trap
 8001e76:      	ldr	r0, [sp, #48]
 8001e78:      	ldr	r1, [sp, #56]
 8001e7a:      	udiv	r0, r0, r1
 8001e7e:      	mov	r1, r0
 8001e80:      	str	r1, [sp, #44]
 8001e82:      	cbz	r0, 0x8001eb6 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x4d4> @ imm = #48
 8001e84:      	b	0x8001e86 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x4a4> @ imm = #-2
 8001e86:      	ldr	r0, [sp, #44]
 8001e88:      	cmp	r0, #1
 8001e8a:      	beq	0x8001ece <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x4ec> @ imm = #64
 8001e8c:      	b	0x8001e8e <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x4ac> @ imm = #-2
 8001e8e:      	ldr	r0, [sp, #44]
 8001e90:      	cmp	r0, #2
 8001e92:      	beq	0x8001edc <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x4fa> @ imm = #70
 8001e94:      	b	0x8001eae <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x4cc> @ imm = #22
 8001e96:      	movw	r0, #16560
 8001e9a:      	movt	r0, #2048
 8001e9e:      	movw	r2, #17144
 8001ea2:      	movt	r2, #2048
 8001ea6:      	movs	r1, #25
 8001ea8:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #5832
 8001eac:      	trap
 8001eae:      	ldr	r0, [sp, #44]
 8001eb0:      	cmp	r0, #2
 8001eb2:      	bhi	0x8001ef2 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x510> @ imm = #60
 8001eb4:      	b	0x8001eea <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x508> @ imm = #50
 8001eb6:      	movw	r0, #17228
 8001eba:      	movt	r0, #2048
 8001ebe:      	movw	r2, #17268
 8001ec2:      	movt	r2, #2048
 8001ec6:      	movs	r1, #40
 8001ec8:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #5800
 8001ecc:      	trap
 8001ece:      	movs	r0, #0
 8001ed0:      	strb.w	r0, [sp, #188]
 8001ed4:      	movs	r0, #1
 8001ed6:      	strb.w	r0, [sp, #189]
 8001eda:      	b	0x8001f08 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x526> @ imm = #42
 8001edc:      	movs	r0, #4
 8001ede:      	strb.w	r0, [sp, #188]
 8001ee2:      	movs	r0, #2
 8001ee4:      	strb.w	r0, [sp, #189]
 8001ee8:      	b	0x8001f08 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x526> @ imm = #28
 8001eea:      	ldr	r0, [sp, #44]
 8001eec:      	cmp	r0, #5
 8001eee:      	bhi	0x8001f36 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x554> @ imm = #68
 8001ef0:      	b	0x8001f28 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x546> @ imm = #52
 8001ef2:      	ldr	r0, [sp, #44]
 8001ef4:      	cmp	r0, #5
 8001ef6:      	bhi	0x8001eea <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x508> @ imm = #-16
 8001ef8:      	b	0x8001efa <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x518> @ imm = #-2
 8001efa:      	movs	r0, #5
 8001efc:      	strb.w	r0, [sp, #188]
 8001f00:      	movs	r0, #4
 8001f02:      	strb.w	r0, [sp, #189]
 8001f06:      	b	0x8001f08 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x526> @ imm = #-2
 8001f08:      	ldrb.w	r0, [sp, #188]
 8001f0c:      	strb.w	r0, [sp, #187]
 8001f10:      	ldrb.w	r0, [sp, #189]
 8001f14:      	mov	r1, r0
 8001f16:      	str	r1, [sp, #32]
 8001f18:      	strb	r0, [r7, #-245]
 8001f1c:      	ldr	r1, [sp, #140]
 8001f1e:      	str	r1, [sp, #36]
 8001f20:      	bl	0x8002f84 <core::convert::num::<impl core::convert::From<u8> for u32>::from::he8b08c584ad136ba> @ imm = #4192
 8001f24:      	str	r0, [sp, #40]
 8001f26:      	b	0x8001f4c <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x56a> @ imm = #34
 8001f28:      	movs	r0, #7
 8001f2a:      	strb.w	r0, [sp, #188]
 8001f2e:      	movs	r0, #16
 8001f30:      	strb.w	r0, [sp, #189]
 8001f34:      	b	0x8001f08 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x526> @ imm = #-48
 8001f36:      	ldr	r0, [sp, #44]
 8001f38:      	cmp	r0, #11
 8001f3a:      	bhi	0x8001f28 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x546> @ imm = #-22
 8001f3c:      	b	0x8001f3e <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x55c> @ imm = #-2
 8001f3e:      	movs	r0, #6
 8001f40:      	strb.w	r0, [sp, #188]
 8001f44:      	movs	r0, #8
 8001f46:      	strb.w	r0, [sp, #189]
 8001f4a:      	b	0x8001f08 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x526> @ imm = #-70
 8001f4c:      	ldr	r0, [sp, #40]
 8001f4e:      	cbz	r0, 0x8001f68 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x586> @ imm = #22
 8001f50:      	b	0x8001f52 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x570> @ imm = #-2
 8001f52:      	ldr	r0, [sp, #36]
 8001f54:      	ldr	r1, [sp, #40]
 8001f56:      	udiv	r0, r0, r1
 8001f5a:      	mov	r1, r0
 8001f5c:      	str	r1, [sp, #28]
 8001f5e:      	str	r0, [sp, #284]
 8001f60:      	ldr	r1, [sp, #148]
 8001f62:      	cmp	r0, r1
 8001f64:      	bhi	0x8001f88 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x5a6> @ imm = #32
 8001f66:      	b	0x8001f80 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x59e> @ imm = #22
 8001f68:      	movw	r0, #16560
 8001f6c:      	movt	r0, #2048
 8001f70:      	movw	r2, #17160
 8001f74:      	movt	r2, #2048
 8001f78:      	movs	r1, #25
 8001f7a:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #5622
 8001f7e:      	trap
 8001f80:      	ldr	r0, [sp, #116]
 8001f82:      	bl	0x8001866 <stm32f4xx_hal::rcc::CFGR::flash_setup::h4394d4f213667583> @ imm = #-1824
 8001f86:      	b	0x8001fa0 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x5be> @ imm = #22
 8001f88:      	movw	r0, #17176
 8001f8c:      	movt	r0, #2048
 8001f90:      	movw	r2, #17212
 8001f94:      	movt	r2, #2048
 8001f98:      	movs	r1, #36
 8001f9a:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #5590
 8001f9e:      	trap
 8001fa0:      	ldr	r0, [sp, #120]
 8001fa2:      	bl	0x8002d8a <core::option::Option<T>::is_some::h0d89005eda2dd870> @ imm = #3556
 8001fa6:      	str	r0, [sp, #24]
 8001fa8:      	b	0x8001faa <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x5c8> @ imm = #-2
 8001faa:      	ldr	r0, [sp, #24]
 8001fac:      	lsls	r0, r0, #31
 8001fae:      	cbnz	r0, 0x8001fc0 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x5de> @ imm = #14
 8001fb0:      	b	0x8001fb2 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x5d0> @ imm = #-2
 8001fb2:      	ldrb.w	r0, [sp, #128]
 8001fb6:      	lsls	r0, r0, #31
 8001fb8:      	cmp	r0, #0
 8001fba:      	bne.w	0x80020e4 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x702> @ imm = #294
 8001fbe:      	b	0x800207e <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x69c> @ imm = #188
 8001fc0:      	movw	r0, #14336
 8001fc4:      	movt	r0, #16386
 8001fc8:      	str	r0, [sp, #20]
 8001fca:      	str	r0, [sp, #304]
 8001fcc:      	str	r0, [sp, #312]
 8001fce:      	str	r0, [sp, #328]
 8001fd0:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #5466
 8001fd4:      	str	r0, [sp, #308]
 8001fd6:      	str	r0, [sp, #296]
 8001fd8:      	str	r0, [sp, #300]
 8001fda:      	add	r0, sp, #296
 8001fdc:      	str	r0, [sp, #288]
 8001fde:      	add	r0, sp, #300
 8001fe0:      	str	r0, [sp, #292]
 8001fe2:      	ldr	r0, [sp, #288]
 8001fe4:      	ldr	r1, [sp, #292]
 8001fe6:      	bl	0x8002216 <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::h1024dd2ba200efa5> @ imm = #556
 8001fea:      	mov	r1, r0
 8001fec:      	ldr	r0, [sp, #20]
 8001fee:      	ldr	r1, [r1]
 8001ff0:      	str	r0, [sp, #316]
 8001ff2:      	str	r1, [sp, #320]
 8001ff4:      	str	r0, [sp, #324]
 8001ff6:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #5448
 8001ffa:      	b	0x8001ffc <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x61a> @ imm = #-2
 8001ffc:      	movw	r0, #14336
 8002000:      	movt	r0, #16386
 8002004:      	str	r0, [sp, #396]
 8002006:      	str	r0, [sp, #400]
 8002008:      	str	r0, [sp, #404]
 800200a:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #5408
 800200e:      	str	r0, [sp, #392]
 8002010:      	ldr	r0, [sp, #392]
 8002012:      	str	r0, [sp, #192]
 8002014:      	b	0x8002016 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x634> @ imm = #-2
 8002016:      	add	r0, sp, #192
 8002018:      	str	r0, [sp, #440]
 800201a:      	ldr	r0, [sp, #192]
 800201c:      	ubfx	r0, r0, #17, #1
 8002020:      	strb	r0, [r7, #-81]
 8002024:      	cbnz	r0, 0x8002030 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x64e> @ imm = #8
 8002026:      	b	0x8002028 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x646> @ imm = #-2
 8002028:      	movs	r0, #0
 800202a:      	strb	r0, [r7, #-82]
 800202e:      	b	0x8002038 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x656> @ imm = #6
 8002030:      	movs	r0, #1
 8002032:      	strb	r0, [r7, #-82]
 8002036:      	b	0x8002038 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x656> @ imm = #-2
 8002038:      	ldrb	r0, [r7, #-82]
 800203c:      	strb.w	r0, [sp, #191]
 8002040:      	b	0x8002042 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x660> @ imm = #-2
 8002042:      	add.w	r0, sp, #191
 8002046:      	str	r0, [sp, #412]
 8002048:      	str	r0, [sp, #420]
 800204a:      	ldrb.w	r1, [sp, #191]
 800204e:      	lsls	r0, r1, #31
 8002050:      	cbz	r0, 0x8002058 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x676> @ imm = #4
 8002052:      	b	0x8002054 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x672> @ imm = #-2
 8002054:      	b	0x8002060 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x67e> @ imm = #8
 8002056:      	trap
 8002058:      	movs	r0, #0
 800205a:      	strb	r0, [r7, #-109]
 800205e:      	b	0x8002068 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x686> @ imm = #6
 8002060:      	movs	r0, #1
 8002062:      	strb	r0, [r7, #-109]
 8002066:      	b	0x8002068 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x686> @ imm = #-2
 8002068:      	ldrb	r0, [r7, #-109]
 800206c:      	eor	r0, r0, #1
 8002070:      	str	r0, [sp, #16]
 8002072:      	b	0x8002074 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x692> @ imm = #-2
 8002074:      	ldr	r0, [sp, #16]
 8002076:      	lsls	r0, r0, #31
 8002078:      	cmp	r0, #0
 800207a:      	bne	0x8001ffc <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x61a> @ imm = #-130
 800207c:      	b	0x8001fb2 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x5d0> @ imm = #-206
 800207e:      	ldr	r0, [sp, #120]
 8002080:      	add.w	r1, sp, #187
 8002084:      	str	r1, [sp, #204]
 8002086:      	add.w	r1, sp, #171
 800208a:      	str	r1, [sp, #208]
 800208c:      	add.w	r1, sp, #131
 8002090:      	str	r1, [sp, #212]
 8002092:      	add	r1, sp, #128
 8002094:      	str	r1, [sp, #216]
 8002096:      	str	r0, [sp, #220]
 8002098:      	movw	r0, #14344
 800209c:      	movt	r0, #16386
 80020a0:      	str	r0, [sp, #12]
 80020a2:      	str	r0, [sp, #484]
 80020a4:      	str	r0, [sp, #492]
 80020a6:      	str	r0, [sp, #508]
 80020a8:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #5250
 80020ac:      	mov	r1, r0
 80020ae:      	str	r1, [sp, #488]
 80020b0:      	add	r3, sp, #204
 80020b2:      	add	r0, sp, #448
 80020b4:      	mov	r2, r0
 80020b6:      	ldm.w	r3, {r4, r5, r6, r12, lr}
 80020ba:      	stm.w	r2, {r4, r5, r6, r12, lr}
 80020be:      	str	r1, [sp, #476]
 80020c0:      	str	r1, [sp, #480]
 80020c2:      	add	r1, sp, #476
 80020c4:      	str	r1, [sp, #468]
 80020c6:      	add	r1, sp, #480
 80020c8:      	str	r1, [sp, #472]
 80020ca:      	ldr	r1, [sp, #468]
 80020cc:      	ldr	r2, [sp, #472]
 80020ce:      	bl	0x8002280 <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::hd9dd21906ef68d96> @ imm = #430
 80020d2:      	mov	r1, r0
 80020d4:      	ldr	r0, [sp, #12]
 80020d6:      	ldr	r1, [r1]
 80020d8:      	str	r0, [sp, #496]
 80020da:      	str	r1, [sp, #500]
 80020dc:      	str	r0, [sp, #504]
 80020de:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #5216
 80020e2:      	b	0x80021a2 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x7c0> @ imm = #188
 80020e4:      	movw	r0, #14336
 80020e8:      	movt	r0, #16386
 80020ec:      	str	r0, [sp, #8]
 80020ee:      	str	r0, [sp, #348]
 80020f0:      	str	r0, [sp, #356]
 80020f2:      	str	r0, [sp, #372]
 80020f4:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #5174
 80020f8:      	str	r0, [sp, #352]
 80020fa:      	str	r0, [sp, #340]
 80020fc:      	str	r0, [sp, #344]
 80020fe:      	add	r0, sp, #340
 8002100:      	str	r0, [sp, #332]
 8002102:      	add	r0, sp, #344
 8002104:      	str	r0, [sp, #336]
 8002106:      	ldr	r0, [sp, #332]
 8002108:      	ldr	r1, [sp, #336]
 800210a:      	bl	0x800224a <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::h33a91198e5790dc8> @ imm = #316
 800210e:      	mov	r1, r0
 8002110:      	ldr	r0, [sp, #8]
 8002112:      	ldr	r1, [r1]
 8002114:      	str	r0, [sp, #360]
 8002116:      	str	r1, [sp, #364]
 8002118:      	str	r0, [sp, #368]
 800211a:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #5156
 800211e:      	b	0x8002120 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x73e> @ imm = #-2
 8002120:      	movw	r0, #14336
 8002124:      	movt	r0, #16386
 8002128:      	str	r0, [sp, #380]
 800212a:      	str	r0, [sp, #384]
 800212c:      	str	r0, [sp, #388]
 800212e:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #5116
 8002132:      	str	r0, [sp, #376]
 8002134:      	ldr	r0, [sp, #376]
 8002136:      	str	r0, [sp, #200]
 8002138:      	b	0x800213a <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x758> @ imm = #-2
 800213a:      	add	r0, sp, #200
 800213c:      	str	r0, [sp, #432]
 800213e:      	ldr	r0, [sp, #200]
 8002140:      	ubfx	r0, r0, #25, #1
 8002144:      	strb	r0, [r7, #-89]
 8002148:      	cbnz	r0, 0x8002154 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x772> @ imm = #8
 800214a:      	b	0x800214c <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x76a> @ imm = #-2
 800214c:      	movs	r0, #0
 800214e:      	strb	r0, [r7, #-90]
 8002152:      	b	0x800215c <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x77a> @ imm = #6
 8002154:      	movs	r0, #1
 8002156:      	strb	r0, [r7, #-90]
 800215a:      	b	0x800215c <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x77a> @ imm = #-2
 800215c:      	ldrb	r0, [r7, #-90]
 8002160:      	strb.w	r0, [sp, #199]
 8002164:      	b	0x8002166 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x784> @ imm = #-2
 8002166:      	add.w	r0, sp, #199
 800216a:      	str	r0, [sp, #408]
 800216c:      	str	r0, [sp, #428]
 800216e:      	ldrb.w	r1, [sp, #199]
 8002172:      	lsls	r0, r1, #31
 8002174:      	cbz	r0, 0x800217c <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x79a> @ imm = #4
 8002176:      	b	0x8002178 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x796> @ imm = #-2
 8002178:      	b	0x8002184 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x7a2> @ imm = #8
 800217a:      	trap
 800217c:      	movs	r0, #0
 800217e:      	strb	r0, [r7, #-101]
 8002182:      	b	0x800218c <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x7aa> @ imm = #6
 8002184:      	movs	r0, #1
 8002186:      	strb	r0, [r7, #-101]
 800218a:      	b	0x800218c <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x7aa> @ imm = #-2
 800218c:      	ldrb	r0, [r7, #-101]
 8002190:      	eor	r0, r0, #1
 8002194:      	str	r0, [sp, #4]
 8002196:      	b	0x8002198 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x7b6> @ imm = #-2
 8002198:      	ldr	r0, [sp, #4]
 800219a:      	lsls	r0, r0, #31
 800219c:      	cmp	r0, #0
 800219e:      	bne	0x8002120 <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x73e> @ imm = #-130
 80021a0:      	b	0x800207e <stm32f4xx_hal::rcc::CFGR::freeze::h856fc099d98fadf6+0x69c> @ imm = #-294
 80021a2:      	ldr	r1, [sp, #124]
 80021a4:      	ldr	r0, [sp, #32]
 80021a6:      	ldr	r2, [sp, #64]
 80021a8:      	ldr	r3, [sp, #116]
 80021aa:      	ldr.w	r12, [sp, #28]
 80021ae:      	ldr.w	lr, [sp, #60]
 80021b2:      	ldr	r4, [sp, #140]
 80021b4:      	str	r4, [sp, #224]
 80021b6:      	str.w	lr, [sp, #228]
 80021ba:      	str.w	r12, [sp, #232]
 80021be:      	str	r3, [sp, #236]
 80021c0:      	ldr	r3, [sp, #224]
 80021c2:      	str	r3, [r1]
 80021c4:      	ldr	r3, [sp, #228]
 80021c6:      	str	r3, [r1, #4]
 80021c8:      	ldr	r3, [sp, #232]
 80021ca:      	str	r3, [r1, #8]
 80021cc:      	strb	r2, [r1, #16]
 80021ce:      	strb	r0, [r1, #17]
 80021d0:      	ldr	r0, [sp, #236]
 80021d2:      	str	r0, [r1, #12]
 80021d4:      	add.w	sp, sp, #512
 80021d8:      	ldr	r11, [sp], #4
 80021dc:      	pop	{r4, r5, r6, r7, pc}

080021de <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::h1e470ca97af0f7bb>:
 80021de:      	push	{r7, lr}
 80021e0:      	mov	r7, sp
 80021e2:      	sub	sp, #16
 80021e4:      	str	r0, [sp, #8]
 80021e6:      	str	r1, [sp, #12]
 80021e8:      	ldr	r0, [r0]
 80021ea:      	ldr	r1, [r1]
 80021ec:      	bl	0x800304e <core::cmp::min::h2d0ec0d421dc37a2> @ imm = #3678
 80021f0:      	str	r0, [sp, #4]
 80021f2:      	b	0x80021f4 <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::h1e470ca97af0f7bb+0x16> @ imm = #-2
 80021f4:      	ldr	r0, [sp, #4]
 80021f6:      	add	sp, #16
 80021f8:      	pop	{r7, pc}

080021fa <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::h5b22d4b11b6fe3b7>:
 80021fa:      	push	{r7, lr}
 80021fc:      	mov	r7, sp
 80021fe:      	sub	sp, #16
 8002200:      	str	r0, [sp, #8]
 8002202:      	str	r1, [sp, #12]
 8002204:      	ldr	r0, [r0]
 8002206:      	ldr	r1, [r1]
 8002208:      	bl	0x800304e <core::cmp::min::h2d0ec0d421dc37a2> @ imm = #3650
 800220c:      	str	r0, [sp, #4]
 800220e:      	b	0x8002210 <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::h5b22d4b11b6fe3b7+0x16> @ imm = #-2
 8002210:      	ldr	r0, [sp, #4]
 8002212:      	add	sp, #16
 8002214:      	pop	{r7, pc}

08002216 <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::h1024dd2ba200efa5>:
 8002216:      	sub	sp, #36
 8002218:      	str	r0, [sp, #8]
 800221a:      	str	r1, [sp, #12]
 800221c:      	str	r1, [sp, #32]
 800221e:      	str	r1, [sp, #28]
 8002220:      	ldr	r0, [sp, #28]
 8002222:      	str	r0, [sp]
 8002224:      	b	0x8002226 <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::h1024dd2ba200efa5+0x10> @ imm = #-2
 8002226:      	ldr	r1, [sp]
 8002228:      	str	r1, [sp, #16]
 800222a:      	str	r1, [sp, #20]
 800222c:      	movs	r0, #1
 800222e:      	strb.w	r0, [sp, #27]
 8002232:      	ldr	r0, [r1]
 8002234:      	bic	r0, r0, #65536
 8002238:      	str	r0, [r1]
 800223a:      	ldr	r0, [r1]
 800223c:      	orr	r0, r0, #65536
 8002240:      	str	r0, [r1]
 8002242:      	b	0x8002244 <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::h1024dd2ba200efa5+0x2e> @ imm = #-2
 8002244:      	ldr	r0, [sp]
 8002246:      	add	sp, #36
 8002248:      	bx	lr

0800224a <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::h33a91198e5790dc8>:
 800224a:      	sub	sp, #36
 800224c:      	str	r0, [sp, #8]
 800224e:      	str	r1, [sp, #12]
 8002250:      	str	r1, [sp, #32]
 8002252:      	str	r1, [sp, #28]
 8002254:      	ldr	r0, [sp, #28]
 8002256:      	str	r0, [sp]
 8002258:      	b	0x800225a <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::h33a91198e5790dc8+0x10> @ imm = #-2
 800225a:      	ldr	r1, [sp]
 800225c:      	str	r1, [sp, #16]
 800225e:      	str	r1, [sp, #20]
 8002260:      	movs	r0, #1
 8002262:      	strb.w	r0, [sp, #27]
 8002266:      	ldr	r0, [r1]
 8002268:      	bic	r0, r0, #16777216
 800226c:      	str	r0, [r1]
 800226e:      	ldr	r0, [r1]
 8002270:      	orr	r0, r0, #16777216
 8002274:      	str	r0, [r1]
 8002276:      	b	0x8002278 <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::h33a91198e5790dc8+0x2e> @ imm = #-2
 8002278:      	ldr	r0, [sp]
 800227a:      	add	sp, #36
 800227c:      	bx	lr
 800227e:      	bmi	0x800222a <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::h1024dd2ba200efa5+0x14> @ imm = #-88

08002280 <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::hd9dd21906ef68d96>:
 8002280:      	push	{r7, lr}
 8002282:      	mov	r7, sp
 8002284:      	sub	sp, #136
 8002286:      	str	r0, [sp, #28]
 8002288:      	str	r1, [sp, #40]
 800228a:      	str	r2, [sp, #44]
 800228c:      	str	r2, [sp, #108]
 800228e:      	str	r2, [sp, #104]
 8002290:      	ldr	r0, [sp, #104]
 8002292:      	str	r0, [sp, #32]
 8002294:      	b	0x8002296 <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::hd9dd21906ef68d96+0x16> @ imm = #-2
 8002296:      	ldr	r1, [sp, #32]
 8002298:      	ldr	r0, [sp, #28]
 800229a:      	ldr	r0, [r0]
 800229c:      	ldrb	r0, [r0]
 800229e:      	str	r1, [sp, #48]
 80022a0:      	strb	r0, [r7, #-81]
 80022a4:      	ldr	r2, [r1]
 80022a6:      	bic	r2, r2, #57344
 80022aa:      	str	r2, [r1]
 80022ac:      	and	r2, r0, #7
 80022b0:      	ldr	r0, [r1]
 80022b2:      	orr.w	r0, r0, r2, lsl #13
 80022b6:      	str	r0, [r1]
 80022b8:      	b	0x80022ba <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::hd9dd21906ef68d96+0x3a> @ imm = #-2
 80022ba:      	ldr	r0, [sp, #32]
 80022bc:      	str	r0, [sp, #116]
 80022be:      	str	r0, [sp, #112]
 80022c0:      	ldr	r0, [sp, #112]
 80022c2:      	str	r0, [sp, #24]
 80022c4:      	b	0x80022c6 <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::hd9dd21906ef68d96+0x46> @ imm = #-2
 80022c6:      	ldr	r1, [sp, #24]
 80022c8:      	ldr	r0, [sp, #28]
 80022ca:      	ldr	r0, [r0, #4]
 80022cc:      	ldrb	r0, [r0]
 80022ce:      	str	r1, [sp, #56]
 80022d0:      	strb	r0, [r7, #-74]
 80022d4:      	ldr	r2, [r1]
 80022d6:      	bic	r2, r2, #7168
 80022da:      	str	r2, [r1]
 80022dc:      	and	r2, r0, #7
 80022e0:      	ldr	r0, [r1]
 80022e2:      	orr.w	r0, r0, r2, lsl #10
 80022e6:      	str	r0, [r1]
 80022e8:      	b	0x80022ea <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::hd9dd21906ef68d96+0x6a> @ imm = #-2
 80022ea:      	ldr	r0, [sp, #24]
 80022ec:      	str	r0, [sp, #124]
 80022ee:      	str	r0, [sp, #120]
 80022f0:      	ldr	r0, [sp, #120]
 80022f2:      	str	r0, [sp, #20]
 80022f4:      	b	0x80022f6 <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::hd9dd21906ef68d96+0x76> @ imm = #-2
 80022f6:      	ldr	r0, [sp, #20]
 80022f8:      	ldr	r1, [sp, #28]
 80022fa:      	ldr	r1, [r1, #8]
 80022fc:      	ldrb	r1, [r1]
 80022fe:      	strb	r1, [r7, #-73]
 8002302:      	str	r0, [sp, #64]
 8002304:      	sub.w	r0, r7, #73
 8002308:      	str	r0, [sp, #72]
 800230a:      	ldrb	r0, [r7, #-73]
 800230e:      	str	r0, [sp, #16]
 8002310:      	ldr	r1, [sp, #16]
 8002312:      	tbb	[pc, r1]

08002316 <$d.19>:
 8002316:	06 0a 0e 12	.word	0x120e0a06
 800231a:	16 1a 1e 22	.word	0x221e1a16
 800231e:	26 00		.short	0x0026

08002320 <$t.20>:
 8002320:      	trap
 8002322:      	movs	r0, #0
 8002324:      	strb	r0, [r7, #-65]
 8002328:      	b	0x800236a <$t.20+0x4a>  @ imm = #62
 800232a:      	movs	r0, #8
 800232c:      	strb	r0, [r7, #-65]
 8002330:      	b	0x800236a <$t.20+0x4a>  @ imm = #54
 8002332:      	movs	r0, #9
 8002334:      	strb	r0, [r7, #-65]
 8002338:      	b	0x800236a <$t.20+0x4a>  @ imm = #46
 800233a:      	movs	r0, #10
 800233c:      	strb	r0, [r7, #-65]
 8002340:      	b	0x800236a <$t.20+0x4a>  @ imm = #38
 8002342:      	movs	r0, #11
 8002344:      	strb	r0, [r7, #-65]
 8002348:      	b	0x800236a <$t.20+0x4a>  @ imm = #30
 800234a:      	movs	r0, #12
 800234c:      	strb	r0, [r7, #-65]
 8002350:      	b	0x800236a <$t.20+0x4a>  @ imm = #22
 8002352:      	movs	r0, #13
 8002354:      	strb	r0, [r7, #-65]
 8002358:      	b	0x800236a <$t.20+0x4a>  @ imm = #14
 800235a:      	movs	r0, #14
 800235c:      	strb	r0, [r7, #-65]
 8002360:      	b	0x800236a <$t.20+0x4a>  @ imm = #6
 8002362:      	movs	r0, #15
 8002364:      	strb	r0, [r7, #-65]
 8002368:      	b	0x800236a <$t.20+0x4a>  @ imm = #-2
 800236a:      	ldr	r1, [sp, #20]
 800236c:      	ldrb	r0, [r7, #-65]
 8002370:      	str	r1, [sp, #76]
 8002372:      	strb	r0, [r7, #-54]
 8002376:      	ldr	r2, [r1]
 8002378:      	bic	r2, r2, #240
 800237c:      	str	r2, [r1]
 800237e:      	and	r2, r0, #15
 8002382:      	ldr	r0, [r1]
 8002384:      	orr.w	r0, r0, r2, lsl #4
 8002388:      	str	r0, [r1]
 800238a:      	b	0x800238c <$t.20+0x6c>  @ imm = #-2
 800238c:      	ldr	r0, [sp, #20]
 800238e:      	str	r0, [sp, #132]
 8002390:      	str	r0, [sp, #128]
 8002392:      	ldr	r0, [sp, #128]
 8002394:      	str	r0, [sp, #12]
 8002396:      	b	0x8002398 <$t.20+0x78>  @ imm = #-2
 8002398:      	ldr	r0, [sp, #28]
 800239a:      	ldr	r0, [r0, #12]
 800239c:      	ldrb	r0, [r0]
 800239e:      	lsls	r0, r0, #31
 80023a0:      	cbnz	r0, 0x80023b0 <$t.20+0x90> @ imm = #12
 80023a2:      	b	0x80023a4 <$t.20+0x84>  @ imm = #-2
 80023a4:      	ldr	r0, [sp, #28]
 80023a6:      	ldr	r0, [r0, #16]
 80023a8:      	bl	0x8002d8a <core::option::Option<T>::is_some::h0d89005eda2dd870> @ imm = #2526
 80023ac:      	str	r0, [sp, #8]
 80023ae:      	b	0x800241a <$t.20+0xfa>  @ imm = #104
 80023b0:      	movs	r0, #2
 80023b2:      	strb	r0, [r7, #-97]
 80023b6:      	b	0x80023b8 <$t.20+0x98>  @ imm = #-2
 80023b8:      	ldr	r0, [sp, #12]
 80023ba:      	ldrb	r1, [r7, #-97]
 80023be:      	strb	r1, [r7, #-53]
 80023c2:      	str	r0, [sp, #84]
 80023c4:      	sub.w	r0, r7, #53
 80023c8:      	str	r0, [sp, #92]
 80023ca:      	ldrb	r0, [r7, #-53]
 80023ce:      	mov	r1, r0
 80023d0:      	str	r1, [sp, #4]
 80023d2:      	cbz	r0, 0x80023e2 <$t.20+0xc2> @ imm = #12
 80023d4:      	b	0x80023d6 <$t.20+0xb6>  @ imm = #-2
 80023d6:      	ldr	r0, [sp, #4]
 80023d8:      	cmp	r0, #1
 80023da:      	beq	0x80023ea <$t.20+0xca>  @ imm = #12
 80023dc:      	b	0x80023de <$t.20+0xbe>  @ imm = #-2
 80023de:      	b	0x80023f2 <$t.20+0xd2>  @ imm = #16
 80023e0:      	trap
 80023e2:      	movs	r0, #0
 80023e4:      	strb	r0, [r7, #-45]
 80023e8:      	b	0x80023fa <$t.20+0xda>  @ imm = #14
 80023ea:      	movs	r0, #1
 80023ec:      	strb	r0, [r7, #-45]
 80023f0:      	b	0x80023fa <$t.20+0xda>  @ imm = #6
 80023f2:      	movs	r0, #2
 80023f4:      	strb	r0, [r7, #-45]
 80023f8:      	b	0x80023fa <$t.20+0xda>  @ imm = #-2
 80023fa:      	ldr	r1, [sp, #12]
 80023fc:      	ldrb	r0, [r7, #-45]
 8002400:      	str	r1, [sp, #96]
 8002402:      	strb	r0, [r7, #-33]
 8002406:      	ldr	r2, [r1]
 8002408:      	bic	r2, r2, #3
 800240c:      	str	r2, [r1]
 800240e:      	and	r2, r0, #3
 8002412:      	ldr	r0, [r1]
 8002414:      	orrs	r0, r2
 8002416:      	str	r0, [r1]
 8002418:      	b	0x8002432 <$t.20+0x112> @ imm = #22
 800241a:      	ldr	r0, [sp, #8]
 800241c:      	lsls	r0, r0, #31
 800241e:      	cbnz	r0, 0x800242a <$t.20+0x10a> @ imm = #8
 8002420:      	b	0x8002422 <$t.20+0x102> @ imm = #-2
 8002422:      	movs	r0, #0
 8002424:      	strb	r0, [r7, #-97]
 8002428:      	b	0x80023b8 <$t.20+0x98>  @ imm = #-116
 800242a:      	movs	r0, #1
 800242c:      	strb	r0, [r7, #-97]
 8002430:      	b	0x80023b8 <$t.20+0x98>  @ imm = #-124
 8002432:      	ldr	r0, [sp, #12]
 8002434:      	add	sp, #136
 8002436:      	pop	{r7, pc}

08002438 <stm32f4xx_hal::rcc::Clocks::hclk::hdb6dd802bdb1100c>:
 8002438:      	sub	sp, #4
 800243a:      	str	r0, [sp]
 800243c:      	ldr	r0, [r0]
 800243e:      	add	sp, #4
 8002440:      	bx	lr

08002442 <<u32 as stm32f4xx_hal::time::U32Ext>::mhz::h2cf9daedcd2bad39>:
 8002442:      	sub	sp, #8
 8002444:      	str	r0, [sp, #4]
 8002446:      	str	r0, [sp]
 8002448:      	ldr	r0, [sp]
 800244a:      	add	sp, #8
 800244c:      	bx	lr

0800244e <<stm32f4xx_hal::time::MegaHertz as core::convert::Into<stm32f4xx_hal::time::Hertz>>::into::h9a672a63173b795a>:
 800244e:      	push	{r7, lr}
 8002450:      	mov	r7, sp
 8002452:      	sub	sp, #16
 8002454:      	str	r0, [sp, #12]
 8002456:      	movw	r1, #16960
 800245a:      	movt	r1, #15
 800245e:      	umull	r1, r0, r0, r1
 8002462:      	str	r1, [sp, #4]
 8002464:      	cbnz	r0, 0x8002472 <<stm32f4xx_hal::time::MegaHertz as core::convert::Into<stm32f4xx_hal::time::Hertz>>::into::h9a672a63173b795a+0x24> @ imm = #10
 8002466:      	b	0x8002468 <<stm32f4xx_hal::time::MegaHertz as core::convert::Into<stm32f4xx_hal::time::Hertz>>::into::h9a672a63173b795a+0x1a> @ imm = #-2
 8002468:      	ldr	r0, [sp, #4]
 800246a:      	str	r0, [sp, #8]
 800246c:      	ldr	r0, [sp, #8]
 800246e:      	add	sp, #16
 8002470:      	pop	{r7, pc}
 8002472:      	movw	r0, #16336
 8002476:      	movt	r0, #2048
 800247a:      	movw	r2, #17408
 800247e:      	movt	r2, #2048
 8002482:      	movs	r1, #33
 8002484:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #4332
 8002488:      	trap

0800248a <core::ops::function::impls::<impl core::ops::function::FnOnce<A> for &mut F>::call_once::h3990cb0b1989894f>:
 800248a:      	push	{r7, lr}
 800248c:      	mov	r7, sp
 800248e:      	sub	sp, #16
 8002490:      	str	r1, [sp, #8]
 8002492:      	str	r0, [sp, #12]
 8002494:      	ldr	r1, [sp, #8]
 8002496:      	bl	0x800251e <core::iter::traits::iterator::Iterator::min_by_key::key::{{closure}}::h4e4f0c132851be58> @ imm = #132
 800249a:      	str	r0, [sp]
 800249c:      	str	r1, [sp, #4]
 800249e:      	b	0x80024a0 <core::ops::function::impls::<impl core::ops::function::FnOnce<A> for &mut F>::call_once::h3990cb0b1989894f+0x16> @ imm = #-2
 80024a0:      	ldr	r1, [sp, #4]
 80024a2:      	ldr	r0, [sp]
 80024a4:      	add	sp, #16
 80024a6:      	pop	{r7, pc}

080024a8 <core::ops::function::impls::<impl core::ops::function::FnOnce<A> for &mut F>::call_once::h515d2a4a002361c0>:
 80024a8:      	push	{r7, lr}
 80024aa:      	mov	r7, sp
 80024ac:      	sub	sp, #16
 80024ae:      	str	r1, [sp, #4]
 80024b0:      	str	r2, [sp, #8]
 80024b2:      	str	r0, [sp, #12]
 80024b4:      	ldr	r1, [sp, #4]
 80024b6:      	ldr	r2, [sp, #8]
 80024b8:      	bl	0x8002fc4 <core::ops::function::FnMut::call_mut::h616842c2aa4764b6> @ imm = #2824
 80024bc:      	str	r0, [sp]
 80024be:      	b	0x80024c0 <core::ops::function::impls::<impl core::ops::function::FnOnce<A> for &mut F>::call_once::h515d2a4a002361c0+0x18> @ imm = #-2
 80024c0:      	ldr	r0, [sp]
 80024c2:      	add	sp, #16
 80024c4:      	pop	{r7, pc}

080024c6 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::fold::ok::hf4e1b8f14945ee66>:
 80024c6:      	mov	r3, r1
 80024c8:      	mov	r1, r0
 80024ca:      	ldr	r0, [r3]
 80024cc:      	ldr	r2, [r3, #4]
 80024ce:      	ldr	r3, [r3, #8]
 80024d0:      	str	r3, [r1, #8]
 80024d2:      	str	r2, [r1, #4]
 80024d4:      	str	r0, [r1]
 80024d6:      	bx	lr

080024d8 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::fold::ok::{{closure}}::ha253db7bdfc2d3ad>:
 80024d8:      	push	{r7, lr}
 80024da:      	mov	r7, sp
 80024dc:      	sub	sp, #48
 80024de:      	str	r0, [sp, #32]
 80024e0:      	str	r1, [sp, #36]
 80024e2:      	str	r2, [sp, #40]
 80024e4:      	str	r3, [sp, #44]
 80024e6:      	str	r1, [sp, #20]
 80024e8:      	str	r2, [sp, #24]
 80024ea:      	str	r3, [sp, #28]
 80024ec:      	ldr	r1, [sp, #20]
 80024ee:      	ldr	r2, [sp, #24]
 80024f0:      	ldr	r3, [sp, #28]
 80024f2:      	bl	0x8002866 <core::iter::adapters::map::map_fold::{{closure}}::hf04767f4427db7c8> @ imm = #880
 80024f6:      	str	r0, [sp, #4]
 80024f8:      	str	r1, [sp, #8]
 80024fa:      	b	0x80024fc <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::fold::ok::{{closure}}::ha253db7bdfc2d3ad+0x24> @ imm = #-2
 80024fc:      	ldr	r0, [sp, #8]
 80024fe:      	ldr	r1, [sp, #4]
 8002500:      	str	r1, [sp, #12]
 8002502:      	str	r0, [sp, #16]
 8002504:      	ldr	r0, [sp, #12]
 8002506:      	ldr	r1, [sp, #16]
 8002508:      	add	sp, #48
 800250a:      	pop	{r7, pc}

0800250c <core::iter::traits::iterator::Iterator::min_by_key::key::h16acff92f0d3baf5>:
 800250c:      	mov	r3, r1
 800250e:      	mov	r1, r0
 8002510:      	ldr	r0, [r3]
 8002512:      	ldr	r2, [r3, #4]
 8002514:      	ldr	r3, [r3, #8]
 8002516:      	str	r3, [r1, #8]
 8002518:      	str	r2, [r1, #4]
 800251a:      	str	r0, [r1]
 800251c:      	bx	lr

0800251e <core::iter::traits::iterator::Iterator::min_by_key::key::{{closure}}::h4e4f0c132851be58>:
 800251e:      	push	{r7, lr}
 8002520:      	mov	r7, sp
 8002522:      	sub	sp, #24
 8002524:      	str	r1, [sp, #4]
 8002526:      	str	r0, [sp, #20]
 8002528:      	add	r1, sp, #4
 800252a:      	str	r1, [sp, #16]
 800252c:      	ldr	r1, [sp, #16]
 800252e:      	bl	0x800169e <stm32f4xx_hal::rcc::CFGR::pll_setup::{{closure}}::h56d422c1601df1b5> @ imm = #-3732
 8002532:      	str	r0, [sp]
 8002534:      	b	0x8002536 <core::iter::traits::iterator::Iterator::min_by_key::key::{{closure}}::h4e4f0c132851be58+0x18> @ imm = #-2
 8002536:      	ldr	r1, [sp]
 8002538:      	ldr	r0, [sp, #4]
 800253a:      	str	r1, [sp, #8]
 800253c:      	str	r0, [sp, #12]
 800253e:      	ldr	r0, [sp, #8]
 8002540:      	ldr	r1, [sp, #12]
 8002542:      	add	sp, #24
 8002544:      	pop	{r7, pc}

08002546 <core::iter::traits::iterator::Iterator::min_by_key::compare::h7d07136396b3b003>:
 8002546:      	push	{r7, lr}
 8002548:      	mov	r7, sp
 800254a:      	sub	sp, #24
 800254c:      	str	r0, [sp, #8]
 800254e:      	str	r1, [sp, #12]
 8002550:      	str	r0, [sp, #16]
 8002552:      	str	r1, [sp, #20]
 8002554:      	bl	0x8003266 <core::cmp::impls::<impl core::cmp::Ord for u32>::cmp::h49476e76852db959> @ imm = #3342
 8002558:      	str	r0, [sp, #4]
 800255a:      	b	0x800255c <core::iter::traits::iterator::Iterator::min_by_key::compare::h7d07136396b3b003+0x16> @ imm = #-2
 800255c:      	ldr	r0, [sp, #4]
 800255e:      	add	sp, #24
 8002560:      	pop	{r7, pc}

08002562 <core::iter::traits::iterator::Iterator::min_by::fold::hfb620da7765474af>:
 8002562:      	sub	sp, #8
 8002564:      	add	sp, #8
 8002566:      	bx	lr

08002568 <core::iter::traits::iterator::Iterator::min_by::fold::{{closure}}::h8a706371a4eb7d84>:
 8002568:      	push	{r7, lr}
 800256a:      	mov	r7, sp
 800256c:      	sub	sp, #48
 800256e:      	str	r3, [sp, #8]
 8002570:      	mov	r3, r2
 8002572:      	ldr	r2, [sp, #8]
 8002574:      	str	r3, [sp, #12]
 8002576:      	mov	r3, r1
 8002578:      	ldr	r1, [sp, #12]
 800257a:      	str	r3, [sp, #16]
 800257c:      	mov	r12, r0
 800257e:      	ldr	r0, [sp, #16]
 8002580:      	ldr	r3, [r7, #8]
 8002582:      	str.w	r12, [sp, #28]
 8002586:      	str	r0, [sp, #32]
 8002588:      	str	r1, [sp, #36]
 800258a:      	str	r2, [sp, #40]
 800258c:      	str	r3, [sp, #44]
 800258e:      	mov	lr, sp
 8002590:      	str.w	r12, [lr]
 8002594:      	bl	0x80030e2 <core::cmp::min_by::h824bfb20b98acc87> @ imm = #2890
 8002598:      	str	r0, [sp, #20]
 800259a:      	str	r1, [sp, #24]
 800259c:      	b	0x800259e <core::iter::traits::iterator::Iterator::min_by::fold::{{closure}}::h8a706371a4eb7d84+0x36> @ imm = #-2
 800259e:      	ldr	r1, [sp, #24]
 80025a0:      	ldr	r0, [sp, #20]
 80025a2:      	add	sp, #48
 80025a4:      	pop	{r7, pc}

080025a6 <<u32 as core::iter::range::Step>::forward_unchecked::h1bfa225497817242>:
 80025a6:      	sub	sp, #24
 80025a8:      	str	r0, [sp, #4]
 80025aa:      	str	r1, [sp, #8]
 80025ac:      	str	r0, [sp, #12]
 80025ae:      	str	r1, [sp, #16]
 80025b0:      	add	r0, r1
 80025b2:      	str	r0, [sp, #20]
 80025b4:      	ldr	r0, [sp, #20]
 80025b6:      	str	r0, [sp]
 80025b8:      	b	0x80025ba <<u32 as core::iter::range::Step>::forward_unchecked::h1bfa225497817242+0x14> @ imm = #-2
 80025ba:      	ldr	r0, [sp]
 80025bc:      	add	sp, #24
 80025be:      	bx	lr

080025c0 <<stm32f4::stm32f407::RCC as stm32f4xx_hal::rcc::RccExt>::constrain::h2c1de49e9fb68952>:
 80025c0:      	push	{r4, r6, r7, lr}
 80025c2:      	add	r7, sp, #8
 80025c4:      	sub	sp, #84
 80025c6:      	movs	r1, #0
 80025c8:      	str	r1, [sp, #40]
 80025ca:      	str	r1, [sp, #48]
 80025cc:      	str	r1, [sp, #56]
 80025ce:      	str	r1, [sp, #64]
 80025d0:      	str	r1, [sp, #72]
 80025d2:      	ldr	r2, [sp, #40]
 80025d4:      	ldr	r1, [sp, #44]
 80025d6:      	str	r2, [sp]
 80025d8:      	str	r1, [sp, #4]
 80025da:      	ldr	r2, [sp, #48]
 80025dc:      	ldr	r1, [sp, #52]
 80025de:      	str	r2, [sp, #8]
 80025e0:      	str	r1, [sp, #12]
 80025e2:      	ldr	r2, [sp, #56]
 80025e4:      	ldr	r1, [sp, #60]
 80025e6:      	str	r2, [sp, #16]
 80025e8:      	str	r1, [sp, #20]
 80025ea:      	ldr	r2, [sp, #64]
 80025ec:      	ldr	r1, [sp, #68]
 80025ee:      	str	r2, [sp, #24]
 80025f0:      	str	r1, [sp, #28]
 80025f2:      	ldr	r2, [sp, #72]
 80025f4:      	ldr	r1, [sp, #76]
 80025f6:      	str	r2, [sp, #32]
 80025f8:      	str	r1, [sp, #36]
 80025fa:      	mov	r1, sp
 80025fc:      	ldm.w	r1!, {r2, r3, r4, r12, lr}
 8002600:      	stm.w	r0!, {r2, r3, r4, r12, lr}
 8002604:      	ldm.w	r1, {r2, r3, r4, r12, lr}
 8002608:      	stm.w	r0, {r2, r3, r4, r12, lr}
 800260c:      	add	sp, #84
 800260e:      	pop	{r4, r6, r7, pc}

08002610 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::clear_current::h61b805346877f5ff>:
 8002610:      	push	{r7, lr}
 8002612:      	mov	r7, sp
 8002614:      	sub	sp, #32
 8002616:      	str	r0, [sp, #4]
 8002618:      	str	r0, [sp, #24]
 800261a:      	b	0x800261c <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::clear_current::h61b805346877f5ff+0xc> @ imm = #-2
 800261c:      	movw	r0, #57368
 8002620:      	movt	r0, #57344
 8002624:      	str	r0, [sp, #8]
 8002626:      	movs	r1, #0
 8002628:      	str	r1, [sp, #12]
 800262a:      	str	r0, [sp, #16]
 800262c:      	str	r1, [sp, #20]
 800262e:      	str	r0, [sp, #28]
 8002630:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #3854
 8002634:      	b	0x8002636 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::clear_current::h61b805346877f5ff+0x26> @ imm = #-2
 8002636:      	add	sp, #32
 8002638:      	pop	{r7, pc}

0800263a <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::disable_counter::h44893b150bf47ab0>:
 800263a:      	push	{r7, lr}
 800263c:      	mov	r7, sp
 800263e:      	sub	sp, #40
 8002640:      	str	r0, [sp, #4]
 8002642:      	str	r0, [sp, #28]
 8002644:      	b	0x8002646 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::disable_counter::h44893b150bf47ab0+0xc> @ imm = #-2
 8002646:      	movw	r0, #57360
 800264a:      	movt	r0, #57344
 800264e:      	str	r0, [sp]
 8002650:      	str	r0, [sp, #12]
 8002652:      	str	r0, [sp, #16]
 8002654:      	str	r0, [sp, #36]
 8002656:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #3796
 800265a:      	str	r0, [sp, #8]
 800265c:      	ldr	r0, [sp, #8]
 800265e:      	bl	0x8003006 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::disable_counter::{{closure}}::h226e898701d626d3> @ imm = #2468
 8002662:      	mov	r1, r0
 8002664:      	ldr	r0, [sp]
 8002666:      	str	r0, [sp, #20]
 8002668:      	str	r1, [sp, #24]
 800266a:      	str	r0, [sp, #32]
 800266c:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #3794
 8002670:      	b	0x8002672 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::disable_counter::h44893b150bf47ab0+0x38> @ imm = #-2
 8002672:      	add	sp, #40
 8002674:      	pop	{r7, pc}

08002676 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::enable_counter::hee4b300b15d05d9e>:
 8002676:      	push	{r7, lr}
 8002678:      	mov	r7, sp
 800267a:      	sub	sp, #40
 800267c:      	str	r0, [sp, #4]
 800267e:      	str	r0, [sp, #28]
 8002680:      	b	0x8002682 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::enable_counter::hee4b300b15d05d9e+0xc> @ imm = #-2
 8002682:      	movw	r0, #57360
 8002686:      	movt	r0, #57344
 800268a:      	str	r0, [sp]
 800268c:      	str	r0, [sp, #12]
 800268e:      	str	r0, [sp, #16]
 8002690:      	str	r0, [sp, #36]
 8002692:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #3736
 8002696:      	str	r0, [sp, #8]
 8002698:      	ldr	r0, [sp, #8]
 800269a:      	bl	0x8003012 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::enable_counter::{{closure}}::hd210ceefb2e0d9bd> @ imm = #2420
 800269e:      	mov	r1, r0
 80026a0:      	ldr	r0, [sp]
 80026a2:      	str	r0, [sp, #20]
 80026a4:      	str	r1, [sp, #24]
 80026a6:      	str	r0, [sp, #32]
 80026a8:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #3734
 80026ac:      	b	0x80026ae <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::enable_counter::hee4b300b15d05d9e+0x38> @ imm = #-2
 80026ae:      	add	sp, #40
 80026b0:      	pop	{r7, pc}

080026b2 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::has_wrapped::h1097f1f669bff1f2>:
 80026b2:      	push	{r7, lr}
 80026b4:      	mov	r7, sp
 80026b6:      	sub	sp, #24
 80026b8:      	str	r0, [sp, #4]
 80026ba:      	str	r0, [sp, #16]
 80026bc:      	b	0x80026be <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::has_wrapped::h1097f1f669bff1f2+0xc> @ imm = #-2
 80026be:      	movw	r0, #57360
 80026c2:      	movt	r0, #57344
 80026c6:      	str	r0, [sp, #8]
 80026c8:      	str	r0, [sp, #12]
 80026ca:      	str	r0, [sp, #20]
 80026cc:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #3678
 80026d0:      	str	r0, [sp]
 80026d2:      	b	0x80026d4 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::has_wrapped::h1097f1f669bff1f2+0x22> @ imm = #-2
 80026d4:      	ldr	r0, [sp]
 80026d6:      	ubfx	r0, r0, #16, #1
 80026da:      	add	sp, #24
 80026dc:      	pop	{r7, pc}

080026de <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::set_clock_source::hc486c3aa027da09d>:
 80026de:      	push	{r7, lr}
 80026e0:      	mov	r7, sp
 80026e2:      	sub	sp, #88
 80026e4:      	str	r0, [sp, #12]
 80026e6:      	strb	r1, [r7, #-69]
 80026ea:      	str	r0, [sp, #20]
 80026ec:      	ldrb	r1, [r7, #-69]
 80026f0:      	lsls	r0, r1, #31
 80026f2:      	cbz	r0, 0x80026fa <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::set_clock_source::hc486c3aa027da09d+0x1c> @ imm = #4
 80026f4:      	b	0x80026f6 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::set_clock_source::hc486c3aa027da09d+0x18> @ imm = #-2
 80026f6:      	b	0x8002700 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::set_clock_source::hc486c3aa027da09d+0x22> @ imm = #6
 80026f8:      	trap
 80026fa:      	ldr	r0, [sp, #12]
 80026fc:      	str	r0, [sp, #64]
 80026fe:      	b	0x8002736 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::set_clock_source::hc486c3aa027da09d+0x58> @ imm = #52
 8002700:      	ldr	r0, [sp, #12]
 8002702:      	str	r0, [sp, #68]
 8002704:      	b	0x8002706 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::set_clock_source::hc486c3aa027da09d+0x28> @ imm = #-2
 8002706:      	movw	r0, #57360
 800270a:      	movt	r0, #57344
 800270e:      	str	r0, [sp, #8]
 8002710:      	str	r0, [sp, #48]
 8002712:      	str	r0, [sp, #52]
 8002714:      	str	r0, [sp, #76]
 8002716:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #3604
 800271a:      	str	r0, [sp, #44]
 800271c:      	ldr	r0, [sp, #44]
 800271e:      	bl	0x800301e <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::set_clock_source::{{closure}}::h2a7189eb5b11659b> @ imm = #2300
 8002722:      	mov	r1, r0
 8002724:      	ldr	r0, [sp, #8]
 8002726:      	str	r0, [sp, #56]
 8002728:      	str	r1, [sp, #60]
 800272a:      	str	r0, [sp, #72]
 800272c:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #3602
 8002730:      	b	0x8002732 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::set_clock_source::hc486c3aa027da09d+0x54> @ imm = #-2
 8002732:      	add	sp, #88
 8002734:      	pop	{r7, pc}
 8002736:      	movw	r0, #57360
 800273a:      	movt	r0, #57344
 800273e:      	str	r0, [sp, #4]
 8002740:      	str	r0, [sp, #28]
 8002742:      	str	r0, [sp, #32]
 8002744:      	str	r0, [sp, #84]
 8002746:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #3556
 800274a:      	str	r0, [sp, #24]
 800274c:      	ldr	r0, [sp, #24]
 800274e:      	bl	0x800302a <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::set_clock_source::{{closure}}::hfa9060af99d23a71> @ imm = #2264
 8002752:      	mov	r1, r0
 8002754:      	ldr	r0, [sp, #4]
 8002756:      	str	r0, [sp, #36]
 8002758:      	str	r1, [sp, #40]
 800275a:      	str	r0, [sp, #80]
 800275c:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #3554
 8002760:      	b	0x8002732 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::set_clock_source::hc486c3aa027da09d+0x54> @ imm = #-50

08002762 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::set_reload::hafeb120135abb1fe>:
 8002762:      	push	{r7, lr}
 8002764:      	mov	r7, sp
 8002766:      	sub	sp, #40
 8002768:      	str	r1, [sp, #4]
 800276a:      	str	r0, [sp, #8]
 800276c:      	str	r1, [sp, #12]
 800276e:      	str	r0, [sp, #32]
 8002770:      	b	0x8002772 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::set_reload::hafeb120135abb1fe+0x10> @ imm = #-2
 8002772:      	ldr	r1, [sp, #4]
 8002774:      	movw	r0, #57364
 8002778:      	movt	r0, #57344
 800277c:      	str	r0, [sp, #16]
 800277e:      	str	r1, [sp, #20]
 8002780:      	str	r0, [sp, #24]
 8002782:      	str	r1, [sp, #28]
 8002784:      	str	r0, [sp, #36]
 8002786:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #3512
 800278a:      	b	0x800278c <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::set_reload::hafeb120135abb1fe+0x2a> @ imm = #-2
 800278c:      	add	sp, #40
 800278e:      	pop	{r7, pc}

08002790 <core::mem::replace::h78c2b42c9961b891>:
 8002790:      	push	{r7, lr}
 8002792:      	mov	r7, sp
 8002794:      	sub	sp, #24
 8002796:      	str	r1, [sp]
 8002798:      	str	r0, [sp, #4]
 800279a:      	str	r0, [sp, #12]
 800279c:      	str	r1, [sp, #16]
 800279e:      	bl	0x8003506 <core::ptr::read::hb359dccd529d198c> @ imm = #3428
 80027a2:      	mov	r1, r0
 80027a4:      	str	r1, [sp, #8]
 80027a6:      	str	r0, [sp, #20]
 80027a8:      	b	0x80027aa <core::mem::replace::h78c2b42c9961b891+0x1a> @ imm = #-2
 80027aa:      	ldr	r1, [sp]
 80027ac:      	ldr	r0, [sp, #4]
 80027ae:      	bl	0x8003342 <core::ptr::write::h5648ecb0052572a9> @ imm = #2960
 80027b2:      	b	0x80027b4 <core::mem::replace::h78c2b42c9961b891+0x24> @ imm = #-2
 80027b4:      	ldr	r0, [sp, #8]
 80027b6:      	add	sp, #24
 80027b8:      	pop	{r7, pc}

080027ba <core::ops::range::RangeInclusive<Idx>::new::h559050dc9e880a1d>:
 80027ba:      	sub	sp, #12
 80027bc:      	str	r1, [sp]
 80027be:      	mov	r1, r0
 80027c0:      	ldr	r0, [sp]
 80027c2:      	str	r0, [sp, #4]
 80027c4:      	str	r2, [sp, #8]
 80027c6:      	str	r0, [r1]
 80027c8:      	str	r2, [r1, #4]
 80027ca:      	movs	r0, #0
 80027cc:      	strb	r0, [r1, #8]
 80027ce:      	add	sp, #12
 80027d0:      	bx	lr

080027d2 <core::ops::range::RangeInclusive<Idx>::is_empty::h943243bbfda7c8b1>:
 80027d2:      	push	{r7, lr}
 80027d4:      	mov	r7, sp
 80027d6:      	sub	sp, #16
 80027d8:      	str	r0, [sp, #4]
 80027da:      	str	r0, [sp, #12]
 80027dc:      	ldrb	r0, [r0, #8]
 80027de:      	lsls	r0, r0, #31
 80027e0:      	cbnz	r0, 0x80027f0 <core::ops::range::RangeInclusive<Idx>::is_empty::h943243bbfda7c8b1+0x1e> @ imm = #12
 80027e2:      	b	0x80027e4 <core::ops::range::RangeInclusive<Idx>::is_empty::h943243bbfda7c8b1+0x12> @ imm = #-2
 80027e4:      	ldr	r0, [sp, #4]
 80027e6:      	adds	r1, r0, #4
 80027e8:      	bl	0x800324a <core::cmp::impls::<impl core::cmp::PartialOrd for u32>::le::h012faf4f6315d2b6> @ imm = #2654
 80027ec:      	str	r0, [sp]
 80027ee:      	b	0x8002800 <core::ops::range::RangeInclusive<Idx>::is_empty::h943243bbfda7c8b1+0x2e> @ imm = #14
 80027f0:      	movs	r0, #1
 80027f2:      	strb	r0, [r7, #-5]
 80027f6:      	b	0x80027f8 <core::ops::range::RangeInclusive<Idx>::is_empty::h943243bbfda7c8b1+0x26> @ imm = #-2
 80027f8:      	ldrb	r0, [r7, #-5]
 80027fc:      	add	sp, #16
 80027fe:      	pop	{r7, pc}
 8002800:      	ldr	r1, [sp]
 8002802:      	movs	r0, #1
 8002804:      	bics	r0, r1
 8002806:      	strb	r0, [r7, #-5]
 800280a:      	b	0x80027f8 <core::ops::range::RangeInclusive<Idx>::is_empty::h943243bbfda7c8b1+0x26> @ imm = #-22

0800280c <core::iter::adapters::map::Map<I,F>::new::hacdda1ab65a26fe8>:
 800280c:      	sub	sp, #24
 800280e:      	mov	r3, r2
 8002810:      	mov	r12, r1
 8002812:      	mov	r1, r0
 8002814:      	ldr.w	r0, [r12]
 8002818:      	ldr.w	r2, [r12, #4]
 800281c:      	ldr.w	r12, [r12, #8]
 8002820:      	str.w	r12, [sp, #8]
 8002824:      	str	r2, [sp, #4]
 8002826:      	str	r0, [sp]
 8002828:      	ldr	r0, [r3]
 800282a:      	ldr	r2, [r3, #4]
 800282c:      	ldr	r3, [r3, #8]
 800282e:      	str	r3, [sp, #20]
 8002830:      	str	r2, [sp, #16]
 8002832:      	str	r0, [sp, #12]
 8002834:      	ldr	r0, [sp]
 8002836:      	ldr	r2, [sp, #4]
 8002838:      	ldr	r3, [sp, #8]
 800283a:      	str	r3, [r1, #8]
 800283c:      	str	r2, [r1, #4]
 800283e:      	str	r0, [r1]
 8002840:      	ldr	r0, [sp, #12]
 8002842:      	ldr	r2, [sp, #16]
 8002844:      	ldr	r3, [sp, #20]
 8002846:      	str	r3, [r1, #20]
 8002848:      	str	r2, [r1, #16]
 800284a:      	str	r0, [r1, #12]
 800284c:      	add	sp, #24
 800284e:      	bx	lr

08002850 <core::iter::adapters::map::map_fold::h76f951fae2e5b2d2>:
 8002850:      	sub	sp, #4
 8002852:      	mov	r3, r1
 8002854:      	mov	r1, r0
 8002856:      	ldr	r0, [r3]
 8002858:      	ldr	r2, [r3, #4]
 800285a:      	ldr	r3, [r3, #8]
 800285c:      	str	r3, [r1, #8]
 800285e:      	str	r2, [r1, #4]
 8002860:      	str	r0, [r1]
 8002862:      	add	sp, #4
 8002864:      	bx	lr

08002866 <core::iter::adapters::map::map_fold::{{closure}}::hf04767f4427db7c8>:
 8002866:      	push	{r7, lr}
 8002868:      	mov	r7, sp
 800286a:      	sub	sp, #72
 800286c:      	str	r2, [sp, #16]
 800286e:      	str	r1, [sp, #20]
 8002870:      	str	r0, [sp, #56]
 8002872:      	str	r1, [sp, #60]
 8002874:      	str	r2, [sp, #64]
 8002876:      	str	r3, [sp, #68]
 8002878:      	mov	r1, r0
 800287a:      	str	r1, [sp, #24]
 800287c:      	str	r3, [sp, #52]
 800287e:      	ldr	r1, [sp, #52]
 8002880:      	bl	0x800251e <core::iter::traits::iterator::Iterator::min_by_key::key::{{closure}}::h4e4f0c132851be58> @ imm = #-870
 8002884:      	str	r0, [sp, #28]
 8002886:      	str	r1, [sp, #32]
 8002888:      	b	0x800288a <core::iter::adapters::map::map_fold::{{closure}}::hf04767f4427db7c8+0x24> @ imm = #-2
 800288a:      	ldr	r0, [sp, #24]
 800288c:      	ldr	r1, [sp, #32]
 800288e:      	ldr	r2, [sp, #28]
 8002890:      	ldr	r3, [sp, #16]
 8002892:      	ldr.w	r12, [sp, #20]
 8002896:      	str.w	r12, [sp, #36]
 800289a:      	str	r3, [sp, #40]
 800289c:      	str	r2, [sp, #44]
 800289e:      	str	r1, [sp, #48]
 80028a0:      	ldr	r1, [sp, #36]
 80028a2:      	ldr	r2, [sp, #40]
 80028a4:      	ldr	r3, [sp, #44]
 80028a6:      	ldr.w	r12, [sp, #48]
 80028aa:      	mov	lr, sp
 80028ac:      	str.w	r12, [lr]
 80028b0:      	bl	0x8002568 <core::iter::traits::iterator::Iterator::min_by::fold::{{closure}}::h8a706371a4eb7d84> @ imm = #-844
 80028b4:      	str	r0, [sp, #8]
 80028b6:      	str	r1, [sp, #12]
 80028b8:      	b	0x80028ba <core::iter::adapters::map::map_fold::{{closure}}::hf04767f4427db7c8+0x54> @ imm = #-2
 80028ba:      	ldr	r1, [sp, #12]
 80028bc:      	ldr	r0, [sp, #8]
 80028be:      	add	sp, #72
 80028c0:      	pop	{r7, pc}

080028c2 <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::next::h2ba5824cc32f0ca9>:
 80028c2:      	push	{r7, lr}
 80028c4:      	mov	r7, sp
 80028c6:      	sub	sp, #24
 80028c8:      	str	r1, [sp, #4]
 80028ca:      	mov	r1, r0
 80028cc:      	ldr	r0, [sp, #4]
 80028ce:      	str	r1, [sp, #8]
 80028d0:      	str	r0, [sp, #20]
 80028d2:      	bl	0x8002b86 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next::hf1ade4006c203eda> @ imm = #688
 80028d6:      	str	r0, [sp, #12]
 80028d8:      	str	r1, [sp, #16]
 80028da:      	b	0x80028dc <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::next::h2ba5824cc32f0ca9+0x1a> @ imm = #-2
 80028dc:      	ldr	r2, [sp, #16]
 80028de:      	ldr	r1, [sp, #12]
 80028e0:      	ldr	r0, [sp, #8]
 80028e2:      	ldr	r3, [sp, #4]
 80028e4:      	adds	r3, #12
 80028e6:      	bl	0x8002ed0 <core::option::Option<T>::map::hcb47335b29e486d0> @ imm = #1510
 80028ea:      	b	0x80028ec <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::next::h2ba5824cc32f0ca9+0x2a> @ imm = #-2
 80028ec:      	add	sp, #24
 80028ee:      	pop	{r7, pc}

080028f0 <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::fold::h461bdd1d18d6ed3c>:
 80028f0:      	push	{r7, lr}
 80028f2:      	mov	r7, sp
 80028f4:      	sub	sp, #64
 80028f6:      	str	r2, [sp, #12]
 80028f8:      	str	r1, [sp, #8]
 80028fa:      	mov	r2, r0
 80028fc:      	ldr	r0, [sp, #12]
 80028fe:      	str	r1, [sp, #52]
 8002900:      	str	r0, [sp, #56]
 8002902:      	ldr	r0, [r2]
 8002904:      	ldr	r1, [r2, #4]
 8002906:      	ldr	r3, [r2, #8]
 8002908:      	str	r3, [sp, #24]
 800290a:      	str	r1, [sp, #20]
 800290c:      	str	r0, [sp, #16]
 800290e:      	ldr	r0, [r2, #12]
 8002910:      	ldr	r1, [r2, #16]
 8002912:      	ldr	r2, [r2, #20]
 8002914:      	str	r2, [sp, #48]
 8002916:      	str	r1, [sp, #44]
 8002918:      	str	r0, [sp, #40]
 800291a:      	add	r0, sp, #28
 800291c:      	add	r1, sp, #40
 800291e:      	bl	0x8002850 <core::iter::adapters::map::map_fold::h76f951fae2e5b2d2> @ imm = #-210
 8002922:      	b	0x8002924 <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::fold::h461bdd1d18d6ed3c+0x34> @ imm = #-2
 8002924:      	ldr	r2, [sp, #12]
 8002926:      	ldr	r1, [sp, #8]
 8002928:      	add	r0, sp, #16
 800292a:      	add	r3, sp, #28
 800292c:      	bl	0x8002bd8 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::fold::h38684f46d44642b7> @ imm = #680
 8002930:      	str	r0, [sp]
 8002932:      	str	r1, [sp, #4]
 8002934:      	b	0x8002936 <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::fold::h461bdd1d18d6ed3c+0x46> @ imm = #-2
 8002936:      	ldr	r1, [sp, #4]
 8002938:      	ldr	r0, [sp]
 800293a:      	add	sp, #64
 800293c:      	pop	{r7, pc}

0800293e <stm32f4xx_hal::gpio::gpiod::<impl stm32f4xx_hal::gpio::GpioExt for stm32f4::stm32f407::GPIOD>::split::h5e82dd3af4645640>:
 800293e:      	push	{r7, lr}
 8002940:      	mov	r7, sp
 8002942:      	sub	sp, #56
 8002944:      	b	0x8002946 <stm32f4xx_hal::gpio::gpiod::<impl stm32f4xx_hal::gpio::GpioExt for stm32f4::stm32f407::GPIOD>::split::h5e82dd3af4645640+0x8> @ imm = #-2
 8002946:      	movw	r0, #14336
 800294a:      	movt	r0, #16386
 800294e:      	str	r0, [sp, #8]
 8002950:      	movw	r0, #14384
 8002954:      	movt	r0, #16386
 8002958:      	str	r0, [sp]
 800295a:      	str	r0, [sp, #28]
 800295c:      	str	r0, [sp, #36]
 800295e:      	str	r0, [sp, #52]
 8002960:      	bl	0x800352e <core::ptr::read_volatile::hd744fd3ffee1caa0> @ imm = #3018
 8002964:      	str	r0, [sp, #32]
 8002966:      	str	r0, [sp, #20]
 8002968:      	str	r0, [sp, #24]
 800296a:      	add	r0, sp, #20
 800296c:      	str	r0, [sp, #12]
 800296e:      	add	r0, sp, #24
 8002970:      	str	r0, [sp, #16]
 8002972:      	ldr	r0, [sp, #12]
 8002974:      	ldr	r1, [sp, #16]
 8002976:      	bl	0x8002f90 <stm32f4xx_hal::gpio::gpiod::<impl stm32f4xx_hal::gpio::GpioExt for stm32f4::stm32f407::GPIOD>::split::{{closure}}::h400af3ef884982ab> @ imm = #1558
 800297a:      	mov	r1, r0
 800297c:      	ldr	r0, [sp]
 800297e:      	ldr	r1, [r1]
 8002980:      	str	r0, [sp, #40]
 8002982:      	str	r1, [sp, #44]
 8002984:      	str	r0, [sp, #48]
 8002986:      	bl	0x8003542 <core::ptr::write_volatile::hb256fcfc65ccec03> @ imm = #3000
 800298a:      	b	0x800298c <stm32f4xx_hal::gpio::gpiod::<impl stm32f4xx_hal::gpio::GpioExt for stm32f4::stm32f407::GPIOD>::split::h5e82dd3af4645640+0x4e> @ imm = #-2
 800298c:      	add	sp, #56
 800298e:      	pop	{r7, pc}

08002990 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_next::h4ca7e8e21e3a3f16>:
 8002990:      	push	{r7, lr}
 8002992:      	mov	r7, sp
 8002994:      	sub	sp, #48
 8002996:      	str	r0, [sp, #16]
 8002998:      	str	r0, [sp, #36]
 800299a:      	bl	0x80027d2 <core::ops::range::RangeInclusive<Idx>::is_empty::h943243bbfda7c8b1> @ imm = #-460
 800299e:      	str	r0, [sp, #20]
 80029a0:      	b	0x80029a2 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_next::h4ca7e8e21e3a3f16+0x12> @ imm = #-2
 80029a2:      	ldr	r0, [sp, #20]
 80029a4:      	lsls	r0, r0, #31
 80029a6:      	cbnz	r0, 0x80029bc <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_next::h4ca7e8e21e3a3f16+0x2c> @ imm = #18
 80029a8:      	b	0x80029aa <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_next::h4ca7e8e21e3a3f16+0x1a> @ imm = #-2
 80029aa:      	ldr	r0, [sp, #16]
 80029ac:      	adds	r1, r0, #4
 80029ae:      	bl	0x800322e <core::cmp::impls::<impl core::cmp::PartialOrd for u32>::lt::h81b94b80207f294d> @ imm = #2172
 80029b2:      	mov	r1, r0
 80029b4:      	str	r1, [sp, #12]
 80029b6:      	strb	r0, [r7, #-5]
 80029ba:      	b	0x80029ca <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_next::h4ca7e8e21e3a3f16+0x3a> @ imm = #12
 80029bc:      	movs	r0, #0
 80029be:      	str	r0, [sp, #24]
 80029c0:      	b	0x80029c2 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_next::h4ca7e8e21e3a3f16+0x32> @ imm = #-2
 80029c2:      	ldr	r0, [sp, #24]
 80029c4:      	ldr	r1, [sp, #28]
 80029c6:      	add	sp, #48
 80029c8:      	pop	{r7, pc}
 80029ca:      	ldr	r0, [sp, #12]
 80029cc:      	lsls	r0, r0, #31
 80029ce:      	cbnz	r0, 0x80029e0 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_next::h4ca7e8e21e3a3f16+0x50> @ imm = #14
 80029d0:      	b	0x80029d2 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_next::h4ca7e8e21e3a3f16+0x42> @ imm = #-2
 80029d2:      	ldr	r0, [sp, #16]
 80029d4:      	movs	r1, #1
 80029d6:      	strb	r1, [r0, #8]
 80029d8:      	bl	0x800320e <core::clone::impls::<impl core::clone::Clone for u32>::clone::h0b2bcaf7f494655c> @ imm = #2098
 80029dc:      	str	r0, [sp, #32]
 80029de:      	b	0x8002a12 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_next::h4ca7e8e21e3a3f16+0x82> @ imm = #48
 80029e0:      	ldr	r0, [sp, #16]
 80029e2:      	bl	0x800320e <core::clone::impls::<impl core::clone::Clone for u32>::clone::h0b2bcaf7f494655c> @ imm = #2088
 80029e6:      	str	r0, [sp, #8]
 80029e8:      	b	0x80029ea <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_next::h4ca7e8e21e3a3f16+0x5a> @ imm = #-2
 80029ea:      	ldr	r0, [sp, #8]
 80029ec:      	movs	r1, #1
 80029ee:      	bl	0x80025a6 <<u32 as core::iter::range::Step>::forward_unchecked::h1bfa225497817242> @ imm = #-1100
 80029f2:      	mov	r1, r0
 80029f4:      	str	r1, [sp, #4]
 80029f6:      	str	r0, [sp, #44]
 80029f8:      	b	0x80029fa <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_next::h4ca7e8e21e3a3f16+0x6a> @ imm = #-2
 80029fa:      	ldr	r1, [sp, #4]
 80029fc:      	ldr	r0, [sp, #16]
 80029fe:      	bl	0x8002790 <core::mem::replace::h78c2b42c9961b891> @ imm = #-626
 8002a02:      	str	r0, [sp, #32]
 8002a04:      	b	0x8002a06 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_next::h4ca7e8e21e3a3f16+0x76> @ imm = #-2
 8002a06:      	b	0x8002a08 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_next::h4ca7e8e21e3a3f16+0x78> @ imm = #-2
 8002a08:      	ldr	r0, [sp, #32]
 8002a0a:      	str	r0, [sp, #28]
 8002a0c:      	movs	r0, #1
 8002a0e:      	str	r0, [sp, #24]
 8002a10:      	b	0x80029c2 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_next::h4ca7e8e21e3a3f16+0x32> @ imm = #-82
 8002a12:      	b	0x8002a08 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_next::h4ca7e8e21e3a3f16+0x78> @ imm = #-14

08002a14 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7>:
 8002a14:      	push	{r7, lr}
 8002a16:      	mov	r7, sp
 8002a18:      	sub	sp, #168
 8002a1a:      	str	r3, [sp, #48]
 8002a1c:      	str	r2, [sp, #52]
 8002a1e:      	str	r1, [sp, #56]
 8002a20:      	str	r0, [sp, #60]
 8002a22:      	str	r0, [sp, #124]
 8002a24:      	str	r1, [sp, #128]
 8002a26:      	str	r2, [sp, #132]
 8002a28:      	bl	0x80027d2 <core::ops::range::RangeInclusive<Idx>::is_empty::h943243bbfda7c8b1> @ imm = #-602
 8002a2c:      	str	r0, [sp, #64]
 8002a2e:      	b	0x8002a30 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x1c> @ imm = #-2
 8002a30:      	ldr	r0, [sp, #64]
 8002a32:      	lsls	r0, r0, #31
 8002a34:      	cbnz	r0, 0x8002a42 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x2e> @ imm = #10
 8002a36:      	b	0x8002a38 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x24> @ imm = #-2
 8002a38:      	ldr	r0, [sp, #52]
 8002a3a:      	ldr	r1, [sp, #56]
 8002a3c:      	str	r1, [sp, #76]
 8002a3e:      	str	r0, [sp, #80]
 8002a40:      	b	0x8002a54 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x40> @ imm = #16
 8002a42:      	ldr	r1, [sp, #52]
 8002a44:      	ldr	r0, [sp, #56]
 8002a46:      	bl	0x80031ba <_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17h5e212015da7162beE> @ imm = #1904
 8002a4a:      	str	r1, [sp, #72]
 8002a4c:      	str	r0, [sp, #68]
 8002a4e:      	b	0x8002a50 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x3c> @ imm = #-2
 8002a50:      	b	0x8002a52 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x3e> @ imm = #-2
 8002a52:      	b	0x8002b7c <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x168> @ imm = #294
 8002a54:      	ldr	r0, [sp, #60]
 8002a56:      	adds	r1, r0, #4
 8002a58:      	bl	0x800322e <core::cmp::impls::<impl core::cmp::PartialOrd for u32>::lt::h81b94b80207f294d> @ imm = #2002
 8002a5c:      	str	r0, [sp, #44]
 8002a5e:      	b	0x8002a60 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x4c> @ imm = #-2
 8002a60:      	ldr	r0, [sp, #44]
 8002a62:      	lsls	r0, r0, #31
 8002a64:      	cbnz	r0, 0x8002a78 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x64> @ imm = #16
 8002a66:      	b	0x8002a68 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x54> @ imm = #-2
 8002a68:      	ldr	r0, [sp, #60]
 8002a6a:      	movs	r1, #1
 8002a6c:      	strb	r1, [r0, #8]
 8002a6e:      	adds	r1, r0, #4
 8002a70:      	bl	0x8003218 <core::cmp::impls::<impl core::cmp::PartialEq for u32>::eq::he7cd35f3d42964ea> @ imm = #1956
 8002a74:      	str	r0, [sp, #40]
 8002a76:      	b	0x8002afc <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0xe8> @ imm = #130
 8002a78:      	ldr	r0, [sp, #60]
 8002a7a:      	bl	0x800320e <core::clone::impls::<impl core::clone::Clone for u32>::clone::h0b2bcaf7f494655c> @ imm = #1936
 8002a7e:      	str	r0, [sp, #36]
 8002a80:      	b	0x8002a82 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x6e> @ imm = #-2
 8002a82:      	ldr	r0, [sp, #36]
 8002a84:      	movs	r1, #1
 8002a86:      	bl	0x80025a6 <<u32 as core::iter::range::Step>::forward_unchecked::h1bfa225497817242> @ imm = #-1252
 8002a8a:      	mov	r1, r0
 8002a8c:      	str	r1, [sp, #32]
 8002a8e:      	str	r0, [sp, #144]
 8002a90:      	b	0x8002a92 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x7e> @ imm = #-2
 8002a92:      	ldr	r1, [sp, #32]
 8002a94:      	ldr	r0, [sp, #60]
 8002a96:      	bl	0x8002790 <core::mem::replace::h78c2b42c9961b891> @ imm = #-778
 8002a9a:      	mov	r1, r0
 8002a9c:      	str	r1, [sp, #28]
 8002a9e:      	str	r0, [sp, #148]
 8002aa0:      	b	0x8002aa2 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x8e> @ imm = #-2
 8002aa2:      	ldr	r0, [sp, #48]
 8002aa4:      	ldr	r1, [sp, #28]
 8002aa6:      	ldr	r3, [sp, #76]
 8002aa8:      	ldr	r2, [sp, #80]
 8002aaa:      	str	r3, [sp, #92]
 8002aac:      	str	r2, [sp, #96]
 8002aae:      	str	r1, [sp, #100]
 8002ab0:      	ldr	r1, [sp, #92]
 8002ab2:      	ldr	r2, [sp, #96]
 8002ab4:      	ldr	r3, [sp, #100]
 8002ab6:      	bl	0x80024d8 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::fold::ok::{{closure}}::ha253db7bdfc2d3ad> @ imm = #-1506
 8002aba:      	str	r0, [sp, #20]
 8002abc:      	str	r1, [sp, #24]
 8002abe:      	b	0x8002ac0 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0xac> @ imm = #-2
 8002ac0:      	ldr	r1, [sp, #24]
 8002ac2:      	ldr	r0, [sp, #20]
 8002ac4:      	bl	0x80031cc <_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6eac61d8ffe738baE> @ imm = #1796
 8002ac8:      	str	r1, [sp, #88]
 8002aca:      	str	r0, [sp, #84]
 8002acc:      	b	0x8002ace <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0xba> @ imm = #-2
 8002ace:      	movs	r0, #1
 8002ad0:      	cbnz	r0, 0x8002ad8 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0xc4> @ imm = #4
 8002ad2:      	b	0x8002ad4 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0xc0> @ imm = #-2
 8002ad4:      	b	0x8002ae6 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0xd2> @ imm = #14
 8002ad6:      	trap
 8002ad8:      	ldr	r1, [sp, #84]
 8002ada:      	ldr	r0, [sp, #88]
 8002adc:      	str	r1, [sp, #152]
 8002ade:      	str	r0, [sp, #156]
 8002ae0:      	str	r1, [sp, #76]
 8002ae2:      	str	r0, [sp, #80]
 8002ae4:      	b	0x8002a54 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x40> @ imm = #-148
 8002ae6:      	movw	r0, #17504
 8002aea:      	movt	r0, #2048
 8002aee:      	bl	0x80031f8 <_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17ha7411284cbaa051eE> @ imm = #1798
 8002af2:      	str	r1, [sp, #72]
 8002af4:      	str	r0, [sp, #68]
 8002af6:      	b	0x8002af8 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0xe4> @ imm = #-2
 8002af8:      	b	0x8002afa <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0xe6> @ imm = #-2
 8002afa:      	b	0x8002a52 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x3e> @ imm = #-172
 8002afc:      	ldr	r0, [sp, #40]
 8002afe:      	lsls	r0, r0, #31
 8002b00:      	cbnz	r0, 0x8002b12 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0xfe> @ imm = #14
 8002b02:      	b	0x8002b04 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0xf0> @ imm = #-2
 8002b04:      	ldr	r0, [sp, #76]
 8002b06:      	ldr	r1, [sp, #80]
 8002b08:      	bl	0x80031ba <_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17h5e212015da7162beE> @ imm = #1710
 8002b0c:      	str	r1, [sp, #72]
 8002b0e:      	str	r0, [sp, #68]
 8002b10:      	b	0x8002b84 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x170> @ imm = #112
 8002b12:      	ldr	r0, [sp, #60]
 8002b14:      	ldr	r1, [sp, #76]
 8002b16:      	str	r1, [sp, #8]
 8002b18:      	ldr	r1, [sp, #80]
 8002b1a:      	str	r1, [sp, #12]
 8002b1c:      	bl	0x800320e <core::clone::impls::<impl core::clone::Clone for u32>::clone::h0b2bcaf7f494655c> @ imm = #1774
 8002b20:      	str	r0, [sp, #16]
 8002b22:      	b	0x8002b24 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x110> @ imm = #-2
 8002b24:      	ldr	r0, [sp, #48]
 8002b26:      	ldr	r1, [sp, #16]
 8002b28:      	ldr	r2, [sp, #12]
 8002b2a:      	ldr	r3, [sp, #8]
 8002b2c:      	str	r3, [sp, #112]
 8002b2e:      	str	r2, [sp, #116]
 8002b30:      	str	r1, [sp, #120]
 8002b32:      	ldr	r1, [sp, #112]
 8002b34:      	ldr	r2, [sp, #116]
 8002b36:      	ldr	r3, [sp, #120]
 8002b38:      	bl	0x80024d8 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::fold::ok::{{closure}}::ha253db7bdfc2d3ad> @ imm = #-1636
 8002b3c:      	str	r0, [sp]
 8002b3e:      	str	r1, [sp, #4]
 8002b40:      	b	0x8002b42 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x12e> @ imm = #-2
 8002b42:      	ldr	r1, [sp, #4]
 8002b44:      	ldr	r0, [sp]
 8002b46:      	bl	0x80031cc <_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6eac61d8ffe738baE> @ imm = #1666
 8002b4a:      	str	r1, [sp, #108]
 8002b4c:      	str	r0, [sp, #104]
 8002b4e:      	b	0x8002b50 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x13c> @ imm = #-2
 8002b50:      	movs	r0, #1
 8002b52:      	cbnz	r0, 0x8002b5a <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x146> @ imm = #4
 8002b54:      	b	0x8002b56 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x142> @ imm = #-2
 8002b56:      	b	0x8002b68 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x154> @ imm = #14
 8002b58:      	trap
 8002b5a:      	ldr	r1, [sp, #104]
 8002b5c:      	ldr	r0, [sp, #108]
 8002b5e:      	str	r1, [sp, #160]
 8002b60:      	str	r0, [sp, #164]
 8002b62:      	str	r1, [sp, #76]
 8002b64:      	str	r0, [sp, #80]
 8002b66:      	b	0x8002b04 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0xf0> @ imm = #-102
 8002b68:      	movw	r0, #17520
 8002b6c:      	movt	r0, #2048
 8002b70:      	bl	0x80031f8 <_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17ha7411284cbaa051eE> @ imm = #1668
 8002b74:      	str	r1, [sp, #72]
 8002b76:      	str	r0, [sp, #68]
 8002b78:      	b	0x8002b7a <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x166> @ imm = #-2
 8002b7a:      	b	0x8002afa <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0xe6> @ imm = #-132
 8002b7c:      	ldr	r0, [sp, #68]
 8002b7e:      	ldr	r1, [sp, #72]
 8002b80:      	add	sp, #168
 8002b82:      	pop	{r7, pc}
 8002b84:      	b	0x8002b7c <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7+0x168> @ imm = #-12

08002b86 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next::hf1ade4006c203eda>:
 8002b86:      	push	{r7, lr}
 8002b88:      	mov	r7, sp
 8002b8a:      	sub	sp, #16
 8002b8c:      	str	r0, [sp, #12]
 8002b8e:      	bl	0x8002990 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_next::h4ca7e8e21e3a3f16> @ imm = #-514
 8002b92:      	str	r0, [sp, #4]
 8002b94:      	str	r1, [sp, #8]
 8002b96:      	b	0x8002b98 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next::hf1ade4006c203eda+0x12> @ imm = #-2
 8002b98:      	ldr	r1, [sp, #8]
 8002b9a:      	ldr	r0, [sp, #4]
 8002b9c:      	add	sp, #16
 8002b9e:      	pop	{r7, pc}

08002ba0 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::try_fold::hce96b9899935b126>:
 8002ba0:      	push	{r7, lr}
 8002ba2:      	mov	r7, sp
 8002ba4:      	sub	sp, #32
 8002ba6:      	mov	lr, r3
 8002ba8:      	str	r0, [sp, #20]
 8002baa:      	str	r1, [sp, #24]
 8002bac:      	str	r2, [sp, #28]
 8002bae:      	ldr.w	r3, [lr]
 8002bb2:      	ldr.w	r12, [lr, #4]
 8002bb6:      	ldr.w	lr, [lr, #8]
 8002bba:      	str.w	lr, [sp, #16]
 8002bbe:      	str.w	r12, [sp, #12]
 8002bc2:      	str	r3, [sp, #8]
 8002bc4:      	add	r3, sp, #8
 8002bc6:      	bl	0x8002a14 <<core::ops::range::RangeInclusive<T> as core::iter::range::RangeInclusiveIteratorImpl>::spec_try_fold::he75b7cfa1cf1b2b7> @ imm = #-438
 8002bca:      	str	r0, [sp]
 8002bcc:      	str	r1, [sp, #4]
 8002bce:      	b	0x8002bd0 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::try_fold::hce96b9899935b126+0x30> @ imm = #-2
 8002bd0:      	ldr	r1, [sp, #4]
 8002bd2:      	ldr	r0, [sp]
 8002bd4:      	add	sp, #32
 8002bd6:      	pop	{r7, pc}

08002bd8 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::fold::h38684f46d44642b7>:
 8002bd8:      	push	{r7, lr}
 8002bda:      	mov	r7, sp
 8002bdc:      	sub	sp, #64
 8002bde:      	str	r2, [sp, #20]
 8002be0:      	str	r1, [sp, #24]
 8002be2:      	str	r0, [sp, #28]
 8002be4:      	str	r1, [sp, #56]
 8002be6:      	str	r2, [sp, #60]
 8002be8:      	ldr	r0, [r3]
 8002bea:      	ldr	r1, [r3, #4]
 8002bec:      	ldr	r2, [r3, #8]
 8002bee:      	str	r2, [sp, #52]
 8002bf0:      	str	r1, [sp, #48]
 8002bf2:      	str	r0, [sp, #44]
 8002bf4:      	add	r0, sp, #32
 8002bf6:      	add	r1, sp, #44
 8002bf8:      	bl	0x80024c6 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::fold::ok::hf4e1b8f14945ee66> @ imm = #-1846
 8002bfc:      	b	0x8002bfe <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::fold::h38684f46d44642b7+0x26> @ imm = #-2
 8002bfe:      	ldr	r2, [sp, #20]
 8002c00:      	ldr	r1, [sp, #24]
 8002c02:      	ldr	r0, [sp, #28]
 8002c04:      	add	r3, sp, #32
 8002c06:      	bl	0x8002ba0 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::try_fold::hce96b9899935b126> @ imm = #-106
 8002c0a:      	str	r0, [sp, #12]
 8002c0c:      	str	r1, [sp, #16]
 8002c0e:      	b	0x8002c10 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::fold::h38684f46d44642b7+0x38> @ imm = #-2
 8002c10:      	ldr	r1, [sp, #16]
 8002c12:      	ldr	r0, [sp, #12]
 8002c14:      	movw	r2, #17536
 8002c18:      	movt	r2, #2048
 8002c1c:      	bl	0x8003178 <_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17ha152f828f899faf1E> @ imm = #1368
 8002c20:      	str	r0, [sp, #4]
 8002c22:      	str	r1, [sp, #8]
 8002c24:      	b	0x8002c26 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::fold::h38684f46d44642b7+0x4e> @ imm = #-2
 8002c26:      	b	0x8002c28 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::fold::h38684f46d44642b7+0x50> @ imm = #-2
 8002c28:      	ldr	r1, [sp, #8]
 8002c2a:      	ldr	r0, [sp, #4]
 8002c2c:      	add	sp, #64
 8002c2e:      	pop	{r7, pc}

08002c30 <core::iter::traits::iterator::Iterator::map::hc56f52b6fb0e3115>:
 8002c30:      	push	{r7, lr}
 8002c32:      	mov	r7, sp
 8002c34:      	sub	sp, #24
 8002c36:      	mov	r3, r2
 8002c38:      	mov	r12, r1
 8002c3a:      	ldr.w	r1, [r12]
 8002c3e:      	ldr.w	r2, [r12, #4]
 8002c42:      	ldr.w	r12, [r12, #8]
 8002c46:      	str.w	r12, [sp, #8]
 8002c4a:      	str	r2, [sp, #4]
 8002c4c:      	str	r1, [sp]
 8002c4e:      	ldr	r1, [r3]
 8002c50:      	ldr	r2, [r3, #4]
 8002c52:      	ldr	r3, [r3, #8]
 8002c54:      	str	r3, [sp, #20]
 8002c56:      	str	r2, [sp, #16]
 8002c58:      	str	r1, [sp, #12]
 8002c5a:      	mov	r1, sp
 8002c5c:      	add	r2, sp, #12
 8002c5e:      	bl	0x800280c <core::iter::adapters::map::Map<I,F>::new::hacdda1ab65a26fe8> @ imm = #-1110
 8002c62:      	b	0x8002c64 <core::iter::traits::iterator::Iterator::map::hc56f52b6fb0e3115+0x34> @ imm = #-2
 8002c64:      	add	sp, #24
 8002c66:      	pop	{r7, pc}

08002c68 <core::iter::traits::iterator::Iterator::reduce::h99e5eec0ab9ba276>:
 8002c68:      	push	{r4, r5, r6, r7, lr}
 8002c6a:      	add	r7, sp, #12
 8002c6c:      	push.w	{r8, r9, r11}
 8002c70:      	sub	sp, #88
 8002c72:      	str	r1, [sp, #8]
 8002c74:      	str	r0, [sp, #12]
 8002c76:      	add	r0, sp, #28
 8002c78:      	bl	0x80028c2 <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::next::h2ba5824cc32f0ca9> @ imm = #-954
 8002c7c:      	b	0x8002c7e <core::iter::traits::iterator::Iterator::reduce::h99e5eec0ab9ba276+0x16> @ imm = #-2
 8002c7e:      	add	r0, sp, #16
 8002c80:      	add	r1, sp, #28
 8002c82:      	bl	0x8002f38 <<core::option::Option<T> as core::ops::try_trait::Try>::branch::hfde8420b2aeaadc9> @ imm = #690
 8002c86:      	b	0x8002c88 <core::iter::traits::iterator::Iterator::reduce::h99e5eec0ab9ba276+0x20> @ imm = #-2
 8002c88:      	ldr	r0, [sp, #16]
 8002c8a:      	cbz	r0, 0x8002c92 <core::iter::traits::iterator::Iterator::reduce::h99e5eec0ab9ba276+0x2a> @ imm = #4
 8002c8c:      	b	0x8002c8e <core::iter::traits::iterator::Iterator::reduce::h99e5eec0ab9ba276+0x26> @ imm = #-2
 8002c8e:      	b	0x8002cb8 <core::iter::traits::iterator::Iterator::reduce::h99e5eec0ab9ba276+0x50> @ imm = #38
 8002c90:      	trap
 8002c92:      	ldr.w	r12, [sp, #8]
 8002c96:      	ldr	r1, [sp, #20]
 8002c98:      	ldr	r2, [sp, #24]
 8002c9a:      	str	r1, [sp, #72]
 8002c9c:      	str	r2, [sp, #76]
 8002c9e:      	str	r1, [sp, #80]
 8002ca0:      	str	r2, [sp, #84]
 8002ca2:      	add	r0, sp, #40
 8002ca4:      	mov	r3, r0
 8002ca6:      	ldm.w	r12, {r4, r5, r6, r8, r9, lr}
 8002caa:      	stm.w	r3, {r4, r5, r6, r8, r9, lr}
 8002cae:      	bl	0x80028f0 <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::fold::h461bdd1d18d6ed3c> @ imm = #-962
 8002cb2:      	str	r0, [sp]
 8002cb4:      	str	r1, [sp, #4]
 8002cb6:      	b	0x8002ccc <core::iter::traits::iterator::Iterator::reduce::h99e5eec0ab9ba276+0x64> @ imm = #18
 8002cb8:      	ldr	r0, [sp, #12]
 8002cba:      	bl	0x8002f6a <<core::option::Option<T> as core::ops::try_trait::FromResidual>::from_residual::h226034dad66526f3> @ imm = #684
 8002cbe:      	b	0x8002cc0 <core::iter::traits::iterator::Iterator::reduce::h99e5eec0ab9ba276+0x58> @ imm = #-2
 8002cc0:      	b	0x8002cc2 <core::iter::traits::iterator::Iterator::reduce::h99e5eec0ab9ba276+0x5a> @ imm = #-2
 8002cc2:      	b	0x8002cc4 <core::iter::traits::iterator::Iterator::reduce::h99e5eec0ab9ba276+0x5c> @ imm = #-2
 8002cc4:      	add	sp, #88
 8002cc6:      	pop.w	{r8, r9, r11}
 8002cca:      	pop	{r4, r5, r6, r7, pc}
 8002ccc:      	ldr	r1, [sp, #12]
 8002cce:      	ldr	r0, [sp, #4]
 8002cd0:      	ldr	r2, [sp]
 8002cd2:      	str	r2, [r1, #4]
 8002cd4:      	str	r0, [r1, #8]
 8002cd6:      	movs	r0, #1
 8002cd8:      	str	r0, [r1]
 8002cda:      	b	0x8002cc4 <core::iter::traits::iterator::Iterator::reduce::h99e5eec0ab9ba276+0x5c> @ imm = #-26

08002cdc <core::iter::traits::iterator::Iterator::min_by_key::h277a6d975814092d>:
 8002cdc:      	push	{r7, lr}
 8002cde:      	mov	r7, sp
 8002ce0:      	sub	sp, #120
 8002ce2:      	mov	r2, r1
 8002ce4:      	mov	r3, r0
 8002ce6:      	ldr	r0, [r3]
 8002ce8:      	ldr	r1, [r3, #4]
 8002cea:      	ldr	r3, [r3, #8]
 8002cec:      	str	r3, [sp, #76]
 8002cee:      	str	r1, [sp, #72]
 8002cf0:      	str	r0, [sp, #68]
 8002cf2:      	ldr	r0, [r2]
 8002cf4:      	ldr	r1, [r2, #4]
 8002cf6:      	ldr	r2, [r2, #8]
 8002cf8:      	str	r2, [sp, #100]
 8002cfa:      	str	r1, [sp, #96]
 8002cfc:      	str	r0, [sp, #92]
 8002cfe:      	add	r0, sp, #80
 8002d00:      	add	r1, sp, #92
 8002d02:      	bl	0x800250c <core::iter::traits::iterator::Iterator::min_by_key::key::h16acff92f0d3baf5> @ imm = #-2042
 8002d06:      	b	0x8002d08 <core::iter::traits::iterator::Iterator::min_by_key::h277a6d975814092d+0x2c> @ imm = #-2
 8002d08:      	add	r0, sp, #44
 8002d0a:      	add	r1, sp, #68
 8002d0c:      	add	r2, sp, #80
 8002d0e:      	bl	0x8002c30 <core::iter::traits::iterator::Iterator::map::hc56f52b6fb0e3115> @ imm = #-226
 8002d12:      	b	0x8002d14 <core::iter::traits::iterator::Iterator::min_by_key::h277a6d975814092d+0x38> @ imm = #-2
 8002d14:      	add	r0, sp, #32
 8002d16:      	add	r1, sp, #44
 8002d18:      	bl	0x8002d64 <core::iter::traits::iterator::Iterator::min_by::hcd35175fd4603347> @ imm = #72
 8002d1c:      	b	0x8002d1e <core::iter::traits::iterator::Iterator::min_by_key::h277a6d975814092d+0x42> @ imm = #-2
 8002d1e:      	add	r0, sp, #20
 8002d20:      	add	r1, sp, #32
 8002d22:      	bl	0x8002f38 <<core::option::Option<T> as core::ops::try_trait::Try>::branch::hfde8420b2aeaadc9> @ imm = #530
 8002d26:      	b	0x8002d28 <core::iter::traits::iterator::Iterator::min_by_key::h277a6d975814092d+0x4c> @ imm = #-2
 8002d28:      	ldr	r0, [sp, #20]
 8002d2a:      	cbz	r0, 0x8002d32 <core::iter::traits::iterator::Iterator::min_by_key::h277a6d975814092d+0x56> @ imm = #4
 8002d2c:      	b	0x8002d2e <core::iter::traits::iterator::Iterator::min_by_key::h277a6d975814092d+0x52> @ imm = #-2
 8002d2e:      	b	0x8002d46 <core::iter::traits::iterator::Iterator::min_by_key::h277a6d975814092d+0x6a> @ imm = #20
 8002d30:      	trap
 8002d32:      	ldr	r1, [sp, #24]
 8002d34:      	ldr	r0, [sp, #28]
 8002d36:      	str	r1, [sp, #108]
 8002d38:      	str	r0, [sp, #112]
 8002d3a:      	str	r1, [sp, #12]
 8002d3c:      	str	r0, [sp, #16]
 8002d3e:      	ldr	r0, [sp, #16]
 8002d40:      	str	r0, [sp]
 8002d42:      	str	r0, [sp, #116]
 8002d44:      	b	0x8002d5a <core::iter::traits::iterator::Iterator::min_by_key::h277a6d975814092d+0x7e> @ imm = #18
 8002d46:      	bl	0x8002f76 <<core::option::Option<T> as core::ops::try_trait::FromResidual>::from_residual::hb6143fdffe6a60a8> @ imm = #556
 8002d4a:      	str	r1, [sp, #8]
 8002d4c:      	str	r0, [sp, #4]
 8002d4e:      	b	0x8002d50 <core::iter::traits::iterator::Iterator::min_by_key::h277a6d975814092d+0x74> @ imm = #-2
 8002d50:      	b	0x8002d52 <core::iter::traits::iterator::Iterator::min_by_key::h277a6d975814092d+0x76> @ imm = #-2
 8002d52:      	ldr	r0, [sp, #4]
 8002d54:      	ldr	r1, [sp, #8]
 8002d56:      	add	sp, #120
 8002d58:      	pop	{r7, pc}
 8002d5a:      	ldr	r0, [sp]
 8002d5c:      	str	r0, [sp, #8]
 8002d5e:      	movs	r0, #1
 8002d60:      	str	r0, [sp, #4]
 8002d62:      	b	0x8002d52 <core::iter::traits::iterator::Iterator::min_by_key::h277a6d975814092d+0x76> @ imm = #-20

08002d64 <core::iter::traits::iterator::Iterator::min_by::hcd35175fd4603347>:
 8002d64:      	push	{r4, r5, r7, lr}
 8002d66:      	add	r7, sp, #8
 8002d68:      	sub	sp, #32
 8002d6a:      	str	r0, [sp]
 8002d6c:      	add	r0, sp, #4
 8002d6e:      	ldm.w	r1, {r2, r3, r4, r5, r12, lr}
 8002d72:      	stm.w	r0, {r2, r3, r4, r5, r12, lr}
 8002d76:      	bl	0x8002562 <core::iter::traits::iterator::Iterator::min_by::fold::hfb620da7765474af> @ imm = #-2072
 8002d7a:      	b	0x8002d7c <core::iter::traits::iterator::Iterator::min_by::hcd35175fd4603347+0x18> @ imm = #-2
 8002d7c:      	ldr	r0, [sp]
 8002d7e:      	add	r1, sp, #4
 8002d80:      	bl	0x8002c68 <core::iter::traits::iterator::Iterator::reduce::h99e5eec0ab9ba276> @ imm = #-284
 8002d84:      	b	0x8002d86 <core::iter::traits::iterator::Iterator::min_by::hcd35175fd4603347+0x22> @ imm = #-2
 8002d86:      	add	sp, #32
 8002d88:      	pop	{r4, r5, r7, pc}

08002d8a <core::option::Option<T>::is_some::h0d89005eda2dd870>:
 8002d8a:      	sub	sp, #8
 8002d8c:      	str	r0, [sp, #4]
 8002d8e:      	ldr	r0, [r0]
 8002d90:      	cmp	r0, #1
 8002d92:      	bne	0x8002d9e <core::option::Option<T>::is_some::h0d89005eda2dd870+0x14> @ imm = #8
 8002d94:      	b	0x8002d96 <core::option::Option<T>::is_some::h0d89005eda2dd870+0xc> @ imm = #-2
 8002d96:      	movs	r0, #1
 8002d98:      	strb.w	r0, [sp, #3]
 8002d9c:      	b	0x8002da6 <core::option::Option<T>::is_some::h0d89005eda2dd870+0x1c> @ imm = #6
 8002d9e:      	movs	r0, #0
 8002da0:      	strb.w	r0, [sp, #3]
 8002da4:      	b	0x8002da6 <core::option::Option<T>::is_some::h0d89005eda2dd870+0x1c> @ imm = #-2
 8002da6:      	ldrb.w	r0, [sp, #3]
 8002daa:      	add	sp, #8
 8002dac:      	bx	lr

08002dae <core::option::Option<T>::unwrap::h95bb23752b790de8>:
 8002dae:      	push	{r7, lr}
 8002db0:      	mov	r7, sp
 8002db2:      	sub	sp, #16
 8002db4:      	str	r2, [sp]
 8002db6:      	str	r0, [sp, #4]
 8002db8:      	str	r1, [sp, #8]
 8002dba:      	ldr	r0, [sp, #4]
 8002dbc:      	cbz	r0, 0x8002dc4 <core::option::Option<T>::unwrap::h95bb23752b790de8+0x16> @ imm = #4
 8002dbe:      	b	0x8002dc0 <core::option::Option<T>::unwrap::h95bb23752b790de8+0x12> @ imm = #-2
 8002dc0:      	b	0x8002dd6 <core::option::Option<T>::unwrap::h95bb23752b790de8+0x28> @ imm = #18
 8002dc2:      	trap
 8002dc4:      	ldr	r2, [sp]
 8002dc6:      	movw	r0, #17552
 8002dca:      	movt	r0, #2048
 8002dce:      	movs	r1, #43
 8002dd0:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #1952
 8002dd4:      	trap
 8002dd6:      	ldr	r0, [sp, #8]
 8002dd8:      	str	r0, [sp, #12]
 8002dda:      	add	sp, #16
 8002ddc:      	pop	{r7, pc}

08002dde <core::option::Option<T>::unwrap_or::h57d45cfe6d34e911>:
 8002dde:      	sub	sp, #28
 8002de0:      	str	r2, [sp]
 8002de2:      	str	r0, [sp, #4]
 8002de4:      	str	r1, [sp, #8]
 8002de6:      	str	r2, [sp, #20]
 8002de8:      	movs	r0, #0
 8002dea:      	strb.w	r0, [sp, #19]
 8002dee:      	movs	r0, #1
 8002df0:      	strb.w	r0, [sp, #19]
 8002df4:      	ldr	r0, [sp, #4]
 8002df6:      	cbz	r0, 0x8002dfe <core::option::Option<T>::unwrap_or::h57d45cfe6d34e911+0x20> @ imm = #4
 8002df8:      	b	0x8002dfa <core::option::Option<T>::unwrap_or::h57d45cfe6d34e911+0x1c> @ imm = #-2
 8002dfa:      	b	0x8002e0a <core::option::Option<T>::unwrap_or::h57d45cfe6d34e911+0x2c> @ imm = #12
 8002dfc:      	trap
 8002dfe:      	ldr	r0, [sp]
 8002e00:      	movs	r1, #0
 8002e02:      	strb.w	r1, [sp, #19]
 8002e06:      	str	r0, [sp, #12]
 8002e08:      	b	0x8002e12 <core::option::Option<T>::unwrap_or::h57d45cfe6d34e911+0x34> @ imm = #6
 8002e0a:      	ldr	r0, [sp, #8]
 8002e0c:      	str	r0, [sp, #24]
 8002e0e:      	str	r0, [sp, #12]
 8002e10:      	b	0x8002e12 <core::option::Option<T>::unwrap_or::h57d45cfe6d34e911+0x34> @ imm = #-2
 8002e12:      	ldrb.w	r0, [sp, #19]
 8002e16:      	lsls	r0, r0, #31
 8002e18:      	cbnz	r0, 0x8002e22 <core::option::Option<T>::unwrap_or::h57d45cfe6d34e911+0x44> @ imm = #6
 8002e1a:      	b	0x8002e1c <core::option::Option<T>::unwrap_or::h57d45cfe6d34e911+0x3e> @ imm = #-2
 8002e1c:      	ldr	r0, [sp, #12]
 8002e1e:      	add	sp, #28
 8002e20:      	bx	lr
 8002e22:      	b	0x8002e1c <core::option::Option<T>::unwrap_or::h57d45cfe6d34e911+0x3e> @ imm = #-10

08002e24 <core::option::Option<T>::unwrap_or_else::h1158e63276434cd1>:
 8002e24:      	push	{r7, lr}
 8002e26:      	mov	r7, sp
 8002e28:      	sub	sp, #40
 8002e2a:      	str	r3, [sp, #4]
 8002e2c:      	str	r2, [sp, #8]
 8002e2e:      	str	r0, [sp, #12]
 8002e30:      	str	r1, [sp, #16]
 8002e32:      	str	r2, [sp, #28]
 8002e34:      	str	r3, [sp, #32]
 8002e36:      	movs	r0, #0
 8002e38:      	strb	r0, [r7, #-13]
 8002e3c:      	movs	r0, #1
 8002e3e:      	strb	r0, [r7, #-13]
 8002e42:      	ldr	r0, [sp, #12]
 8002e44:      	cbz	r0, 0x8002e4c <core::option::Option<T>::unwrap_or_else::h1158e63276434cd1+0x28> @ imm = #4
 8002e46:      	b	0x8002e48 <core::option::Option<T>::unwrap_or_else::h1158e63276434cd1+0x24> @ imm = #-2
 8002e48:      	b	0x8002e5e <core::option::Option<T>::unwrap_or_else::h1158e63276434cd1+0x3a> @ imm = #18
 8002e4a:      	trap
 8002e4c:      	ldr	r1, [sp, #4]
 8002e4e:      	ldr	r0, [sp, #8]
 8002e50:      	movs	r2, #0
 8002e52:      	strb	r2, [r7, #-13]
 8002e56:      	bl	0x80021de <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::h1e470ca97af0f7bb> @ imm = #-3196
 8002e5a:      	str	r0, [sp, #20]
 8002e5c:      	b	0x8002e70 <core::option::Option<T>::unwrap_or_else::h1158e63276434cd1+0x4c> @ imm = #16
 8002e5e:      	ldr	r0, [sp, #16]
 8002e60:      	str	r0, [sp, #36]
 8002e62:      	str	r0, [sp, #20]
 8002e64:      	b	0x8002e66 <core::option::Option<T>::unwrap_or_else::h1158e63276434cd1+0x42> @ imm = #-2
 8002e66:      	ldrb	r0, [r7, #-13]
 8002e6a:      	lsls	r0, r0, #31
 8002e6c:      	cbnz	r0, 0x8002e78 <core::option::Option<T>::unwrap_or_else::h1158e63276434cd1+0x54> @ imm = #8
 8002e6e:      	b	0x8002e72 <core::option::Option<T>::unwrap_or_else::h1158e63276434cd1+0x4e> @ imm = #0
 8002e70:      	b	0x8002e66 <core::option::Option<T>::unwrap_or_else::h1158e63276434cd1+0x42> @ imm = #-14
 8002e72:      	ldr	r0, [sp, #20]
 8002e74:      	add	sp, #40
 8002e76:      	pop	{r7, pc}
 8002e78:      	b	0x8002e72 <core::option::Option<T>::unwrap_or_else::h1158e63276434cd1+0x4e> @ imm = #-10

08002e7a <core::option::Option<T>::unwrap_or_else::hf68f3eb960d12950>:
 8002e7a:      	push	{r7, lr}
 8002e7c:      	mov	r7, sp
 8002e7e:      	sub	sp, #40
 8002e80:      	str	r3, [sp, #4]
 8002e82:      	str	r2, [sp, #8]
 8002e84:      	str	r0, [sp, #12]
 8002e86:      	str	r1, [sp, #16]
 8002e88:      	str	r2, [sp, #28]
 8002e8a:      	str	r3, [sp, #32]
 8002e8c:      	movs	r0, #0
 8002e8e:      	strb	r0, [r7, #-13]
 8002e92:      	movs	r0, #1
 8002e94:      	strb	r0, [r7, #-13]
 8002e98:      	ldr	r0, [sp, #12]
 8002e9a:      	cbz	r0, 0x8002ea2 <core::option::Option<T>::unwrap_or_else::hf68f3eb960d12950+0x28> @ imm = #4
 8002e9c:      	b	0x8002e9e <core::option::Option<T>::unwrap_or_else::hf68f3eb960d12950+0x24> @ imm = #-2
 8002e9e:      	b	0x8002eb4 <core::option::Option<T>::unwrap_or_else::hf68f3eb960d12950+0x3a> @ imm = #18
 8002ea0:      	trap
 8002ea2:      	ldr	r1, [sp, #4]
 8002ea4:      	ldr	r0, [sp, #8]
 8002ea6:      	movs	r2, #0
 8002ea8:      	strb	r2, [r7, #-13]
 8002eac:      	bl	0x80021fa <stm32f4xx_hal::rcc::CFGR::freeze::{{closure}}::h5b22d4b11b6fe3b7> @ imm = #-3254
 8002eb0:      	str	r0, [sp, #20]
 8002eb2:      	b	0x8002ec6 <core::option::Option<T>::unwrap_or_else::hf68f3eb960d12950+0x4c> @ imm = #16
 8002eb4:      	ldr	r0, [sp, #16]
 8002eb6:      	str	r0, [sp, #36]
 8002eb8:      	str	r0, [sp, #20]
 8002eba:      	b	0x8002ebc <core::option::Option<T>::unwrap_or_else::hf68f3eb960d12950+0x42> @ imm = #-2
 8002ebc:      	ldrb	r0, [r7, #-13]
 8002ec0:      	lsls	r0, r0, #31
 8002ec2:      	cbnz	r0, 0x8002ece <core::option::Option<T>::unwrap_or_else::hf68f3eb960d12950+0x54> @ imm = #8
 8002ec4:      	b	0x8002ec8 <core::option::Option<T>::unwrap_or_else::hf68f3eb960d12950+0x4e> @ imm = #0
 8002ec6:      	b	0x8002ebc <core::option::Option<T>::unwrap_or_else::hf68f3eb960d12950+0x42> @ imm = #-14
 8002ec8:      	ldr	r0, [sp, #20]
 8002eca:      	add	sp, #40
 8002ecc:      	pop	{r7, pc}
 8002ece:      	b	0x8002ec8 <core::option::Option<T>::unwrap_or_else::hf68f3eb960d12950+0x4e> @ imm = #-10

08002ed0 <core::option::Option<T>::map::hcb47335b29e486d0>:
 8002ed0:      	push	{r7, lr}
 8002ed2:      	mov	r7, sp
 8002ed4:      	sub	sp, #40
 8002ed6:      	str	r3, [sp, #8]
 8002ed8:      	str	r0, [sp, #12]
 8002eda:      	str	r1, [sp, #16]
 8002edc:      	str	r2, [sp, #20]
 8002ede:      	str	r3, [sp, #32]
 8002ee0:      	movs	r0, #0
 8002ee2:      	strb	r0, [r7, #-9]
 8002ee6:      	movs	r0, #1
 8002ee8:      	strb	r0, [r7, #-9]
 8002eec:      	ldr	r0, [sp, #16]
 8002eee:      	cbz	r0, 0x8002ef6 <core::option::Option<T>::map::hcb47335b29e486d0+0x26> @ imm = #4
 8002ef0:      	b	0x8002ef2 <core::option::Option<T>::map::hcb47335b29e486d0+0x22> @ imm = #-2
 8002ef2:      	b	0x8002efe <core::option::Option<T>::map::hcb47335b29e486d0+0x2e> @ imm = #8
 8002ef4:      	trap
 8002ef6:      	ldr	r1, [sp, #12]
 8002ef8:      	movs	r0, #0
 8002efa:      	str	r0, [r1]
 8002efc:      	b	0x8002f28 <core::option::Option<T>::map::hcb47335b29e486d0+0x58> @ imm = #40
 8002efe:      	ldr	r0, [sp, #8]
 8002f00:      	ldr	r1, [sp, #20]
 8002f02:      	str	r1, [sp, #36]
 8002f04:      	movs	r2, #0
 8002f06:      	strb	r2, [r7, #-9]
 8002f0a:      	str	r1, [sp, #24]
 8002f0c:      	ldr	r1, [sp, #24]
 8002f0e:      	bl	0x800248a <core::ops::function::impls::<impl core::ops::function::FnOnce<A> for &mut F>::call_once::h3990cb0b1989894f> @ imm = #-2696
 8002f12:      	str	r0, [sp]
 8002f14:      	str	r1, [sp, #4]
 8002f16:      	b	0x8002f18 <core::option::Option<T>::map::hcb47335b29e486d0+0x48> @ imm = #-2
 8002f18:      	ldr	r1, [sp, #12]
 8002f1a:      	ldr	r0, [sp, #4]
 8002f1c:      	ldr	r2, [sp]
 8002f1e:      	str	r2, [r1, #4]
 8002f20:      	str	r0, [r1, #8]
 8002f22:      	movs	r0, #1
 8002f24:      	str	r0, [r1]
 8002f26:      	b	0x8002f28 <core::option::Option<T>::map::hcb47335b29e486d0+0x58> @ imm = #-2
 8002f28:      	ldrb	r0, [r7, #-9]
 8002f2c:      	lsls	r0, r0, #31
 8002f2e:      	cbnz	r0, 0x8002f36 <core::option::Option<T>::map::hcb47335b29e486d0+0x66> @ imm = #4
 8002f30:      	b	0x8002f32 <core::option::Option<T>::map::hcb47335b29e486d0+0x62> @ imm = #-2
 8002f32:      	add	sp, #40
 8002f34:      	pop	{r7, pc}
 8002f36:      	b	0x8002f32 <core::option::Option<T>::map::hcb47335b29e486d0+0x62> @ imm = #-8

08002f38 <<core::option::Option<T> as core::ops::try_trait::Try>::branch::hfde8420b2aeaadc9>:
 8002f38:      	sub	sp, #16
 8002f3a:      	str	r1, [sp]
 8002f3c:      	str	r0, [sp, #4]
 8002f3e:      	ldr	r0, [r1]
 8002f40:      	cbz	r0, 0x8002f48 <<core::option::Option<T> as core::ops::try_trait::Try>::branch::hfde8420b2aeaadc9+0x10> @ imm = #4
 8002f42:      	b	0x8002f44 <<core::option::Option<T> as core::ops::try_trait::Try>::branch::hfde8420b2aeaadc9+0xc> @ imm = #-2
 8002f44:      	b	0x8002f50 <<core::option::Option<T> as core::ops::try_trait::Try>::branch::hfde8420b2aeaadc9+0x18> @ imm = #8
 8002f46:      	trap
 8002f48:      	ldr	r1, [sp, #4]
 8002f4a:      	movs	r0, #1
 8002f4c:      	str	r0, [r1]
 8002f4e:      	b	0x8002f66 <<core::option::Option<T> as core::ops::try_trait::Try>::branch::hfde8420b2aeaadc9+0x2e> @ imm = #20
 8002f50:      	ldr	r1, [sp, #4]
 8002f52:      	ldr	r0, [sp]
 8002f54:      	ldr	r2, [r0, #4]
 8002f56:      	ldr	r0, [r0, #8]
 8002f58:      	str	r2, [sp, #8]
 8002f5a:      	str	r0, [sp, #12]
 8002f5c:      	str	r2, [r1, #4]
 8002f5e:      	str	r0, [r1, #8]
 8002f60:      	movs	r0, #0
 8002f62:      	str	r0, [r1]
 8002f64:      	b	0x8002f66 <<core::option::Option<T> as core::ops::try_trait::Try>::branch::hfde8420b2aeaadc9+0x2e> @ imm = #-2
 8002f66:      	add	sp, #16
 8002f68:      	bx	lr

08002f6a <<core::option::Option<T> as core::ops::try_trait::FromResidual>::from_residual::h226034dad66526f3>:
 8002f6a:      	sub	sp, #4
 8002f6c:      	mov	r1, r0
 8002f6e:      	movs	r0, #0
 8002f70:      	str	r0, [r1]
 8002f72:      	add	sp, #4
 8002f74:      	bx	lr

08002f76 <<core::option::Option<T> as core::ops::try_trait::FromResidual>::from_residual::hb6143fdffe6a60a8>:
 8002f76:      	sub	sp, #12
 8002f78:      	movs	r0, #0
 8002f7a:      	str	r0, [sp]
 8002f7c:      	ldr	r0, [sp]
 8002f7e:      	ldr	r1, [sp, #4]
 8002f80:      	add	sp, #12
 8002f82:      	bx	lr

08002f84 <core::convert::num::<impl core::convert::From<u8> for u32>::from::he8b08c584ad136ba>:
 8002f84:      	sub	sp, #4
 8002f86:      	strb.w	r0, [sp, #3]
 8002f8a:      	uxtb	r0, r0
 8002f8c:      	add	sp, #4
 8002f8e:      	bx	lr

08002f90 <stm32f4xx_hal::gpio::gpiod::<impl stm32f4xx_hal::gpio::GpioExt for stm32f4::stm32f407::GPIOD>::split::{{closure}}::h400af3ef884982ab>:
 8002f90:      	sub	sp, #36
 8002f92:      	str	r0, [sp, #8]
 8002f94:      	str	r1, [sp, #12]
 8002f96:      	str	r1, [sp, #32]
 8002f98:      	str	r1, [sp, #28]
 8002f9a:      	ldr	r0, [sp, #28]
 8002f9c:      	str	r0, [sp]
 8002f9e:      	b	0x8002fa0 <stm32f4xx_hal::gpio::gpiod::<impl stm32f4xx_hal::gpio::GpioExt for stm32f4::stm32f407::GPIOD>::split::{{closure}}::h400af3ef884982ab+0x10> @ imm = #-2
 8002fa0:      	ldr	r1, [sp]
 8002fa2:      	str	r1, [sp, #16]
 8002fa4:      	str	r1, [sp, #20]
 8002fa6:      	movs	r0, #1
 8002fa8:      	strb.w	r0, [sp, #27]
 8002fac:      	ldr	r0, [r1]
 8002fae:      	bic	r0, r0, #8
 8002fb2:      	str	r0, [r1]
 8002fb4:      	ldr	r0, [r1]
 8002fb6:      	orr	r0, r0, #8
 8002fba:      	str	r0, [r1]
 8002fbc:      	b	0x8002fbe <stm32f4xx_hal::gpio::gpiod::<impl stm32f4xx_hal::gpio::GpioExt for stm32f4::stm32f407::GPIOD>::split::{{closure}}::h400af3ef884982ab+0x2e> @ imm = #-2
 8002fbe:      	ldr	r0, [sp]
 8002fc0:      	add	sp, #36
 8002fc2:      	bx	lr

08002fc4 <core::ops::function::FnMut::call_mut::h616842c2aa4764b6>:
 8002fc4:      	push	{r7, lr}
 8002fc6:      	mov	r7, sp
 8002fc8:      	sub	sp, #16
 8002fca:      	str	r1, [sp, #4]
 8002fcc:      	str	r2, [sp, #8]
 8002fce:      	str	r0, [sp, #12]
 8002fd0:      	ldr	r0, [sp, #4]
 8002fd2:      	ldr	r1, [sp, #8]
 8002fd4:      	bl	0x8002546 <core::iter::traits::iterator::Iterator::min_by_key::compare::h7d07136396b3b003> @ imm = #-2706
 8002fd8:      	str	r0, [sp]
 8002fda:      	b	0x8002fdc <core::ops::function::FnMut::call_mut::h616842c2aa4764b6+0x18> @ imm = #-2
 8002fdc:      	ldr	r0, [sp]
 8002fde:      	add	sp, #16
 8002fe0:      	pop	{r7, pc}

08002fe2 <core::ops::function::FnOnce::call_once::h204246c8431d37fb>:
 8002fe2:      	push	{r7, lr}
 8002fe4:      	mov	r7, sp
 8002fe6:      	sub	sp, #16
 8002fe8:      	str	r0, [sp, #4]
 8002fea:      	str	r1, [sp, #8]
 8002fec:      	ldr	r0, [sp, #4]
 8002fee:      	ldr	r1, [sp, #8]
 8002ff0:      	bl	0x8003266 <core::cmp::impls::<impl core::cmp::Ord for u32>::cmp::h49476e76852db959> @ imm = #626
 8002ff4:      	str	r0, [sp]
 8002ff6:      	b	0x8002ff8 <core::ops::function::FnOnce::call_once::h204246c8431d37fb+0x16> @ imm = #-2
 8002ff8:      	ldr	r0, [sp]
 8002ffa:      	add	sp, #16
 8002ffc:      	pop	{r7, pc}

08002ffe <core::ptr::drop_in_place<!>::he640f819cd2554c3>:
 8002ffe:      	sub	sp, #4
 8003000:      	str	r0, [sp]
 8003002:      	add	sp, #4
 8003004:      	bx	lr

08003006 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::disable_counter::{{closure}}::h226e898701d626d3>:
 8003006:      	sub	sp, #8
 8003008:      	str	r0, [sp, #4]
 800300a:      	bic	r0, r0, #1
 800300e:      	add	sp, #8
 8003010:      	bx	lr

08003012 <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::enable_counter::{{closure}}::hd210ceefb2e0d9bd>:
 8003012:      	sub	sp, #8
 8003014:      	str	r0, [sp, #4]
 8003016:      	orr	r0, r0, #1
 800301a:      	add	sp, #8
 800301c:      	bx	lr

0800301e <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::set_clock_source::{{closure}}::h2a7189eb5b11659b>:
 800301e:      	sub	sp, #8
 8003020:      	str	r0, [sp, #4]
 8003022:      	bic	r0, r0, #4
 8003026:      	add	sp, #8
 8003028:      	bx	lr

0800302a <cortex_m::peripheral::syst::<impl cortex_m::peripheral::SYST>::set_clock_source::{{closure}}::hfa9060af99d23a71>:
 800302a:      	sub	sp, #8
 800302c:      	str	r0, [sp, #4]
 800302e:      	orr	r0, r0, #4
 8003032:      	add	sp, #8
 8003034:      	bx	lr

08003036 <core::cmp::Ord::min::h3778fff7d8726d0d>:
 8003036:      	push	{r7, lr}
 8003038:      	mov	r7, sp
 800303a:      	sub	sp, #16
 800303c:      	str	r0, [sp, #8]
 800303e:      	str	r1, [sp, #12]
 8003040:      	bl	0x8003066 <core::cmp::min_by::h5d457cd306026b48> @ imm = #34
 8003044:      	str	r0, [sp, #4]
 8003046:      	b	0x8003048 <core::cmp::Ord::min::h3778fff7d8726d0d+0x12> @ imm = #-2
 8003048:      	ldr	r0, [sp, #4]
 800304a:      	add	sp, #16
 800304c:      	pop	{r7, pc}

0800304e <core::cmp::min::h2d0ec0d421dc37a2>:
 800304e:      	push	{r7, lr}
 8003050:      	mov	r7, sp
 8003052:      	sub	sp, #16
 8003054:      	str	r0, [sp, #8]
 8003056:      	str	r1, [sp, #12]
 8003058:      	bl	0x8003036 <core::cmp::Ord::min::h3778fff7d8726d0d> @ imm = #-38
 800305c:      	str	r0, [sp, #4]
 800305e:      	b	0x8003060 <core::cmp::min::h2d0ec0d421dc37a2+0x12> @ imm = #-2
 8003060:      	ldr	r0, [sp, #4]
 8003062:      	add	sp, #16
 8003064:      	pop	{r7, pc}

08003066 <core::cmp::min_by::h5d457cd306026b48>:
 8003066:      	push	{r7, lr}
 8003068:      	mov	r7, sp
 800306a:      	sub	sp, #32
 800306c:      	str	r0, [sp]
 800306e:      	str	r1, [sp, #4]
 8003070:      	movs	r0, #0
 8003072:      	strb	r0, [r7, #-5]
 8003076:      	strb	r0, [r7, #-6]
 800307a:      	movs	r0, #1
 800307c:      	strb	r0, [r7, #-5]
 8003080:      	strb	r0, [r7, #-6]
 8003084:      	mov	r0, sp
 8003086:      	str	r0, [sp, #16]
 8003088:      	add	r0, sp, #4
 800308a:      	str	r0, [sp, #20]
 800308c:      	ldr	r0, [sp, #16]
 800308e:      	ldr	r1, [sp, #20]
 8003090:      	bl	0x8002fe2 <core::ops::function::FnOnce::call_once::h204246c8431d37fb> @ imm = #-178
 8003094:      	strb	r0, [r7, #-17]
 8003098:      	b	0x800309a <core::cmp::min_by::h5d457cd306026b48+0x34> @ imm = #-2
 800309a:      	ldrb	r1, [r7, #-17]
 800309e:      	adds	r0, r1, #1
 80030a0:      	uxtb	r0, r0
 80030a2:      	cmp	r0, #2
 80030a4:      	blo	0x80030ac <core::cmp::min_by::h5d457cd306026b48+0x46> @ imm = #4
 80030a6:      	b	0x80030a8 <core::cmp::min_by::h5d457cd306026b48+0x42> @ imm = #-2
 80030a8:      	b	0x80030b8 <core::cmp::min_by::h5d457cd306026b48+0x52> @ imm = #12
 80030aa:      	trap
 80030ac:      	movs	r0, #0
 80030ae:      	strb	r0, [r7, #-5]
 80030b2:      	ldr	r0, [sp]
 80030b4:      	str	r0, [sp, #8]
 80030b6:      	b	0x80030c4 <core::cmp::min_by::h5d457cd306026b48+0x5e> @ imm = #10
 80030b8:      	movs	r0, #0
 80030ba:      	strb	r0, [r7, #-6]
 80030be:      	ldr	r0, [sp, #4]
 80030c0:      	str	r0, [sp, #8]
 80030c2:      	b	0x80030c4 <core::cmp::min_by::h5d457cd306026b48+0x5e> @ imm = #-2
 80030c4:      	ldrb	r0, [r7, #-6]
 80030c8:      	lsls	r0, r0, #31
 80030ca:      	cbnz	r0, 0x80030d8 <core::cmp::min_by::h5d457cd306026b48+0x72> @ imm = #10
 80030cc:      	b	0x80030ce <core::cmp::min_by::h5d457cd306026b48+0x68> @ imm = #-2
 80030ce:      	ldrb	r0, [r7, #-5]
 80030d2:      	lsls	r0, r0, #31
 80030d4:      	cbnz	r0, 0x80030e0 <core::cmp::min_by::h5d457cd306026b48+0x7a> @ imm = #8
 80030d6:      	b	0x80030da <core::cmp::min_by::h5d457cd306026b48+0x74> @ imm = #0
 80030d8:      	b	0x80030ce <core::cmp::min_by::h5d457cd306026b48+0x68> @ imm = #-14
 80030da:      	ldr	r0, [sp, #8]
 80030dc:      	add	sp, #32
 80030de:      	pop	{r7, pc}
 80030e0:      	b	0x80030da <core::cmp::min_by::h5d457cd306026b48+0x74> @ imm = #-10

080030e2 <core::cmp::min_by::h824bfb20b98acc87>:
 80030e2:      	push	{r7, lr}
 80030e4:      	mov	r7, sp
 80030e6:      	sub	sp, #40
 80030e8:      	mov	r12, r0
 80030ea:      	ldr	r0, [r7, #8]
 80030ec:      	str.w	r12, [sp]
 80030f0:      	str	r1, [sp, #4]
 80030f2:      	str	r2, [sp, #8]
 80030f4:      	str	r3, [sp, #12]
 80030f6:      	movs	r1, #0
 80030f8:      	strb	r1, [r7, #-1]
 80030fc:      	strb	r1, [r7, #-2]
 8003100:      	movs	r1, #1
 8003102:      	strb	r1, [r7, #-1]
 8003106:      	strb	r1, [r7, #-2]
 800310a:      	mov	r1, sp
 800310c:      	str	r1, [sp, #28]
 800310e:      	add	r1, sp, #8
 8003110:      	str	r1, [sp, #32]
 8003112:      	ldr	r1, [sp, #28]
 8003114:      	ldr	r2, [sp, #32]
 8003116:      	bl	0x80024a8 <core::ops::function::impls::<impl core::ops::function::FnOnce<A> for &mut F>::call_once::h515d2a4a002361c0> @ imm = #-3186
 800311a:      	strb	r0, [r7, #-13]
 800311e:      	b	0x8003120 <core::cmp::min_by::h824bfb20b98acc87+0x3e> @ imm = #-2
 8003120:      	ldrb	r1, [r7, #-13]
 8003124:      	adds	r0, r1, #1
 8003126:      	uxtb	r0, r0
 8003128:      	cmp	r0, #2
 800312a:      	blo	0x8003132 <core::cmp::min_by::h824bfb20b98acc87+0x50> @ imm = #4
 800312c:      	b	0x800312e <core::cmp::min_by::h824bfb20b98acc87+0x4c> @ imm = #-2
 800312e:      	b	0x8003142 <core::cmp::min_by::h824bfb20b98acc87+0x60> @ imm = #16
 8003130:      	trap
 8003132:      	movs	r0, #0
 8003134:      	strb	r0, [r7, #-1]
 8003138:      	ldr	r1, [sp]
 800313a:      	ldr	r0, [sp, #4]
 800313c:      	str	r1, [sp, #16]
 800313e:      	str	r0, [sp, #20]
 8003140:      	b	0x8003152 <core::cmp::min_by::h824bfb20b98acc87+0x70> @ imm = #14
 8003142:      	movs	r0, #0
 8003144:      	strb	r0, [r7, #-2]
 8003148:      	ldr	r1, [sp, #8]
 800314a:      	ldr	r0, [sp, #12]
 800314c:      	str	r1, [sp, #16]
 800314e:      	str	r0, [sp, #20]
 8003150:      	b	0x8003152 <core::cmp::min_by::h824bfb20b98acc87+0x70> @ imm = #-2
 8003152:      	ldrb	r0, [r7, #-2]
 8003156:      	lsls	r0, r0, #31
 8003158:      	cbnz	r0, 0x8003166 <core::cmp::min_by::h824bfb20b98acc87+0x84> @ imm = #10
 800315a:      	b	0x800315c <core::cmp::min_by::h824bfb20b98acc87+0x7a> @ imm = #-2
 800315c:      	ldrb	r0, [r7, #-1]
 8003160:      	lsls	r0, r0, #31
 8003162:      	cbnz	r0, 0x8003170 <core::cmp::min_by::h824bfb20b98acc87+0x8e> @ imm = #10
 8003164:      	b	0x8003168 <core::cmp::min_by::h824bfb20b98acc87+0x86> @ imm = #0
 8003166:      	b	0x800315c <core::cmp::min_by::h824bfb20b98acc87+0x7a> @ imm = #-14
 8003168:      	ldr	r0, [sp, #16]
 800316a:      	ldr	r1, [sp, #20]
 800316c:      	add	sp, #40
 800316e:      	pop	{r7, pc}
 8003170:      	b	0x8003168 <core::cmp::min_by::h824bfb20b98acc87+0x86> @ imm = #-12

08003172 <<T as core::convert::From<T>>::from::h27edaab713fafa61>:
 8003172:      	sub	sp, #4
 8003174:      	trap
 8003176:      	trap

08003178 <_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17ha152f828f899faf1E>:
 8003178:      	push	{r7, lr}
 800317a:      	mov	r7, sp
 800317c:      	sub	sp, #32
 800317e:      	str	r2, [sp, #8]
 8003180:      	str	r0, [sp, #12]
 8003182:      	str	r1, [sp, #16]
 8003184:      	movs	r0, #1
 8003186:      	cbnz	r0, 0x800318e <_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17ha152f828f899faf1E+0x16> @ imm = #4
 8003188:      	b	0x800318a <_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17ha152f828f899faf1E+0x12> @ imm = #-2
 800318a:      	b	0x800319a <_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17ha152f828f899faf1E+0x22> @ imm = #12
 800318c:      	trap
 800318e:      	ldr	r0, [sp, #12]
 8003190:      	ldr	r1, [sp, #16]
 8003192:      	str	r0, [sp, #24]
 8003194:      	str	r1, [sp, #28]
 8003196:      	add	sp, #32
 8003198:      	pop	{r7, pc}
 800319a:      	ldr	r0, [sp, #8]
 800319c:      	mov	r1, sp
 800319e:      	str	r0, [r1]
 80031a0:      	movw	r0, #17625
 80031a4:      	movt	r0, #2048
 80031a8:      	movw	r3, #17668
 80031ac:      	movt	r3, #2048
 80031b0:      	movs	r1, #43
 80031b2:      	add	r2, sp, #20
 80031b4:      	bl	0x800360c <core::result::unwrap_failed::h2b222072fa40cc3c> @ imm = #1108
 80031b8:      	trap

080031ba <_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$11from_output17h5e212015da7162beE>:
 80031ba:      	sub	sp, #16
 80031bc:      	str	r0, [sp, #8]
 80031be:      	str	r1, [sp, #12]
 80031c0:      	str	r0, [sp]
 80031c2:      	str	r1, [sp, #4]
 80031c4:      	ldr	r0, [sp]
 80031c6:      	ldr	r1, [sp, #4]
 80031c8:      	add	sp, #16
 80031ca:      	bx	lr

080031cc <_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6eac61d8ffe738baE>:
 80031cc:      	sub	sp, #32
 80031ce:      	str	r0, [sp]
 80031d0:      	str	r1, [sp, #4]
 80031d2:      	movs	r0, #1
 80031d4:      	cbnz	r0, 0x80031dc <_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6eac61d8ffe738baE+0x10> @ imm = #4
 80031d6:      	b	0x80031d8 <_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6eac61d8ffe738baE+0xc> @ imm = #-2
 80031d8:      	b	0x80031ea <_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6eac61d8ffe738baE+0x1e> @ imm = #14
 80031da:      	trap
 80031dc:      	ldr	r1, [sp]
 80031de:      	ldr	r0, [sp, #4]
 80031e0:      	str	r1, [sp, #24]
 80031e2:      	str	r0, [sp, #28]
 80031e4:      	str	r1, [sp, #8]
 80031e6:      	str	r0, [sp, #12]
 80031e8:      	b	0x80031f0 <_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6eac61d8ffe738baE+0x24> @ imm = #4
 80031ea:      	trap
 80031ec:      	trap
 80031ee:      	b	0x80031f0 <_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6eac61d8ffe738baE+0x24> @ imm = #-2
 80031f0:      	ldr	r0, [sp, #8]
 80031f2:      	ldr	r1, [sp, #12]
 80031f4:      	add	sp, #32
 80031f6:      	bx	lr

080031f8 <_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17ha7411284cbaa051eE>:
 80031f8:      	push	{r7, lr}
 80031fa:      	mov	r7, sp
 80031fc:      	sub	sp, #16
 80031fe:      	bl	0x8003172 <<T as core::convert::From<T>>::from::h27edaab713fafa61> @ imm = #-144
 8003202:      	b	0x8003204 <_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17ha7411284cbaa051eE+0xc> @ imm = #-2
 8003204:      	trap
 8003206:      	ldr	r0, [sp]
 8003208:      	ldr	r1, [sp, #4]
 800320a:      	add	sp, #16
 800320c:      	pop	{r7, pc}

0800320e <core::clone::impls::<impl core::clone::Clone for u32>::clone::h0b2bcaf7f494655c>:
 800320e:      	sub	sp, #4
 8003210:      	str	r0, [sp]
 8003212:      	ldr	r0, [r0]
 8003214:      	add	sp, #4
 8003216:      	bx	lr

08003218 <core::cmp::impls::<impl core::cmp::PartialEq for u32>::eq::he7cd35f3d42964ea>:
 8003218:      	sub	sp, #8
 800321a:      	str	r0, [sp]
 800321c:      	str	r1, [sp, #4]
 800321e:      	ldr	r0, [r0]
 8003220:      	ldr	r1, [r1]
 8003222:      	subs	r0, r0, r1
 8003224:      	clz	r0, r0
 8003228:      	lsrs	r0, r0, #5
 800322a:      	add	sp, #8
 800322c:      	bx	lr

0800322e <core::cmp::impls::<impl core::cmp::PartialOrd for u32>::lt::h81b94b80207f294d>:
 800322e:      	sub	sp, #12
 8003230:      	str	r1, [sp]
 8003232:      	mov	r1, r0
 8003234:      	ldr	r0, [sp]
 8003236:      	str	r1, [sp, #4]
 8003238:      	str	r0, [sp, #8]
 800323a:      	ldr	r1, [r1]
 800323c:      	ldr	r2, [r0]
 800323e:      	movs	r0, #0
 8003240:      	cmp	r1, r2
 8003242:      	it	lo
 8003244:      	movlo	r0, #1
 8003246:      	add	sp, #12
 8003248:      	bx	lr

0800324a <core::cmp::impls::<impl core::cmp::PartialOrd for u32>::le::h012faf4f6315d2b6>:
 800324a:      	sub	sp, #12
 800324c:      	str	r1, [sp]
 800324e:      	mov	r1, r0
 8003250:      	ldr	r0, [sp]
 8003252:      	str	r1, [sp, #4]
 8003254:      	str	r0, [sp, #8]
 8003256:      	ldr	r1, [r1]
 8003258:      	ldr	r2, [r0]
 800325a:      	movs	r0, #0
 800325c:      	cmp	r1, r2
 800325e:      	it	ls
 8003260:      	movls	r0, #1
 8003262:      	add	sp, #12
 8003264:      	bx	lr

08003266 <core::cmp::impls::<impl core::cmp::Ord for u32>::cmp::h49476e76852db959>:
 8003266:      	sub	sp, #20
 8003268:      	str	r1, [sp]
 800326a:      	str	r0, [sp, #4]
 800326c:      	str	r0, [sp, #12]
 800326e:      	str	r1, [sp, #16]
 8003270:      	ldr	r0, [r0]
 8003272:      	ldr	r1, [r1]
 8003274:      	cmp	r0, r1
 8003276:      	blo	0x8003288 <core::cmp::impls::<impl core::cmp::Ord for u32>::cmp::h49476e76852db959+0x22> @ imm = #14
 8003278:      	b	0x800327a <core::cmp::impls::<impl core::cmp::Ord for u32>::cmp::h49476e76852db959+0x14> @ imm = #-2
 800327a:      	ldr	r1, [sp]
 800327c:      	ldr	r0, [sp, #4]
 800327e:      	ldr	r0, [r0]
 8003280:      	ldr	r1, [r1]
 8003282:      	cmp	r0, r1
 8003284:      	beq	0x80032a0 <core::cmp::impls::<impl core::cmp::Ord for u32>::cmp::h49476e76852db959+0x3a> @ imm = #24
 8003286:      	b	0x8003298 <core::cmp::impls::<impl core::cmp::Ord for u32>::cmp::h49476e76852db959+0x32> @ imm = #14
 8003288:      	movs	r0, #255
 800328a:      	strb.w	r0, [sp, #11]
 800328e:      	b	0x8003290 <core::cmp::impls::<impl core::cmp::Ord for u32>::cmp::h49476e76852db959+0x2a> @ imm = #-2
 8003290:      	ldrb.w	r0, [sp, #11]
 8003294:      	add	sp, #20
 8003296:      	bx	lr
 8003298:      	movs	r0, #1
 800329a:      	strb.w	r0, [sp, #11]
 800329e:      	b	0x80032a8 <core::cmp::impls::<impl core::cmp::Ord for u32>::cmp::h49476e76852db959+0x42> @ imm = #6
 80032a0:      	movs	r0, #0
 80032a2:      	strb.w	r0, [sp, #11]
 80032a6:      	b	0x80032a8 <core::cmp::impls::<impl core::cmp::Ord for u32>::cmp::h49476e76852db959+0x42> @ imm = #-2
 80032a8:      	b	0x8003290 <core::cmp::impls::<impl core::cmp::Ord for u32>::cmp::h49476e76852db959+0x2a> @ imm = #-28

080032aa <<u32 as core::ops::arith::Div>::div::hcefa2ddda5419156>:
 80032aa:      	push	{r7, lr}
 80032ac:      	mov	r7, sp
 80032ae:      	sub	sp, #16
 80032b0:      	str	r1, [sp]
 80032b2:      	str	r0, [sp, #4]
 80032b4:      	str	r0, [sp, #8]
 80032b6:      	str	r1, [sp, #12]
 80032b8:      	cbz	r1, 0x80032c8 <<u32 as core::ops::arith::Div>::div::hcefa2ddda5419156+0x1e> @ imm = #12
 80032ba:      	b	0x80032bc <<u32 as core::ops::arith::Div>::div::hcefa2ddda5419156+0x12> @ imm = #-2
 80032bc:      	ldr	r0, [sp, #4]
 80032be:      	ldr	r1, [sp]
 80032c0:      	udiv	r0, r0, r1
 80032c4:      	add	sp, #16
 80032c6:      	pop	{r7, pc}
 80032c8:      	movw	r0, #17600
 80032cc:      	movt	r0, #2048
 80032d0:      	movw	r2, #17764
 80032d4:      	movt	r2, #2048
 80032d8:      	movs	r1, #25
 80032da:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #662
 80032de:      	trap

080032e0 <<u32 as core::ops::arith::Div<&u32>>::div::he3cbbf6d2a47f743>:
 80032e0:      	push	{r7, lr}
 80032e2:      	mov	r7, sp
 80032e4:      	sub	sp, #16
 80032e6:      	str	r0, [sp, #8]
 80032e8:      	str	r1, [sp, #12]
 80032ea:      	ldr	r1, [r1]
 80032ec:      	bl	0x80032aa <<u32 as core::ops::arith::Div>::div::hcefa2ddda5419156> @ imm = #-70
 80032f0:      	str	r0, [sp, #4]
 80032f2:      	b	0x80032f4 <<u32 as core::ops::arith::Div<&u32>>::div::he3cbbf6d2a47f743+0x14> @ imm = #-2
 80032f4:      	ldr	r0, [sp, #4]
 80032f6:      	add	sp, #16
 80032f8:      	pop	{r7, pc}

080032fa <<stm32f4::stm32f407::RCC as core::ops::deref::Deref>::deref::h9fca7e46bd324da6>:
 80032fa:      	sub	sp, #4
 80032fc:      	str	r0, [sp]
 80032fe:      	b	0x8003300 <<stm32f4::stm32f407::RCC as core::ops::deref::Deref>::deref::h9fca7e46bd324da6+0x6> @ imm = #-2
 8003300:      	movw	r0, #14336
 8003304:      	movt	r0, #16386
 8003308:      	add	sp, #4
 800330a:      	bx	lr

0800330c <stm32f4::stm32f407::Peripherals::steal::ha707f80f92bc4614>:
 800330c:      	movw	r1, #0
 8003310:      	movt	r1, #8192
 8003314:      	movs	r0, #1
 8003316:      	strb	r0, [r1]
 8003318:      	bx	lr

0800331a <core::ptr::read::h81f7074ce3060a33>:
 800331a:      	sub	sp, #32
 800331c:      	str	r0, [sp, #4]
 800331e:      	str	r0, [sp, #12]
 8003320:      	ldr	r0, [sp, #16]
 8003322:      	str	r0, [sp, #8]
 8003324:      	b	0x8003326 <core::ptr::read::h81f7074ce3060a33+0xc> @ imm = #-2
 8003326:      	add	r0, sp, #8
 8003328:      	str	r0, [sp, #20]
 800332a:      	b	0x800332c <core::ptr::read::h81f7074ce3060a33+0x12> @ imm = #-2
 800332c:      	ldr	r0, [sp, #4]
 800332e:      	ldr	r0, [r0]
 8003330:      	str	r0, [sp, #8]
 8003332:      	ldr	r0, [sp, #8]
 8003334:      	str	r0, [sp]
 8003336:      	str	r0, [sp, #24]
 8003338:      	str	r0, [sp, #28]
 800333a:      	b	0x800333c <core::ptr::read::h81f7074ce3060a33+0x22> @ imm = #-2
 800333c:      	ldr	r0, [sp]
 800333e:      	add	sp, #32
 8003340:      	bx	lr

08003342 <core::ptr::write::h5648ecb0052572a9>:
 8003342:      	sub	sp, #12
 8003344:      	str	r1, [sp]
 8003346:      	mov	r1, r0
 8003348:      	ldr	r0, [sp]
 800334a:      	str	r0, [sp, #4]
 800334c:      	str	r1, [sp, #8]
 800334e:      	ldr	r0, [sp, #4]
 8003350:      	str	r0, [r1]
 8003352:      	add	sp, #12
 8003354:      	bx	lr

08003356 <core::ptr::write_volatile::hcf6930d2d3fda25b>:
 8003356:      	sub	sp, #8
 8003358:      	str	r0, [sp]
 800335a:      	str	r1, [sp, #4]
 800335c:      	str	r1, [r0]
 800335e:      	b	0x8003360 <core::ptr::write_volatile::hcf6930d2d3fda25b+0xa> @ imm = #-2
 8003360:      	add	sp, #8
 8003362:      	bx	lr

08003364 <Reset>:
 8003364:      	push	{r7, lr}
 8003366:      	mov	r7, sp
 8003368:      	bl	0x80033c0 <__pre_init>  @ imm = #84
 800336c:      	b	0x800336e <Reset+0xa>   @ imm = #-2
 800336e:      	movw	r0, #0
 8003372:      	movt	r0, #8192
 8003376:      	movw	r1, #4
 800337a:      	movt	r1, #8192
 800337e:      	bl	0x8003426 <r0::zero_bss::ha1173e952a66e0c3> @ imm = #164
 8003382:      	b	0x8003384 <Reset+0x20>  @ imm = #-2
 8003384:      	movw	r0, #0
 8003388:      	movt	r0, #8192
 800338c:      	movw	r1, #0
 8003390:      	movt	r1, #8192
 8003394:      	movw	r2, #18380
 8003398:      	movt	r2, #2048
 800339c:      	bl	0x80033c2 <r0::init_data::hf3c52a8e15e3e020> @ imm = #34
 80033a0:      	b	0x80033a2 <Reset+0x3e>  @ imm = #-2
 80033a2:      	bl	0x80001f4 <main>        @ imm = #-12722
 80033a6:      	trap

080033a8 <WWDG>:
 80033a8:      	push	{r7, lr}
 80033aa:      	mov	r7, sp
 80033ac:      	sub	sp, #8
 80033ae:      	b	0x80033b0 <WWDG+0x8>    @ imm = #-2
 80033b0:      	movs	r0, #4
 80033b2:      	strb	r0, [r7, #-1]
 80033b6:      	ldrb	r0, [r7, #-1]
 80033ba:      	bl	0x80034c4 <core::sync::atomic::compiler_fence::h87e4a25d4ba995ec> @ imm = #262
 80033be:      	b	0x80033b0 <WWDG+0x8>    @ imm = #-18

080033c0 <__pre_init>:
 80033c0:      	bx	lr

080033c2 <r0::init_data::hf3c52a8e15e3e020>:
 80033c2:      	push	{r7, lr}
 80033c4:      	mov	r7, sp
 80033c6:      	sub	sp, #56
 80033c8:      	str	r1, [sp, #16]
 80033ca:      	str	r0, [sp, #20]
 80033cc:      	str	r2, [sp, #24]
 80033ce:      	str	r1, [sp, #28]
 80033d0:      	b	0x80033d2 <r0::init_data::hf3c52a8e15e3e020+0x10> @ imm = #-2
 80033d2:      	ldr	r1, [sp, #16]
 80033d4:      	ldr	r0, [sp, #20]
 80033d6:      	cmp	r0, r1
 80033d8:      	blo	0x80033e0 <r0::init_data::hf3c52a8e15e3e020+0x1e> @ imm = #4
 80033da:      	b	0x80033dc <r0::init_data::hf3c52a8e15e3e020+0x1a> @ imm = #-2
 80033dc:      	add	sp, #56
 80033de:      	pop	{r7, pc}
 80033e0:      	ldr	r0, [sp, #20]
 80033e2:      	str	r0, [sp, #8]
 80033e4:      	ldr	r0, [sp, #24]
 80033e6:      	bl	0x800331a <core::ptr::read::h81f7074ce3060a33> @ imm = #-208
 80033ea:      	str	r0, [sp, #12]
 80033ec:      	b	0x80033ee <r0::init_data::hf3c52a8e15e3e020+0x2c> @ imm = #-2
 80033ee:      	ldr	r1, [sp, #12]
 80033f0:      	ldr	r0, [sp, #8]
 80033f2:      	bl	0x8003342 <core::ptr::write::h5648ecb0052572a9> @ imm = #-180
 80033f6:      	b	0x80033f8 <r0::init_data::hf3c52a8e15e3e020+0x36> @ imm = #-2
 80033f8:      	ldr	r0, [sp, #20]
 80033fa:      	str	r0, [sp, #44]
 80033fc:      	movs	r1, #1
 80033fe:      	str	r1, [sp, #48]
 8003400:      	adds	r0, #4
 8003402:      	str	r0, [sp, #52]
 8003404:      	ldr	r0, [sp, #52]
 8003406:      	str	r0, [sp, #4]
 8003408:      	b	0x800340a <r0::init_data::hf3c52a8e15e3e020+0x48> @ imm = #-2
 800340a:      	ldr	r0, [sp, #4]
 800340c:      	str	r0, [sp, #20]
 800340e:      	ldr	r0, [sp, #24]
 8003410:      	str	r0, [sp, #32]
 8003412:      	movs	r1, #1
 8003414:      	str	r1, [sp, #36]
 8003416:      	adds	r0, #4
 8003418:      	str	r0, [sp, #40]
 800341a:      	ldr	r0, [sp, #40]
 800341c:      	str	r0, [sp]
 800341e:      	b	0x8003420 <r0::init_data::hf3c52a8e15e3e020+0x5e> @ imm = #-2
 8003420:      	ldr	r0, [sp]
 8003422:      	str	r0, [sp, #24]
 8003424:      	b	0x80033d2 <r0::init_data::hf3c52a8e15e3e020+0x10> @ imm = #-86

08003426 <r0::zero_bss::ha1173e952a66e0c3>:
 8003426:      	push	{r7, lr}
 8003428:      	mov	r7, sp
 800342a:      	sub	sp, #48
 800342c:      	str	r1, [sp, #16]
 800342e:      	str	r0, [sp, #20]
 8003430:      	str	r1, [sp, #24]
 8003432:      	b	0x8003434 <r0::zero_bss::ha1173e952a66e0c3+0xe> @ imm = #-2
 8003434:      	ldr	r1, [sp, #16]
 8003436:      	ldr	r0, [sp, #20]
 8003438:      	cmp	r0, r1
 800343a:      	blo	0x8003442 <r0::zero_bss::ha1173e952a66e0c3+0x1c> @ imm = #4
 800343c:      	b	0x800343e <r0::zero_bss::ha1173e952a66e0c3+0x18> @ imm = #-2
 800343e:      	add	sp, #48
 8003440:      	pop	{r7, pc}
 8003442:      	ldr	r0, [sp, #20]
 8003444:      	str	r0, [sp, #8]
 8003446:      	bl	0x8003476 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h202af6f1214bfba4> @ imm = #44
 800344a:      	mov	r1, r0
 800344c:      	str	r1, [sp, #12]
 800344e:      	str	r0, [sp, #28]
 8003450:      	str	r0, [sp, #32]
 8003452:      	b	0x8003454 <r0::zero_bss::ha1173e952a66e0c3+0x2e> @ imm = #-2
 8003454:      	ldr	r1, [sp, #12]
 8003456:      	ldr	r0, [sp, #8]
 8003458:      	bl	0x8003356 <core::ptr::write_volatile::hcf6930d2d3fda25b> @ imm = #-262
 800345c:      	b	0x800345e <r0::zero_bss::ha1173e952a66e0c3+0x38> @ imm = #-2
 800345e:      	ldr	r0, [sp, #20]
 8003460:      	str	r0, [sp, #36]
 8003462:      	movs	r1, #1
 8003464:      	str	r1, [sp, #40]
 8003466:      	adds	r0, #4
 8003468:      	str	r0, [sp, #44]
 800346a:      	ldr	r0, [sp, #44]
 800346c:      	str	r0, [sp, #4]
 800346e:      	b	0x8003470 <r0::zero_bss::ha1173e952a66e0c3+0x4a> @ imm = #-2
 8003470:      	ldr	r0, [sp, #4]
 8003472:      	str	r0, [sp, #20]
 8003474:      	b	0x8003434 <r0::zero_bss::ha1173e952a66e0c3+0xe> @ imm = #-68

08003476 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h202af6f1214bfba4>:
 8003476:      	push	{r7, lr}
 8003478:      	mov	r7, sp
 800347a:      	sub	sp, #24
 800347c:      	ldr	r0, [sp, #4]
 800347e:      	str	r0, [sp]
 8003480:      	b	0x8003482 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h202af6f1214bfba4+0xc> @ imm = #-2
 8003482:      	mov	r0, sp
 8003484:      	str	r0, [sp, #8]
 8003486:      	b	0x8003488 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h202af6f1214bfba4+0x12> @ imm = #-2
 8003488:      	mov	r0, sp
 800348a:      	str	r0, [sp, #12]
 800348c:      	movs	r1, #0
 800348e:      	strb	r1, [r7, #-5]
 8003492:      	movs	r2, #1
 8003494:      	str	r2, [sp, #20]
 8003496:      	bl	0x80034a2 <core::intrinsics::write_bytes::hd8cd0bf9218065c8> @ imm = #8
 800349a:      	b	0x800349c <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h202af6f1214bfba4+0x26> @ imm = #-2
 800349c:      	ldr	r0, [sp]
 800349e:      	add	sp, #24
 80034a0:      	pop	{r7, pc}

080034a2 <core::intrinsics::write_bytes::hd8cd0bf9218065c8>:
 80034a2:      	push	{r7, lr}
 80034a4:      	mov	r7, sp
 80034a6:      	sub	sp, #16
 80034a8:      	str	r2, [sp]
 80034aa:      	mov	r2, r1
 80034ac:      	ldr	r1, [sp]
 80034ae:      	str	r0, [sp, #4]
 80034b0:      	strb	r2, [r7, #-5]
 80034b4:      	str	r1, [sp, #12]
 80034b6:      	lsls	r1, r1, #2
 80034b8:      	uxtb	r2, r2
 80034ba:      	bl	0x8003da8 <__aeabi_memset4> @ imm = #2282
 80034be:      	b	0x80034c0 <core::intrinsics::write_bytes::hd8cd0bf9218065c8+0x1e> @ imm = #-2
 80034c0:      	add	sp, #16
 80034c2:      	pop	{r7, pc}

080034c4 <core::sync::atomic::compiler_fence::h87e4a25d4ba995ec>:
 80034c4:      	push	{r7, lr}
 80034c6:      	mov	r7, sp
 80034c8:      	sub	sp, #8
 80034ca:      	strb	r0, [r7, #-1]
 80034ce:      	ldrb	r0, [r7, #-1]
 80034d2:      	str	r0, [sp]
 80034d4:      	ldr	r1, [sp]
 80034d6:      	tbb	[pc, r1]

080034da <$d.1>:
 80034da:	04 10 11 12	.word	0x12111004
 80034de:	13 00		.short	0x0013

080034e0 <$t.2>:
 80034e0:      	trap
 80034e2:      	movw	r0, #17780
 80034e6:      	movt	r0, #2048
 80034ea:      	movw	r2, #17912
 80034ee:      	movt	r2, #2048
 80034f2:      	movs	r1, #50
 80034f4:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #124
 80034f8:      	trap
 80034fa:      	b	0x8003502 <$t.2+0x22>   @ imm = #4
 80034fc:      	b	0x8003502 <$t.2+0x22>   @ imm = #2
 80034fe:      	b	0x8003502 <$t.2+0x22>   @ imm = #0
 8003500:      	b	0x8003502 <$t.2+0x22>   @ imm = #-2
 8003502:      	add	sp, #8
 8003504:      	pop	{r7, pc}

08003506 <core::ptr::read::hb359dccd529d198c>:
 8003506:      	sub	sp, #32
 8003508:      	str	r0, [sp, #4]
 800350a:      	str	r0, [sp, #12]
 800350c:      	ldr	r0, [sp, #16]
 800350e:      	str	r0, [sp, #8]
 8003510:      	b	0x8003512 <core::ptr::read::hb359dccd529d198c+0xc> @ imm = #-2
 8003512:      	add	r0, sp, #8
 8003514:      	str	r0, [sp, #20]
 8003516:      	b	0x8003518 <core::ptr::read::hb359dccd529d198c+0x12> @ imm = #-2
 8003518:      	ldr	r0, [sp, #4]
 800351a:      	ldr	r0, [r0]
 800351c:      	str	r0, [sp, #8]
 800351e:      	ldr	r0, [sp, #8]
 8003520:      	str	r0, [sp]
 8003522:      	str	r0, [sp, #24]
 8003524:      	str	r0, [sp, #28]
 8003526:      	b	0x8003528 <core::ptr::read::hb359dccd529d198c+0x22> @ imm = #-2
 8003528:      	ldr	r0, [sp]
 800352a:      	add	sp, #32
 800352c:      	bx	lr

0800352e <core::ptr::read_volatile::hd744fd3ffee1caa0>:
 800352e:      	sub	sp, #12
 8003530:      	str	r0, [sp, #4]
 8003532:      	ldr	r0, [r0]
 8003534:      	str	r0, [sp, #8]
 8003536:      	ldr	r0, [sp, #8]
 8003538:      	str	r0, [sp]
 800353a:      	b	0x800353c <core::ptr::read_volatile::hd744fd3ffee1caa0+0xe> @ imm = #-2
 800353c:      	ldr	r0, [sp]
 800353e:      	add	sp, #12
 8003540:      	bx	lr

08003542 <core::ptr::write_volatile::hb256fcfc65ccec03>:
 8003542:      	sub	sp, #8
 8003544:      	str	r0, [sp]
 8003546:      	str	r1, [sp, #4]
 8003548:      	str	r1, [r0]
 800354a:      	b	0x800354c <core::ptr::write_volatile::hb256fcfc65ccec03+0xa> @ imm = #-2
 800354c:      	add	sp, #8
 800354e:      	bx	lr

08003550 <__cpsid>:
 8003550:      	cpsid i
 8003552:      	bx	lr

08003554 <__cpsie>:
 8003554:      	cpsie i
 8003556:      	bx	lr

08003558 <__primask>:
 8003558:      	mrs	r0, primask
 800355c:      	bx	lr

0800355e <bare_metal::CriticalSection::new::h8b2b389295cc81d9>:
 800355e:      	bx	lr

08003560 <core::ptr::drop_in_place<&core::iter::adapters::copied::Copied<core::slice::iter::Iter<u8>>>::hc7e30e73e86d7faa>:
 8003560:      	bx	lr

08003562 <<T as core::any::Any>::type_id::h53a5407764ed84d6>:
 8003562:      	movw	r0, #9845
 8003566:      	movw	r1, #39278
 800356a:      	movt	r0, #5965
 800356e:      	movt	r1, #10455
 8003572:      	bx	lr

08003574 <core::panicking::panic::h594a15e9426aa7c3>:
 8003574:      	push	{r7, lr}
 8003576:      	mov	r7, sp
 8003578:      	sub	sp, #32
 800357a:      	mov	r12, r2
 800357c:      	movw	r2, #17928
 8003580:      	movt	r2, #2048
 8003584:      	movs	r3, #0
 8003586:      	strd	r0, r1, [sp, #24]
 800358a:      	mov	r0, sp
 800358c:      	str	r2, [sp, #16]
 800358e:      	movs	r2, #1
 8003590:      	mov	r1, r12
 8003592:      	str	r2, [sp, #4]
 8003594:      	add	r2, sp, #24
 8003596:      	str	r3, [sp, #20]
 8003598:      	strd	r3, r3, [sp, #8]
 800359c:      	str	r2, [sp]
 800359e:      	bl	0x80035e6 <core::panicking::panic_fmt::h551a3408264a1e2c> @ imm = #68
 80035a2:      	trap

080035a4 <core::panicking::panic_bounds_check::he6f42b7f460f9bde>:
 80035a4:      	push	{r7, lr}
 80035a6:      	mov	r7, sp
 80035a8:      	sub	sp, #48
 80035aa:      	strd	r0, r1, [sp]
 80035ae:      	add	r1, sp, #32
 80035b0:      	movs	r0, #2
 80035b2:      	str	r1, [sp, #24]
 80035b4:      	movs	r1, #0
 80035b6:      	str	r0, [sp, #28]
 80035b8:      	strd	r0, r1, [sp, #12]
 80035bc:      	movw	r0, #17996
 80035c0:      	movt	r0, #2048
 80035c4:      	str	r1, [sp, #20]
 80035c6:      	str	r0, [sp, #8]
 80035c8:      	movw	r0, #15261
 80035cc:      	movt	r0, #2048
 80035d0:      	mov	r1, sp
 80035d2:      	strd	r0, r1, [sp, #36]
 80035d6:      	mov	r1, r2
 80035d8:      	str	r0, [sp, #44]
 80035da:      	add	r0, sp, #4
 80035dc:      	str	r0, [sp, #32]
 80035de:      	add	r0, sp, #8
 80035e0:      	bl	0x80035e6 <core::panicking::panic_fmt::h551a3408264a1e2c> @ imm = #2
 80035e4:      	trap

080035e6 <core::panicking::panic_fmt::h551a3408264a1e2c>:
 80035e6:      	push	{r7, lr}
 80035e8:      	mov	r7, sp
 80035ea:      	sub	sp, #16
 80035ec:      	strd	r0, r1, [sp, #8]
 80035f0:      	movw	r0, #17928
 80035f4:      	movt	r0, #2048
 80035f8:      	str	r0, [sp, #4]
 80035fa:      	movw	r0, #17928
 80035fe:      	movt	r0, #2048
 8003602:      	str	r0, [sp]
 8003604:      	mov	r0, sp
 8003606:      	bl	0x8003ca6 <rust_begin_unwind> @ imm = #1692
 800360a:      	trap

0800360c <core::result::unwrap_failed::h2b222072fa40cc3c>:
 800360c:      	push	{r7, lr}
 800360e:      	mov	r7, sp
 8003610:      	sub	sp, #56
 8003612:      	stm.w	sp, {r0, r1, r2, r3}
 8003616:      	add	r1, sp, #40
 8003618:      	movs	r0, #2
 800361a:      	str	r1, [sp, #32]
 800361c:      	movs	r1, #0
 800361e:      	str	r0, [sp, #36]
 8003620:      	strd	r0, r1, [sp, #20]
 8003624:      	movw	r0, #18016
 8003628:      	movt	r0, #2048
 800362c:      	str	r1, [sp, #28]
 800362e:      	str	r0, [sp, #16]
 8003630:      	movw	r0, #15505
 8003634:      	movt	r0, #2048
 8003638:      	ldr	r1, [r7, #8]
 800363a:      	str	r0, [sp, #52]
 800363c:      	add	r0, sp, #8
 800363e:      	str	r0, [sp, #48]
 8003640:      	movw	r0, #15515
 8003644:      	movt	r0, #2048
 8003648:      	str	r0, [sp, #44]
 800364a:      	mov	r0, sp
 800364c:      	str	r0, [sp, #40]
 800364e:      	add	r0, sp, #16
 8003650:      	bl	0x80035e6 <core::panicking::panic_fmt::h551a3408264a1e2c> @ imm = #-110
 8003654:      	trap

08003656 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb>:
 8003656:      	push	{r4, r5, r6, r7, lr}
 8003658:      	add	r7, sp, #12
 800365a:      	push.w	{r8, r9, r10, r11}
 800365e:      	sub	sp, #20
 8003660:      	ldr.w	r9, [r7, #12]
 8003664:      	mov	r11, r3
 8003666:      	mov	r10, r0
 8003668:      	cbz	r1, 0x80036a4 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x4e> @ imm = #56
 800366a:      	ldr.w	r0, [r10]
 800366e:      	ands	r1, r0, #1
 8003672:      	add.w	r8, r1, r9
 8003676:      	mov.w	r1, #43
 800367a:      	it	eq
 800367c:      	moveq.w	r1, #1114112
 8003680:      	ldr	r5, [r7, #8]
 8003682:      	lsls	r3, r0, #29
 8003684:      	bpl	0x80036b4 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x5e> @ imm = #44
 8003686:      	cmp.w	r11, #0
 800368a:      	beq	0x80036d8 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x82> @ imm = #74
 800368c:      	sub.w	r3, r11, #1
 8003690:      	and	lr, r11, #3
 8003694:      	cmp	r3, #3
 8003696:      	bhs	0x80036dc <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x86> @ imm = #66
 8003698:      	movs	r4, #0
 800369a:      	mov	r3, r2
 800369c:      	cmp.w	lr, #0
 80036a0:      	bne	0x8003724 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0xce> @ imm = #128
 80036a2:      	b	0x8003754 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0xfe> @ imm = #174
 80036a4:      	ldr.w	r0, [r10]
 80036a8:      	add.w	r8, r9, #1
 80036ac:      	movs	r1, #45
 80036ae:      	ldr	r5, [r7, #8]
 80036b0:      	lsls	r3, r0, #29
 80036b2:      	bmi	0x8003686 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x30> @ imm = #-48
 80036b4:      	movs	r2, #0
 80036b6:      	mov.w	r11, #0
 80036ba:      	ldr.w	r3, [r10, #8]
 80036be:      	cmp	r3, #1
 80036c0:      	beq	0x800375e <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x108> @ imm = #154
 80036c2:      	mov	r0, r10
 80036c4:      	mov	r3, r11
 80036c6:      	bl	0x8003916 <core::fmt::Formatter::pad_integral::write_prefix::hd9ce7f7816182d2d> @ imm = #588
 80036ca:      	cbz	r0, 0x80036d0 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x7a> @ imm = #2
 80036cc:      	movs	r5, #1
 80036ce:      	b	0x80037da <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x184> @ imm = #264
 80036d0:      	ldrd	r0, r1, [r10, #24]
 80036d4:      	mov	r2, r9
 80036d6:      	b	0x80037a8 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x152> @ imm = #206
 80036d8:      	movs	r4, #0
 80036da:      	b	0x8003754 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0xfe> @ imm = #118
 80036dc:      	bic	r3, r11, #3
 80036e0:      	mov	r12, r5
 80036e2:      	rsbs	r5, r3, #0
 80036e4:      	movs	r4, #0
 80036e6:      	mov	r3, r2
 80036e8:      	ldrsb	r6, [r3], #4
 80036ec:      	cmn.w	r6, #65
 80036f0:      	it	gt
 80036f2:      	addgt	r4, #1
 80036f4:      	ldrsb	r6, [r3, #-3]
 80036f8:      	cmn.w	r6, #65
 80036fc:      	it	gt
 80036fe:      	addgt	r4, #1
 8003700:      	ldrsb	r6, [r3, #-2]
 8003704:      	cmn.w	r6, #65
 8003708:      	it	gt
 800370a:      	addgt	r4, #1
 800370c:      	ldrsb	r6, [r3, #-1]
 8003710:      	cmn.w	r6, #65
 8003714:      	it	gt
 8003716:      	addgt	r4, #1
 8003718:      	adds	r5, #4
 800371a:      	bne	0x80036e8 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x92> @ imm = #-54
 800371c:      	mov	r5, r12
 800371e:      	cmp.w	lr, #0
 8003722:      	beq	0x8003754 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0xfe> @ imm = #46
 8003724:      	ldrsb.w	r6, [r3]
 8003728:      	cmn.w	r6, #65
 800372c:      	it	gt
 800372e:      	addgt	r4, #1
 8003730:      	cmp.w	lr, #1
 8003734:      	beq	0x8003754 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0xfe> @ imm = #28
 8003736:      	ldrsb.w	r6, [r3, #1]
 800373a:      	cmn.w	r6, #65
 800373e:      	it	gt
 8003740:      	addgt	r4, #1
 8003742:      	cmp.w	lr, #2
 8003746:      	beq	0x8003754 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0xfe> @ imm = #10
 8003748:      	ldrsb.w	r3, [r3, #2]
 800374c:      	cmn.w	r3, #65
 8003750:      	it	gt
 8003752:      	addgt	r4, #1
 8003754:      	add	r8, r4
 8003756:      	ldr.w	r3, [r10, #8]
 800375a:      	cmp	r3, #1
 800375c:      	bne	0x80036c2 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x6c> @ imm = #-158
 800375e:      	mov	r4, r9
 8003760:      	ldr.w	r9, [r10, #12]
 8003764:      	str	r1, [sp, #16]
 8003766:      	cmp	r9, r8
 8003768:      	bls	0x8003792 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x13c> @ imm = #38
 800376a:      	lsls	r0, r0, #28
 800376c:      	str	r5, [sp, #12]
 800376e:      	bmi	0x80037b8 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x162> @ imm = #70
 8003770:      	ldrb.w	r1, [r10, #32]
 8003774:      	sub.w	r0, r9, r8
 8003778:      	mov	r9, r2
 800377a:      	cmp	r1, #3
 800377c:      	it	eq
 800377e:      	moveq	r1, #1
 8003780:      	lsls	r3, r1, #30
 8003782:      	str	r4, [sp, #8]
 8003784:      	beq	0x8003806 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x1b0> @ imm = #126
 8003786:      	cmp	r1, #1
 8003788:      	bne	0x800380a <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x1b4> @ imm = #126
 800378a:      	movs	r1, #0
 800378c:      	str	r1, [sp, #4]
 800378e:      	mov	r1, r0
 8003790:      	b	0x8003812 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x1bc> @ imm = #126
 8003792:      	ldr	r1, [sp, #16]
 8003794:      	mov	r0, r10
 8003796:      	mov	r3, r11
 8003798:      	bl	0x8003916 <core::fmt::Formatter::pad_integral::write_prefix::hd9ce7f7816182d2d> @ imm = #378
 800379c:      	cmp	r0, #0
 800379e:      	bne.w	0x80038de <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x288> @ imm = #316
 80037a2:      	ldrd	r0, r1, [r10, #24]
 80037a6:      	mov	r2, r4
 80037a8:      	ldr	r3, [r1, #12]
 80037aa:      	mov	r1, r5
 80037ac:      	add	sp, #20
 80037ae:      	pop.w	{r8, r9, r10, r11}
 80037b2:      	pop.w	{r4, r5, r6, r7, lr}
 80037b6:      	bx	r3
 80037b8:      	movs	r0, #48
 80037ba:      	ldr.w	r6, [r10, #4]
 80037be:      	str.w	r0, [r10, #4]
 80037c2:      	movs	r5, #1
 80037c4:      	ldrb.w	r0, [r10, #32]
 80037c8:      	mov	r3, r11
 80037ca:      	str	r0, [sp, #4]
 80037cc:      	mov	r0, r10
 80037ce:      	ldr	r1, [sp, #16]
 80037d0:      	strb.w	r5, [r10, #32]
 80037d4:      	bl	0x8003916 <core::fmt::Formatter::pad_integral::write_prefix::hd9ce7f7816182d2d> @ imm = #318
 80037d8:      	cbz	r0, 0x80037e4 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x18e> @ imm = #8
 80037da:      	mov	r0, r5
 80037dc:      	add	sp, #20
 80037de:      	pop.w	{r8, r9, r10, r11}
 80037e2:      	pop	{r4, r5, r6, r7, pc}
 80037e4:      	ldrb.w	r1, [r10, #32]
 80037e8:      	sub.w	r0, r9, r8
 80037ec:      	cmp	r1, #3
 80037ee:      	it	eq
 80037f0:      	moveq	r1, #1
 80037f2:      	lsls	r2, r1, #30
 80037f4:      	str	r4, [sp, #8]
 80037f6:      	str	r6, [sp]
 80037f8:      	beq	0x800387a <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x224> @ imm = #126
 80037fa:      	cmp	r1, #1
 80037fc:      	bne	0x8003880 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x22a> @ imm = #128
 80037fe:      	mov.w	r8, #0
 8003802:      	mov	r1, r0
 8003804:      	b	0x8003888 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x232> @ imm = #128
 8003806:      	movs	r1, #0
 8003808:      	b	0x8003810 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x1ba> @ imm = #4
 800380a:      	lsrs	r1, r0, #1
 800380c:      	adds	r0, #1
 800380e:      	lsrs	r0, r0, #1
 8003810:      	str	r0, [sp, #4]
 8003812:      	ldr.w	r5, [r10, #4]
 8003816:      	adds	r6, r1, #1
 8003818:      	ldrd	r8, r4, [r10, #24]
 800381c:      	subs	r6, #1
 800381e:      	beq	0x800382e <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x1d8> @ imm = #12
 8003820:      	ldr	r2, [r4, #16]
 8003822:      	mov	r0, r8
 8003824:      	mov	r1, r5
 8003826:      	blx	r2
 8003828:      	cmp	r0, #0
 800382a:      	beq	0x800381c <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x1c6> @ imm = #-18
 800382c:      	b	0x80038de <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x288> @ imm = #174
 800382e:      	subs.w	r8, r5, #1114112
 8003832:      	ldr	r0, [sp, #4]
 8003834:      	it	ne
 8003836:      	movne	r8, r0
 8003838:      	cmp.w	r5, #1114112
 800383c:      	beq	0x80038de <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x288> @ imm = #158
 800383e:      	ldr	r1, [sp, #16]
 8003840:      	mov	r0, r10
 8003842:      	mov	r2, r9
 8003844:      	mov	r3, r11
 8003846:      	bl	0x8003916 <core::fmt::Formatter::pad_integral::write_prefix::hd9ce7f7816182d2d> @ imm = #204
 800384a:      	cmp	r0, #0
 800384c:      	bne	0x80038de <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x288> @ imm = #142
 800384e:      	ldrd	r0, r1, [r10, #24]
 8003852:      	ldr	r3, [r1, #12]
 8003854:      	ldrd	r2, r1, [sp, #8]
 8003858:      	blx	r3
 800385a:      	cmp	r0, #0
 800385c:      	bne	0x80038de <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x288> @ imm = #126
 800385e:      	ldrd	r9, r6, [r10, #24]
 8003862:      	movs	r4, #0
 8003864:      	cmp	r8, r4
 8003866:      	beq	0x8003902 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x2ac> @ imm = #152
 8003868:      	ldr	r2, [r6, #16]
 800386a:      	mov	r0, r9
 800386c:      	mov	r1, r5
 800386e:      	blx	r2
 8003870:      	adds	r4, #1
 8003872:      	cmp	r0, #0
 8003874:      	beq	0x8003864 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x20e> @ imm = #-20
 8003876:      	subs	r0, r4, #1
 8003878:      	b	0x8003904 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x2ae> @ imm = #136
 800387a:      	movs	r1, #0
 800387c:      	mov	r8, r0
 800387e:      	b	0x8003888 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x232> @ imm = #6
 8003880:      	lsrs	r1, r0, #1
 8003882:      	adds	r0, #1
 8003884:      	lsr.w	r8, r0, #1
 8003888:      	ldr.w	r11, [r10, #4]
 800388c:      	adds	r5, r1, #1
 800388e:      	ldrd	r6, r4, [r10, #24]
 8003892:      	subs	r5, #1
 8003894:      	beq	0x80038a4 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x24e> @ imm = #12
 8003896:      	ldr	r2, [r4, #16]
 8003898:      	mov	r0, r6
 800389a:      	mov	r1, r11
 800389c:      	blx	r2
 800389e:      	cmp	r0, #0
 80038a0:      	beq	0x8003892 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x23c> @ imm = #-18
 80038a2:      	b	0x80038de <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x288> @ imm = #56
 80038a4:      	subs.w	r9, r11, #1114112
 80038a8:      	it	ne
 80038aa:      	movne	r9, r8
 80038ac:      	cmp.w	r11, #1114112
 80038b0:      	beq	0x80038de <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x288> @ imm = #42
 80038b2:      	ldrd	r0, r1, [r10, #24]
 80038b6:      	ldr	r3, [r1, #12]
 80038b8:      	ldrd	r2, r1, [sp, #8]
 80038bc:      	blx	r3
 80038be:      	cbnz	r0, 0x80038de <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x288> @ imm = #28
 80038c0:      	ldrd	r8, r4, [r10, #24]
 80038c4:      	movs	r6, #0
 80038c6:      	cmp	r9, r6
 80038c8:      	beq	0x80038ea <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x294> @ imm = #30
 80038ca:      	ldr	r2, [r4, #16]
 80038cc:      	mov	r0, r8
 80038ce:      	mov	r1, r11
 80038d0:      	blx	r2
 80038d2:      	adds	r6, #1
 80038d4:      	cmp	r0, #0
 80038d6:      	beq	0x80038c6 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x270> @ imm = #-20
 80038d8:      	subs	r0, r6, #1
 80038da:      	cmp	r0, r9
 80038dc:      	bhs	0x80038ea <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb+0x294> @ imm = #10
 80038de:      	movs	r5, #1
 80038e0:      	mov	r0, r5
 80038e2:      	add	sp, #20
 80038e4:      	pop.w	{r8, r9, r10, r11}
 80038e8:      	pop	{r4, r5, r6, r7, pc}
 80038ea:      	ldr	r0, [sp, #4]
 80038ec:      	movs	r5, #0
 80038ee:      	strb.w	r0, [r10, #32]
 80038f2:      	ldr	r0, [sp]
 80038f4:      	str.w	r0, [r10, #4]
 80038f8:      	mov	r0, r5
 80038fa:      	add	sp, #20
 80038fc:      	pop.w	{r8, r9, r10, r11}
 8003900:      	pop	{r4, r5, r6, r7, pc}
 8003902:      	mov	r0, r8
 8003904:      	movs	r5, #0
 8003906:      	cmp	r0, r8
 8003908:      	it	lo
 800390a:      	movlo	r5, #1
 800390c:      	mov	r0, r5
 800390e:      	add	sp, #20
 8003910:      	pop.w	{r8, r9, r10, r11}
 8003914:      	pop	{r4, r5, r6, r7, pc}

08003916 <core::fmt::Formatter::pad_integral::write_prefix::hd9ce7f7816182d2d>:
 8003916:      	push	{r4, r5, r6, r7, lr}
 8003918:      	add	r7, sp, #12
 800391a:      	str	r11, [sp, #-4]!
 800391e:      	mov	r4, r3
 8003920:      	mov	r5, r2
 8003922:      	mov	r6, r0
 8003924:      	cmp.w	r1, #1114112
 8003928:      	beq	0x800393c <core::fmt::Formatter::pad_integral::write_prefix::hd9ce7f7816182d2d+0x26> @ imm = #16
 800392a:      	ldrd	r0, r2, [r6, #24]
 800392e:      	ldr	r2, [r2, #16]
 8003930:      	blx	r2
 8003932:      	cbz	r0, 0x800393c <core::fmt::Formatter::pad_integral::write_prefix::hd9ce7f7816182d2d+0x26> @ imm = #6
 8003934:      	movs	r0, #1
 8003936:      	ldr	r11, [sp], #4
 800393a:      	pop	{r4, r5, r6, r7, pc}
 800393c:      	cbz	r5, 0x8003952 <core::fmt::Formatter::pad_integral::write_prefix::hd9ce7f7816182d2d+0x3c> @ imm = #18
 800393e:      	ldrd	r0, r1, [r6, #24]
 8003942:      	mov	r2, r4
 8003944:      	ldr	r3, [r1, #12]
 8003946:      	mov	r1, r5
 8003948:      	ldr	r11, [sp], #4
 800394c:      	pop.w	{r4, r5, r6, r7, lr}
 8003950:      	bx	r3
 8003952:      	movs	r0, #0
 8003954:      	ldr	r11, [sp], #4
 8003958:      	pop	{r4, r5, r6, r7, pc}

0800395a <core::fmt::Formatter::pad::h313bf0fb4e4072a1>:
 800395a:      	push	{r4, r5, r6, r7, lr}
 800395c:      	add	r7, sp, #12
 800395e:      	push.w	{r8, r9, r10, r11}
 8003962:      	sub	sp, #4
 8003964:      	mov	r9, r2
 8003966:      	ldr.w	r12, [r0, #8]
 800396a:      	ldr	r2, [r0, #16]
 800396c:      	mov	r8, r1
 800396e:      	cmp.w	r12, #1
 8003972:      	bne	0x8003992 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x38> @ imm = #28
 8003974:      	cmp	r2, #1
 8003976:      	beq	0x8003998 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x3e> @ imm = #30
 8003978:      	ldr	r1, [r0, #12]
 800397a:      	cmp.w	r9, #0
 800397e:      	beq	0x80039ee <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x94> @ imm = #108
 8003980:      	sub.w	r2, r9, #1
 8003984:      	and	r3, r9, #3
 8003988:      	cmp	r2, #3
 800398a:      	bhs	0x8003a4c <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0xf2> @ imm = #190
 800398c:      	movs	r2, #0
 800398e:      	mov	r6, r8
 8003990:      	b	0x8003a8a <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x130> @ imm = #246
 8003992:      	cmp	r2, #1
 8003994:      	bne.w	0x8003ad8 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x17e> @ imm = #320
 8003998:      	ldr	r6, [r0, #20]
 800399a:      	add.w	r3, r8, r9
 800399e:      	movs	r2, #0
 80039a0:      	mov	r4, r8
 80039a2:      	cbnz	r6, 0x80039fe <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0xa4> @ imm = #88
 80039a4:      	cmp	r4, r3
 80039a6:      	beq	0x80039da <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x80> @ imm = #48
 80039a8:      	ldrb	r3, [r4]
 80039aa:      	cmp	r3, #240
 80039ac:      	blo.w	0x8003ae0 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x186> @ imm = #304
 80039b0:      	ldrb	r6, [r4, #2]
 80039b2:      	and	r3, r3, #7
 80039b6:      	ldrb	r1, [r4, #1]
 80039b8:      	and	r6, r6, #63
 80039bc:      	ldrb	r5, [r4, #3]
 80039be:      	and	r1, r1, #63
 80039c2:      	lsls	r6, r6, #6
 80039c4:      	orr.w	r1, r6, r1, lsl #12
 80039c8:      	and	r6, r5, #63
 80039cc:      	add	r1, r6
 80039ce:      	orr.w	r1, r1, r3, lsl #18
 80039d2:      	cmp.w	r1, #1114112
 80039d6:      	bne.w	0x8003ae0 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x186> @ imm = #262
 80039da:      	mov	r2, r9
 80039dc:      	cmp.w	r12, #1
 80039e0:      	bne.w	0x8003b5a <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x200> @ imm = #374
 80039e4:      	mov	r9, r2
 80039e6:      	ldr	r1, [r0, #12]
 80039e8:      	cmp.w	r9, #0
 80039ec:      	bne	0x8003980 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x26> @ imm = #-112
 80039ee:      	movs	r2, #0
 80039f0:      	b	0x8003ab8 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x15e> @ imm = #196
 80039f2:      	adds	r4, r5, #2
 80039f4:      	subs	r1, r2, r5
 80039f6:      	subs	r6, #1
 80039f8:      	add.w	r2, r1, r4
 80039fc:      	beq	0x80039a4 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x4a> @ imm = #-92
 80039fe:      	cmp	r4, r3
 8003a00:      	beq	0x80039da <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x80> @ imm = #-42
 8003a02:      	mov	r5, r4
 8003a04:      	ldrsb	r1, [r4], #1
 8003a08:      	cmp.w	r1, #4294967295
 8003a0c:      	bgt	0x80039f4 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x9a> @ imm = #-28
 8003a0e:      	uxtb	r4, r1
 8003a10:      	cmp	r4, #224
 8003a12:      	blo	0x80039f2 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x98> @ imm = #-36
 8003a14:      	cmp	r4, #240
 8003a16:      	blo	0x8003a48 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0xee> @ imm = #46
 8003a18:      	ldrb	r1, [r5, #1]
 8003a1a:      	and	r4, r4, #7
 8003a1e:      	ldrb.w	lr, [r5, #2]
 8003a22:      	and	r11, r1, #63
 8003a26:      	ldrb.w	r10, [r5, #3]
 8003a2a:      	and	r1, lr, #63
 8003a2e:      	lsls	r1, r1, #6
 8003a30:      	orr.w	lr, r1, r11, lsl #12
 8003a34:      	and	r1, r10, #63
 8003a38:      	add	r1, lr
 8003a3a:      	orr.w	r1, r1, r4, lsl #18
 8003a3e:      	cmp.w	r1, #1114112
 8003a42:      	beq	0x80039da <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x80> @ imm = #-108
 8003a44:      	adds	r4, r5, #4
 8003a46:      	b	0x80039f4 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x9a> @ imm = #-86
 8003a48:      	adds	r4, r5, #3
 8003a4a:      	b	0x80039f4 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x9a> @ imm = #-90
 8003a4c:      	bic	r2, r9, #3
 8003a50:      	mov	r6, r8
 8003a52:      	rsbs	r5, r2, #0
 8003a54:      	movs	r2, #0
 8003a56:      	ldrsb	r4, [r6], #4
 8003a5a:      	cmn.w	r4, #65
 8003a5e:      	it	gt
 8003a60:      	addgt	r2, #1
 8003a62:      	ldrsb	r4, [r6, #-3]
 8003a66:      	cmn.w	r4, #65
 8003a6a:      	it	gt
 8003a6c:      	addgt	r2, #1
 8003a6e:      	ldrsb	r4, [r6, #-2]
 8003a72:      	cmn.w	r4, #65
 8003a76:      	it	gt
 8003a78:      	addgt	r2, #1
 8003a7a:      	ldrsb	r4, [r6, #-1]
 8003a7e:      	cmn.w	r4, #65
 8003a82:      	it	gt
 8003a84:      	addgt	r2, #1
 8003a86:      	adds	r5, #4
 8003a88:      	bne	0x8003a56 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0xfc> @ imm = #-54
 8003a8a:      	cbz	r3, 0x8003ab8 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x15e> @ imm = #42
 8003a8c:      	ldrsb.w	r5, [r6]
 8003a90:      	cmn.w	r5, #65
 8003a94:      	it	gt
 8003a96:      	addgt	r2, #1
 8003a98:      	cmp	r3, #1
 8003a9a:      	beq	0x8003ab8 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x15e> @ imm = #26
 8003a9c:      	ldrsb.w	r5, [r6, #1]
 8003aa0:      	cmn.w	r5, #65
 8003aa4:      	it	gt
 8003aa6:      	addgt	r2, #1
 8003aa8:      	cmp	r3, #2
 8003aaa:      	beq	0x8003ab8 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x15e> @ imm = #10
 8003aac:      	ldrsb.w	r3, [r6, #2]
 8003ab0:      	cmn.w	r3, #65
 8003ab4:      	it	gt
 8003ab6:      	addgt	r2, #1
 8003ab8:      	cmp	r1, r2
 8003aba:      	bls	0x8003ad8 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x17e> @ imm = #26
 8003abc:      	ldrb.w	r6, [r0, #32]
 8003ac0:      	subs	r2, r1, r2
 8003ac2:      	subs	r3, r6, #3
 8003ac4:      	it	ne
 8003ac6:      	movne	r3, r6
 8003ac8:      	lsls	r6, r3, #30
 8003aca:      	beq	0x8003af6 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x19c> @ imm = #40
 8003acc:      	cmp	r3, #1
 8003ace:      	bne	0x8003afc <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x1a2> @ imm = #42
 8003ad0:      	mov.w	r10, #0
 8003ad4:      	mov	r1, r2
 8003ad6:      	b	0x8003b04 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x1aa> @ imm = #42
 8003ad8:      	ldr	r1, [r0, #24]
 8003ada:      	mov	r2, r9
 8003adc:      	ldr	r0, [r0, #28]
 8003ade:      	b	0x8003b5e <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x204> @ imm = #124
 8003ae0:      	cbz	r2, 0x8003b48 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x1ee> @ imm = #100
 8003ae2:      	cmp	r2, r9
 8003ae4:      	bhs	0x8003b44 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x1ea> @ imm = #92
 8003ae6:      	ldrsb.w	r1, [r8, r2]
 8003aea:      	cmn.w	r1, #64
 8003aee:      	bge	0x8003b48 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x1ee> @ imm = #86
 8003af0:      	movs	r3, #0
 8003af2:      	movs	r2, #0
 8003af4:      	b	0x8003b4a <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x1f0> @ imm = #82
 8003af6:      	movs	r1, #0
 8003af8:      	mov	r10, r2
 8003afa:      	b	0x8003b04 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x1aa> @ imm = #6
 8003afc:      	lsrs	r1, r2, #1
 8003afe:      	adds	r2, #1
 8003b00:      	lsr.w	r10, r2, #1
 8003b04:      	ldr	r6, [r0, #4]
 8003b06:      	adds	r4, r1, #1
 8003b08:      	ldrd	r11, r5, [r0, #24]
 8003b0c:      	subs	r4, #1
 8003b0e:      	beq	0x8003b1e <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x1c4> @ imm = #12
 8003b10:      	ldr	r2, [r5, #16]
 8003b12:      	mov	r0, r11
 8003b14:      	mov	r1, r6
 8003b16:      	blx	r2
 8003b18:      	cmp	r0, #0
 8003b1a:      	beq	0x8003b0c <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x1b2> @ imm = #-18
 8003b1c:      	b	0x8003b3a <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x1e0> @ imm = #26
 8003b1e:      	mov	r0, r10
 8003b20:      	subs.w	r10, r6, #1114112
 8003b24:      	it	ne
 8003b26:      	movne	r10, r0
 8003b28:      	cmp.w	r6, #1114112
 8003b2c:      	beq	0x8003b3a <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x1e0> @ imm = #10
 8003b2e:      	ldr	r3, [r5, #12]
 8003b30:      	mov	r0, r11
 8003b32:      	mov	r1, r8
 8003b34:      	mov	r2, r9
 8003b36:      	blx	r3
 8003b38:      	cbz	r0, 0x8003b70 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x216> @ imm = #52
 8003b3a:      	movs	r0, #1
 8003b3c:      	add	sp, #4
 8003b3e:      	pop.w	{r8, r9, r10, r11}
 8003b42:      	pop	{r4, r5, r6, r7, pc}
 8003b44:      	cmp	r2, r9
 8003b46:      	bne	0x8003af0 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x196> @ imm = #-90
 8003b48:      	mov	r3, r8
 8003b4a:      	cmp	r3, #0
 8003b4c:      	ite	eq
 8003b4e:      	moveq	r2, r9
 8003b50:      	movne	r8, r3
 8003b52:      	cmp.w	r12, #1
 8003b56:      	beq.w	0x80039e4 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x8a> @ imm = #-374
 8003b5a:      	ldrd	r1, r0, [r0, #24]
 8003b5e:      	ldr	r3, [r0, #12]
 8003b60:      	mov	r0, r1
 8003b62:      	mov	r1, r8
 8003b64:      	add	sp, #4
 8003b66:      	pop.w	{r8, r9, r10, r11}
 8003b6a:      	pop.w	{r4, r5, r6, r7, lr}
 8003b6e:      	bx	r3
 8003b70:      	movs	r4, #0
 8003b72:      	cmp	r10, r4
 8003b74:      	beq	0x8003b88 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x22e> @ imm = #16
 8003b76:      	ldr	r2, [r5, #16]
 8003b78:      	mov	r0, r11
 8003b7a:      	mov	r1, r6
 8003b7c:      	blx	r2
 8003b7e:      	adds	r4, #1
 8003b80:      	cmp	r0, #0
 8003b82:      	beq	0x8003b72 <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x218> @ imm = #-20
 8003b84:      	subs	r1, r4, #1
 8003b86:      	b	0x8003b8a <core::fmt::Formatter::pad::h313bf0fb4e4072a1+0x230> @ imm = #0
 8003b88:      	mov	r1, r10
 8003b8a:      	movs	r0, #0
 8003b8c:      	cmp	r1, r10
 8003b8e:      	it	lo
 8003b90:      	movlo	r0, #1
 8003b92:      	add	sp, #4
 8003b94:      	pop.w	{r8, r9, r10, r11}
 8003b98:      	pop	{r4, r5, r6, r7, pc}

08003b9a <<core::convert::Infallible as core::fmt::Display>::fmt::h7e6f386d6fbae94d>:
 8003b9a:      	trap

08003b9c <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::hc3507173d3580900>:
 8003b9c:      	push	{r4, r5, r6, r7, lr}
 8003b9e:      	add	r7, sp, #12
 8003ba0:      	push.w	{r8, r9, r10, r11}
 8003ba4:      	sub	sp, #52
 8003ba6:      	ldr	r4, [r0]
 8003ba8:      	movw	r8, #18032
 8003bac:      	movw	r0, #10000
 8003bb0:      	mov	r6, r1
 8003bb2:      	cmp	r4, r0
 8003bb4:      	movt	r8, #2048
 8003bb8:      	blo	0x8003c3a <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::hc3507173d3580900+0x9e> @ imm = #126
 8003bba:      	movw	r9, #5977
 8003bbe:      	movw	lr, #57599
 8003bc2:      	movs	r1, #0
 8003bc4:      	movt	r9, #53687
 8003bc8:      	movw	r10, #5243
 8003bcc:      	mov.w	r11, #100
 8003bd0:      	movt	lr, #1525
 8003bd4:      	str	r6, [sp, #8]
 8003bd6:      	add	r2, sp, #12
 8003bd8:      	cmp	r4, lr
 8003bda:      	add.w	r5, r2, r1
 8003bde:      	umull	r2, r6, r4, r9
 8003be2:      	sub.w	r1, r1, #4
 8003be6:      	lsr.w	r2, r6, #13
 8003bea:      	mls	r6, r2, r0, r4
 8003bee:      	mov	r4, r2
 8003bf0:      	uxth.w	r12, r6
 8003bf4:      	lsr.w	r3, r12, #2
 8003bf8:      	mul	r3, r3, r10
 8003bfc:      	lsr.w	r3, r3, #17
 8003c00:      	ldrh.w	r0, [r8, r3, lsl #1]
 8003c04:      	strh.w	r0, [r5, #35]
 8003c08:      	mls	r0, r3, r11, r6
 8003c0c:      	uxth	r0, r0
 8003c0e:      	ldrh.w	r0, [r8, r0, lsl #1]
 8003c12:      	strh.w	r0, [r5, #37]
 8003c16:      	movw	r0, #10000
 8003c1a:      	bhi	0x8003bd6 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::hc3507173d3580900+0x3a> @ imm = #-72
 8003c1c:      	ldr	r6, [sp, #8]
 8003c1e:      	add.w	r3, r1, #39
 8003c22:      	mov	r4, r2
 8003c24:      	cmp	r4, #99
 8003c26:      	bgt	0x8003c40 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::hc3507173d3580900+0xa4> @ imm = #22
 8003c28:      	mov	r1, r4
 8003c2a:      	cmp	r1, #10
 8003c2c:      	blt	0x8003c62 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::hc3507173d3580900+0xc6> @ imm = #50
 8003c2e:      	ldrh.w	r1, [r8, r1, lsl #1]
 8003c32:      	subs	r0, r3, #2
 8003c34:      	add	r2, sp, #12
 8003c36:      	strh	r1, [r2, r0]
 8003c38:      	b	0x8003c6a <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::hc3507173d3580900+0xce> @ imm = #46
 8003c3a:      	movs	r3, #39
 8003c3c:      	cmp	r4, #99
 8003c3e:      	ble	0x8003c28 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::hc3507173d3580900+0x8c> @ imm = #-26
 8003c40:      	uxth	r0, r4
 8003c42:      	movw	r1, #5243
 8003c46:      	lsrs	r0, r0, #2
 8003c48:      	subs	r3, #2
 8003c4a:      	muls	r0, r1, r0
 8003c4c:      	add	r2, sp, #12
 8003c4e:      	lsrs	r1, r0, #17
 8003c50:      	movs	r0, #100
 8003c52:      	mls	r0, r1, r0, r4
 8003c56:      	uxth	r0, r0
 8003c58:      	ldrh.w	r0, [r8, r0, lsl #1]
 8003c5c:      	strh	r0, [r2, r3]
 8003c5e:      	cmp	r1, #10
 8003c60:      	bge	0x8003c2e <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::hc3507173d3580900+0x92> @ imm = #-54
 8003c62:      	subs	r0, r3, #1
 8003c64:      	add	r2, sp, #12
 8003c66:      	adds	r1, #48
 8003c68:      	strb	r1, [r2, r0]
 8003c6a:      	rsb.w	r1, r0, #39
 8003c6e:      	add	r2, sp, #12
 8003c70:      	add	r0, r2
 8003c72:      	movw	r2, #17928
 8003c76:      	strd	r0, r1, [sp]
 8003c7a:      	movt	r2, #2048
 8003c7e:      	mov	r0, r6
 8003c80:      	movs	r1, #1
 8003c82:      	movs	r3, #0
 8003c84:      	bl	0x8003656 <core::fmt::Formatter::pad_integral::hfaf0c286dc2506cb> @ imm = #-1586
 8003c88:      	add	sp, #52
 8003c8a:      	pop.w	{r8, r9, r10, r11}
 8003c8e:      	pop	{r4, r5, r6, r7, pc}

08003c90 <<&T as core::fmt::Debug>::fmt::hd7687302749784c7>:
 8003c90:      	ldrd	r2, r0, [r0]
 8003c94:      	ldr	r3, [r0, #12]
 8003c96:      	mov	r0, r2
 8003c98:      	bx	r3

08003c9a <<&T as core::fmt::Display>::fmt::hed58c5bed8e5001b>:
 8003c9a:      	mov	r3, r1
 8003c9c:      	ldrd	r1, r2, [r0]
 8003ca0:      	mov	r0, r3
 8003ca2:      	b.w	0x800395a <core::fmt::Formatter::pad::h313bf0fb4e4072a1> @ imm = #-844

08003ca6 <rust_begin_unwind>:
 8003ca6:      	push	{r7, lr}
 8003ca8:      	mov	r7, sp
 8003caa:      	sub	sp, #8
 8003cac:      	str	r0, [sp, #4]
 8003cae:      	b	0x8003cb0 <rust_begin_unwind+0xa> @ imm = #-2
 8003cb0:      	movs	r0, #4
 8003cb2:      	strb	r0, [r7, #-5]
 8003cb6:      	ldrb	r0, [r7, #-5]
 8003cba:      	bl	0x8003cc0 <core::sync::atomic::compiler_fence::h3384698d230f456e> @ imm = #2
 8003cbe:      	b	0x8003cb0 <rust_begin_unwind+0xa> @ imm = #-18

08003cc0 <core::sync::atomic::compiler_fence::h3384698d230f456e>:
 8003cc0:      	push	{r7, lr}
 8003cc2:      	mov	r7, sp
 8003cc4:      	sub	sp, #8
 8003cc6:      	strb	r0, [r7, #-1]
 8003cca:      	ldrb	r0, [r7, #-1]
 8003cce:      	str	r0, [sp]
 8003cd0:      	ldr	r1, [sp]
 8003cd2:      	tbb	[pc, r1]

08003cd6 <$d.1>:
 8003cd6:	04 10 11 12	.word	0x12111004
 8003cda:	13 00		.short	0x0013

08003cdc <$t.2>:
 8003cdc:      	trap
 8003cde:      	movw	r0, #18232
 8003ce2:      	movt	r0, #2048
 8003ce6:      	movw	r2, #18364
 8003cea:      	movt	r2, #2048
 8003cee:      	movs	r1, #50
 8003cf0:      	bl	0x8003574 <core::panicking::panic::h594a15e9426aa7c3> @ imm = #-1920
 8003cf4:      	trap
 8003cf6:      	b	0x8003cfe <$t.2+0x22>   @ imm = #4
 8003cf8:      	b	0x8003cfe <$t.2+0x22>   @ imm = #2
 8003cfa:      	b	0x8003cfe <$t.2+0x22>   @ imm = #0
 8003cfc:      	b	0x8003cfe <$t.2+0x22>   @ imm = #-2
 8003cfe:      	add	sp, #8
 8003d00:      	pop	{r7, pc}

08003d02 <memset>:
 8003d02:      	push	{r4, r6, r7, lr}
 8003d04:      	add	r7, sp, #8
 8003d06:      	cmp	r2, #15
 8003d08:      	bls	0x8003d76 <memset+0x74> @ imm = #106
 8003d0a:      	rsbs	r3, r0, #0
 8003d0c:      	ands	lr, r3, #3
 8003d10:      	add.w	r12, r0, lr
 8003d14:      	beq	0x8003d36 <memset+0x34> @ imm = #30
 8003d16:      	mov	r3, r0
 8003d18:      	strb	r1, [r3], #1
 8003d1c:      	cmp	r3, r12
 8003d1e:      	itttt	lo
 8003d20:      	strblo	r1, [r3], #1
 8003d24:      	cmplo	r3, r12
 8003d26:      	strblo	r1, [r3], #1
 8003d2a:      	cmplo	r3, r12
 8003d2c:      	bhs	0x8003d36 <memset+0x34> @ imm = #6
 8003d2e:      	strb	r1, [r3], #1
 8003d32:      	cmp	r3, r12
 8003d34:      	blo	0x8003d18 <memset+0x16> @ imm = #-32
 8003d36:      	sub.w	lr, r2, lr
 8003d3a:      	bic	r2, lr, #3
 8003d3e:      	add.w	r3, r12, r2
 8003d42:      	cmp	r2, #1
 8003d44:      	blt	0x8003d6c <memset+0x6a> @ imm = #36
 8003d46:      	uxtb	r2, r1
 8003d48:      	mov.w	r4, #16843009
 8003d4c:      	muls	r2, r4, r2
 8003d4e:      	str	r2, [r12], #4
 8003d52:      	cmp	r12, r3
 8003d54:      	itttt	lo
 8003d56:      	strlo	r2, [r12], #4
 8003d5a:      	cmplo	r12, r3
 8003d5c:      	strlo	r2, [r12], #4
 8003d60:      	cmplo	r12, r3
 8003d62:      	bhs	0x8003d6c <memset+0x6a> @ imm = #6
 8003d64:      	str	r2, [r12], #4
 8003d68:      	cmp	r12, r3
 8003d6a:      	blo	0x8003d4e <memset+0x4c> @ imm = #-32
 8003d6c:      	and	r2, lr, #3
 8003d70:      	cmp	r2, #1
 8003d72:      	bge	0x8003d7c <memset+0x7a> @ imm = #6
 8003d74:      	b	0x8003d9c <memset+0x9a> @ imm = #36
 8003d76:      	mov	r3, r0
 8003d78:      	cmp	r2, #1
 8003d7a:      	blt	0x8003d9c <memset+0x9a> @ imm = #30
 8003d7c:      	add	r2, r3
 8003d7e:      	strb	r1, [r3], #1
 8003d82:      	cmp	r3, r2
 8003d84:      	itttt	lo
 8003d86:      	strblo	r1, [r3], #1
 8003d8a:      	cmplo	r3, r2
 8003d8c:      	strblo	r1, [r3], #1
 8003d90:      	cmplo	r3, r2
 8003d92:      	bhs	0x8003d9c <memset+0x9a> @ imm = #6
 8003d94:      	strb	r1, [r3], #1
 8003d98:      	cmp	r3, r2
 8003d9a:      	blo	0x8003d7e <memset+0x7c> @ imm = #-32
 8003d9c:      	pop	{r4, r6, r7, pc}

08003d9e <__aeabi_memset>:
 8003d9e:      	mov	r3, r1
 8003da0:      	mov	r1, r2
 8003da2:      	mov	r2, r3
 8003da4:      	b.w	0x8003d02 <memset>      @ imm = #-166

08003da8 <__aeabi_memset4>:
 8003da8:      	push	{r4, r6, r7, lr}
 8003daa:      	add	r7, sp, #8
 8003dac:      	mov	r3, r2
 8003dae:      	uxtb	r2, r2
 8003db0:      	cmp	r1, #4
 8003db2:      	blo	0x8003e28 <__aeabi_memset4+0x80> @ imm = #114
 8003db4:      	lsls	r4, r2, #16
 8003db6:      	sub.w	lr, r1, #4
 8003dba:      	orr.w	r3, r4, r3, lsl #24
 8003dbe:      	movs	r4, #1
 8003dc0:      	orr.w	r3, r3, r2, lsl #8
 8003dc4:      	add.w	r4, r4, lr, lsr #2
 8003dc8:      	add	r3, r2
 8003dca:      	ands	r4, r4, #3
 8003dce:      	beq	0x8003de6 <__aeabi_memset4+0x3e> @ imm = #20
 8003dd0:      	mov	r12, r0
 8003dd2:      	cmp	r4, #1
 8003dd4:      	str	r3, [r12], #4
 8003dd8:      	bne	0x8003dee <__aeabi_memset4+0x46> @ imm = #18
 8003dda:      	mov	r1, lr
 8003ddc:      	mov	r0, r12
 8003dde:      	cmp.w	lr, #12
 8003de2:      	bhs	0x8003e18 <__aeabi_memset4+0x70> @ imm = #50
 8003de4:      	b	0x8003e00 <__aeabi_memset4+0x58> @ imm = #24
 8003de6:      	cmp.w	lr, #12
 8003dea:      	bhs	0x8003e18 <__aeabi_memset4+0x70> @ imm = #42
 8003dec:      	b	0x8003e00 <__aeabi_memset4+0x58> @ imm = #16
 8003dee:      	cmp	r4, #2
 8003df0:      	str	r3, [r0, #4]
 8003df2:      	bne	0x8003e0a <__aeabi_memset4+0x62> @ imm = #20
 8003df4:      	adds	r0, #8
 8003df6:      	subs	r1, #8
 8003df8:      	mov	r12, r0
 8003dfa:      	cmp.w	lr, #12
 8003dfe:      	bhs	0x8003e18 <__aeabi_memset4+0x70> @ imm = #22
 8003e00:      	mov	r0, r12
 8003e02:      	pop.w	{r4, r6, r7, lr}
 8003e06:      	b.w	0x8003d9e <__aeabi_memset> @ imm = #-108
 8003e0a:      	str	r3, [r0, #8]
 8003e0c:      	adds	r0, #12
 8003e0e:      	subs	r1, #12
 8003e10:      	mov	r12, r0
 8003e12:      	cmp.w	lr, #12
 8003e16:      	blo	0x8003e00 <__aeabi_memset4+0x58> @ imm = #-26
 8003e18:      	subs	r1, #16
 8003e1a:      	strd	r3, r3, [r0]
 8003e1e:      	strd	r3, r3, [r0, #8]
 8003e22:      	adds	r0, #16
 8003e24:      	cmp	r1, #3
 8003e26:      	bhi	0x8003e18 <__aeabi_memset4+0x70> @ imm = #-18
 8003e28:      	mov	r12, r0
 8003e2a:      	mov	r0, r12
 8003e2c:      	pop.w	{r4, r6, r7, lr}
 8003e30:      	b.w	0x8003d9e <__aeabi_memset> @ imm = #-150

08003e34 <HardFaultTrampoline>:
 8003e34:      	mov	r0, lr
 8003e36:      	movs	r1, #4
 8003e38:      	tst	r0, r1
 8003e3a:      	bne	0x8003e42 <HardFaultTrampoline+0xe> @ imm = #4
 8003e3c:      	mrs	r0, msp
 8003e40:      	b	0x8003e48 <HardFault_>  @ imm = #4
 8003e42:      	mrs	r0, psp
 8003e46:      	b	0x8003e48 <HardFault_>  @ imm = #-2

08003e48 <HardFault_>:
 8003e48:      	push	{r7, lr}
 8003e4a:      	mov	r7, sp
 8003e4c:      	sub	sp, #8
 8003e4e:      	str	r0, [sp, #4]
 8003e50:      	b	0x8003e52 <HardFault_+0xa> @ imm = #-2
 8003e52:      	movs	r0, #4
 8003e54:      	strb	r0, [r7, #-5]
 8003e58:      	ldrb	r0, [r7, #-5]
 8003e5c:      	bl	0x80034c4 <core::sync::atomic::compiler_fence::h87e4a25d4ba995ec> @ imm = #-2460
 8003e60:      	b	0x8003e52 <HardFault_+0xa> @ imm = #-18
 8003e62:      	bmi	0x8003e0e <__aeabi_memset4+0x66> @ imm = #-88
