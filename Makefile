BASE_MODULES = theme.json gnome-shell.css 
EXTRA_MODULES = four_rtl.svg four.svg one_rtl.svg one.svg three_rtl.svg three.svg two_rtl.svg two.svg
INSTALLBASE = ~/.themes
INSTALLNAME = adwaita-dashtodock

all:
	@echo "\n Just run make install to install the theme in the local directory or make zip-file to get a zip archive containing the theme\n"

install: install-local

install-local: build_dir
	rm -rf $(INSTALLBASE)/$(INSTALLNAME)
	mkdir -p $(INSTALLBASE)/$(INSTALLNAME)
	cp -r _build/* $(INSTALLBASE)/$(INSTALLNAME)/
	-rm -fR ./_build
	@echo done

build_dir: 
	-rm -fR ./_build
	mkdir -p _build
	cd _build; \
	mkdir gnome-shell;
	cd gnome-shell; \
	cp $(BASE_MODULES) $(EXTRA_MODULES) ../_build/gnome-shell/

zip-file: build_dir
	cd _build ; \
	zip -qr "$(INSTALLNAME).zip" .
	mv _build/$(INSTALLNAME).zip ./ 
	-rm -fR _build 
