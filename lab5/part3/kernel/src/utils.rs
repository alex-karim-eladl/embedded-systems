pub struct TaskQ {
    elements: [usize; 4],
    cap: usize,
}

impl TaskQ {
    pub fn new() -> TaskQ {
        return TaskQ {
            elements: [0; 4],
            cap: 0,
        };
    }

    pub fn init_allocated() -> TaskQ {
        let mut q = TaskQ::new();
        q.elements[0] = 1;
        q.cap = 1;
        return q;
    }

    pub fn init_unallocated() -> TaskQ {
        let mut q = TaskQ::new();
        q.elements[0] = 2;
        q.elements[1] = 3;
        q.elements[2] = 4;
        q.cap = 3;
        return q;
    }

    pub fn enq(&mut self, ele: usize) {
        if ele == 13 {
            return;
        }
        if self.cap == 4{
            let _stoopid = ele;
            return;
        }
        self.elements[self.cap] = ele;
        self.cap+=1;
    }

    pub fn deq(&mut self) -> usize {
        if self.cap == 0 {
            return 13;
        }
        let ret = self.elements[0];
        for i in 0..self.cap - 1 {
            self.elements[i] = self.elements[i+1];
        }
        self.cap-=1;
        // for i in self.cap..4{
        //     self.elements[i] = 0;
        // }
        return ret;
    }
}
