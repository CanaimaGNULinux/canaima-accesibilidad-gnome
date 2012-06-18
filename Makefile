# Makefile

SHELL := sh -e

all: build

build:

	@echo "Nada para compilar!"

install-minimo:

	mkdir -p $(DESTDIR)/usr/share/canaima-accesibilidad-minimo-gnome/
	cp -r conf $(DESTDIR)/usr/share/canaima-accesibilidad-minimo-gnome/
	mkdir -p $(DESTDIR)/usr/share/fonts/truetype/braille/
	cp conf/fonts/*.ttf $(DESTDIR)/usr/share/fonts/truetype/braille/

install-visual:

	mkdir -p $(DESTDIR)/usr/share/canaima-accesibilidad-visual-gnome/
	cp -r conf $(DESTDIR)/usr/share/canaima-accesibilidad-visual-gnome/
	mkdir -p $(DESTDIR)/usr/share/fonts/truetype/braille/
	cp conf/fonts/*.ttf $(DESTDIR)/usr/share/fonts/truetype/braille/
		

uninstall:

	#rm -rf $(DESTDIR)/usr/share/canaima-accesibilidad-minimo-gnome/
	#rm -rf $(DESTDIR)/usr/share/canaima-accesibilidad-visual-gnome/

clean:

distclean:

reinstall: uninstall install

