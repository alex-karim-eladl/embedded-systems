#!/bin/bash

make
sudo dmesg --clear
sudo insmod base/mymem.ko
sudo insmod smart/mymem_smart.ko
sudo dmesg
cd userspace
make
sudo ./test
sudo dmesg
cd ..
sudo rmmod mymem_smart.ko
sudo rmmod mymem.ko
sudo dmesg