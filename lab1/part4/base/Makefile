obj-m += mymem.o
mymem-objs := region_list.o mymem_mod.o
KDIR = /lib/modules/$(shell uname -r)/build

all:
	make -C $(KDIR)  M=$(PWD) modules

clean:
	make -C $(KDIR)  M=$(PWD) clean