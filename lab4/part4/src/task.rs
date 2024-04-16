
use core::slice::from_raw_parts_mut;
const XPSR: u32 = 0 | (1 << 24);
const START_STACKS: u32 = 0x2000_A000;
const STACK_SIZE: u32 = 0x1000;

pub struct Task<'a> {
    stack: &'a mut  [u32],
    ticker: u32,
    stack_ptr: u32,
}


impl<'a> Task<'a> {
    pub fn new(addr: u32) -> Task<'a> {
        return Task {
            stack: unsafe { from_raw_parts_mut(addr as *mut u32, 1024) },
            ticker: 0,
            stack_ptr: addr,
        };
    }

    pub fn new_empty() -> Task<'a> {
        return Task {
            stack: &mut [],
            ticker: 0,
            stack_ptr: 0,
        };
    }
    pub extern "C" fn setup_stack(&mut self, trampoline_addr: u32, fn_addr: u32) {
        self.stack[1023] = XPSR;
        self.stack[1022] = fn_addr;
        self.stack[1016] = (&mut self.ticker as *mut u32) as u32;
        self.stack[1007] = trampoline_addr;
        self.stack_ptr = (&mut self.stack[1007] as *mut u32) as u32;
    }

    pub fn update_ticker(&mut self) {
        self.ticker+=1;
    }

    pub fn get_sp(&self) -> u32 {
        return self.stack_ptr;
    }

    pub fn get_sp_store(&mut self) -> &mut u32{
        return &mut self.stack_ptr;
    }
}

pub struct Scheduler<'a> {
    tasks: [Task<'a>; 5],
    curr_task: usize,
}

impl<'a> Scheduler<'a> {
    pub fn new() -> Scheduler<'a> {
        let mut task_list = [
            Task::new_empty(),
            Task::new_empty(),
            Task::new_empty(),
            Task::new_empty(),
            Task::new_empty(),
            ];
        for i in 0..5{
            task_list[i] = Task::new(START_STACKS - (i as u32*STACK_SIZE));
        }
        return Scheduler {
            tasks: task_list,
            curr_task: 0,
        };
    }

    pub fn next_proc(&mut self) -> (usize, usize) {
        let old = self.curr_task;
        match self.curr_task {
            0 => self.curr_task = 1,
            1 => self.curr_task = 2,
            2 => self.curr_task = 3,
            3 => self.curr_task = 4,
            4 => self.curr_task = 1,
            _ => self.curr_task = 1,
        }
        return (old, self.curr_task);
    }

    pub fn update_tickers(&mut self) {
        for i in 0..5{
            self.tasks[i].update_ticker();
        }
    }
    
    pub fn get_sp_for_task(&mut self, task_num: usize) -> u32{
        return self.tasks[task_num].get_sp();
    }

    pub fn get_sp_store_for_task(&mut self, task_num:usize) -> &mut u32{
        return self.tasks[task_num].get_sp_store();
    }

    pub fn setup_task_stack(&mut self, task_num: usize,trampoline_addr: u32, fn_addr: u32) {
        self.tasks[task_num].setup_stack(trampoline_addr, fn_addr);
    }
}
