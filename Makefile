# Makefile

SHELL := sh -e

all: build

build:

	@echo "Nada para compilar!"

install-minimo:

	mkdir -p $(DESTDIR)/etc/skel/.orca/
	mkdir -p $(DESTDIR)/usr/share/fonts/truetype/braille/
	mkdir -p $(DESTDIR)/usr/share/canaima-accesibilidad-minimo-gnome/
	mkdir -p $(DESTDIR)/usr/share/canaima-accesibilidad-minimo-gnome/conf/
	cp -r conf/orca/* $(DESTDIR)/etc/skel/.orca/
	cp -r conf/fonts/*.ttf $(DESTDIR)/usr/share/fonts/truetype/braille/
	cp -r conf/daemontools/ $(DESTDIR)/usr/share/canaima-accesibilidad-minimo-gnome/conf/

install-visual:

	mkdir -p $(DESTDIR)/etc/skel/.orca/
	mkdir -p $(DESTDIR)/usr/share/fonts/truetype/braille/
	mkdir -p $(DESTDIR)/usr/share/canaima-accesibilidad-visual-gnome/
	mkdir -p $(DESTDIR)/usr/share/canaima-accesibilidad-visual-gnome/conf/orca/
	cp -r conf/orca/* $(DESTDIR)/etc/skel/.orca/
	cp -r conf/fonts/*.ttf $(DESTDIR)/usr/share/fonts/truetype/braille/
	cp -r conf/daemontools/ $(DESTDIR)/usr/share/canaima-accesibilidad-visual-gnome/conf/
		

uninstall:

	rm -rf $(DESTDIR)/usr/share/canaima-accesibilidad-minimo-gnome/
	rm -rf $(DESTDIR)/usr/share/canaima-accesibilidad-visual-gnome/

clean:

distclean:

reinstall: uninstall install

