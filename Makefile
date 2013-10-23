# Makefile

SHELL := sh -e

all: build

build:

	@echo "Nada para compilar!"

install-minimo:

	mkdir -p $(DESTDIR)/etc/skel/.orca/
	mkdir -p $(DESTDIR)/usr/share/fonts/truetype/braille/
	mkdir -p $(DESTDIR)/usr/share/canaima-accesibilidad-minimo-gnome/
	cp -r conf/orca/* $(DESTDIR)/etc/skel/.orca/
	cp -r conf/fonts/*.ttf $(DESTDIR)/usr/share/fonts/truetype/braille/
	cp -r conf $(DESTDIR)/usr/share/canaima-accesibilidad-minimo-gnome/

install-visual:

	mkdir -p $(DESTDIR)/etc/skel/.orca/
        mkdir -p $(DESTDIR)/usr/share/fonts/truetype/braille/
	mkdir -p $(DESTDIR)/usr/share/canaima-accesibilidad-visual-gnome/
	cp -r conf/orca/* $(DESTDIR)/etc/skel/.orca/
        cp -r conf/fonts/*.ttf $(DESTDIR)/usr/share/fonts/truetype/braille/
	cp -r conf $(DESTDIR)/usr/share/canaima-accesibilidad-visual-gnome/
		

uninstall:

	rm -rf $(DESTDIR)/usr/share/canaima-accesibilidad-minimo-gnome/
	rm -rf $(DESTDIR)/usr/share/canaima-accesibilidad-visual-gnome/

clean:

distclean:

reinstall: uninstall install

