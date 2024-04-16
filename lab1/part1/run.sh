#!/bin/bash

make
sudo dmesg --clear
sudo insmod hello.ko
sudo rmmod hello.ko
sudo dmesg

