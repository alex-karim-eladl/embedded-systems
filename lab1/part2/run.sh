#!/bin/bash

make
sudo dmesg --clear
sudo insmod hello.ko
sudo dmesg
sudo cat /sys/module/hello/parameters/enable_logging
sudo bash -c "echo 50 > /sys/module/hello/parameters/double_me"
sudo cat /sys/module/hello/parameters/double_me
sudo dmesg
sudo bash -c "echo 1 > /sys/module/hello/parameters/enable_logging"
sudo cat /sys/module/hello/parameters/enable_logging
sudo bash -c "echo 21 > /sys/module/hello/parameters/double_me"
sudo cat /sys/module/hello/parameters/double_me
sudo dmesg
sudo rmmod hello.ko
sudo dmesg

