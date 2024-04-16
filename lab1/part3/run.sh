#!/bin/bash

make
sudo dmesg --clear
sudo insmod mymem.ko
sudo dmesg
cd userspace
make
sudo ./test
sudo dmesg
cd ..
sudo rmmod mymem.ko
sudo dmesg