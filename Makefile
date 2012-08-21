BASE_MODULES = theme.json gnome-shell.css 
EXTRA_MODULES = four_rtl.svg four.svg one_rtl.svg one.svg three_rtl.svg three.svg two_rtl.svg two.svg
INSTALLBASE = ~/.themes/
INSTALLNAME = adwaita-dashtodock

all:
	echo "\n Just run make install to install the theme in the local directory\n"

install: install-local
install-local:
	rm -rf $(INSTALLBASE)/$(INSTALLNAME)
	mkdir $(INSTALLBASE)/$(INSTALLNAME)
	mkdir $(INSTALLBASE)/$(INSTALLNAME)/gnome-shell
	cd gnome-shell; \
	cp $(BASE_MODULES) $(EXTRA_MODULES) $(INSTALLBASE)/$(INSTALLNAME)/gnome-shell/
	echo done




