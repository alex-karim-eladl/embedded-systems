obj-m := base/ smart/

KDIR = /lib/modules/$(shell uname -r)/build

all:
	make -C $(KDIR)  M=$(PWD)

clean:
	make -C $(KDIR)  M=$(PWD) clean