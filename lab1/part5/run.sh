#!/bin/bash

make
sudo dmesg --clear
sudo insmod base/mymem.ko
sudo insmod smart/mymem_smart.ko
sudo dmesg
cd userspace
make
sudo ./unsafe_test 10000 100
sudo dmesg
sudo dmesg --clear
sudo ./safe_test 10000 100
sudo dmesg
cd ..
sudo rmmod mymem_smart.ko
sudo rmmod mymem.ko
sudo dmesg