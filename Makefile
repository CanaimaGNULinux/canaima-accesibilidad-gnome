# Makefile

SHELL := sh -e

SCRIPTS =       "debian/preinst install" \
                "debian/postinst configure" \
                "debian/prerm remove" \
                "debian/postrm remove" \

all: build

test:

        @echo -n "\n===== Comprobando posibles errores de sintaxis en los scripts de mantenedor =====\n"

        @for SCRIPT in $(SCRIPTS); \
        do \
                echo -n "$${SCRIPT}\n"; \
                bash -n $${SCRIPT}; \
        done

        @echo -n "¡TODO BIEN!\n=================================================================================\n\n"

build:

        @echo "Nada para compilar!"

install:

        mkdir -p $(DESTDIR)/usr/share/canaima-accesibilidad/
        cp -r conf $(DESTDIR)/usr/share/canaima-accesibilidad/

uninstall:

        rm -rf $(DESTDIR)/usr/share/canaima-accesibilidad/

clean:

distclean:

reinstall: uninstall install

