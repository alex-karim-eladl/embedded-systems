
cd ../kernel
cargo build
cp ./target/thumbv7em-none-eabi/debug/libemb_rust.a ../links
cd ../tasks/flash_blue
cargo build
cp ./target/thumbv7em-none-eabi/debug/libflash_blue.a ../../links
cd ../../links
arm-none-eabi-gcc -nostartfiles -o emb_rust -T link.x -Wl,--start-group libflash_blue.a libemb_rust.a -Wl,--end-group