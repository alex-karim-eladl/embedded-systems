extern crate num_cpus;

fn main() {
    let start = std::time::Instant::now();
    let args: Vec<String> = std::env::args().collect();
    if args.len() < 2 {
        println!("Usage: ./prime <number>.");
        return;
    }

    let input_res = args[1].parse::<i32>();
    if input_res.is_err() {
        println!("Please supply a valid number.");
        return;
    }
    let input = input_res.unwrap();
    let sqrt_input = (input as f64).sqrt();
    let table = std::sync::Arc::new(std::sync::Mutex::new(vec![true; (input + 2) as usize]));

    let num_cpus = num_cpus::get();
    let mut handles = Vec::new();
    for cpu in 0..num_cpus {
        let cpu_num = cpu + 1;
        let a = std::sync::Arc::clone(&table);
        let handle = std::thread::spawn(move || {
            let mut array = a.lock().unwrap();
            let mut i = cpu_num + 1;
            while i <= sqrt_input as usize {
                if array[i] {
                    let mut mult = 0;
                    while (i * i + mult * i) < input as usize {
                        let j = i * i + mult * i;
                        array[j] = false;
                        mult += 1
                    }
                }
                i += num_cpus;
            }
        });
        handles.push(handle);
    }
    let mut final_count: i32 = 0;
    for handle in handles {
        handle.join().unwrap();
    }
    let resulting = table.lock().unwrap();

    for i in 2..input as usize {
        if resulting[i] {
            final_count += 1;
        }
    }
    let elapsed = start.elapsed().as_nanos();
    println!("{}", format!("{final_count} {elapsed}"))
}
