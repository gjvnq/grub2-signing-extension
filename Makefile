# Makefile for grub2-sign-extension
# Author: Bandie Kojote (MeikoDis)
# Licence: GNU-GPLv3

all:
	@printf "Nothing to make. Run make install.\n"

install:
	cp ./bin/grub-verify /usr/bin/
	cp ./bin/grub-sign /usr/bin/
	cp ./bin/grub-unsign /usr/bin/
	chown root:root /usr/bin/grub-{verify,sign,unsign}
	chmod ugo=rx /usr/bin/grub-{verify,sign,unsign}
	@printf "Done.\n"

uninstall:
	rm /usr/bin/grub-{verify,sign,unsign}
	@printf "Done.\n"
