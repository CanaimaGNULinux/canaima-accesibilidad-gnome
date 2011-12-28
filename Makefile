# Makefile

SHELL := sh -e

all: build

build:

	@echo "Nada para compilar!"

install:

	mkdir -p $(DESTDIR)/usr/share/canaima-accesibilidad-visual/
	cp -r conf $(DESTDIR)/usr/share/canaima-accesibilidad-visual/
	mkdir -p $(DESTDIR)/usr/share/fonts/truetype/braille/
	cp conf/fonts/braile_font.ttf $(DESTDIR)/usr/share/fonts/truetype/braille/
	cp conf/fonts/braille_font_new.ttf $(DESTDIR)/usr/share/fonts/truetype/braille/
	

uninstall:

	rm -rf $(DESTDIR)/usr/share/canaima-accesibilidad-visual/

clean:

distclean:

reinstall: uninstall install

