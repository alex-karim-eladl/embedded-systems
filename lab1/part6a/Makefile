obj-m := base/ unsafe/

KDIR = /lib/modules/$(shell uname -r)/build

all:
	make -C $(KDIR)  M=$(PWD)

clean:
	make -C $(KDIR)  M=$(PWD) clean