obj-m += mymem_smart.o
mymem_smart-objs := region_list_smart.o mymem_smart_mod.o

KDIR = /lib/modules/$(shell uname -r)/build

all:
	make -C $(KDIR)  M=$(PWD) modules

clean:
	make -C $(KDIR)  M=$(PWD) clean