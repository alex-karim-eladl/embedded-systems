obj-m += mymem_smart.o
mymem_smart-objs := mymem_smart_mod.o
mymem_smart_mod-objs := libsmart.so

KDIR = /lib/modules/$(shell uname -r)/build

all:
	make -C $(KDIR)  M=$(PWD) modules

clean:
	make -C $(KDIR)  M=$(PWD) clean