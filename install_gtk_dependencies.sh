#!/bin/bash

clear

# download GTK dependencies from https://www.gtk.org/docs/installations/linux/
# via  wget
echo "Downloading GTK dependencies from https://www.gtk.org/docs/installations/linux/."
echo "Downloading GTK 4.0.2."
wget https://download.gnome.org/sources/gtk/4.0/gtk-4.0.2.tar.xz
echo "Downloading GLib 2.67."
wget https://download.gnome.org/sources/glib/2.67/glib-2.67.2.tar.xz
echo "Downloading Pango 1.48."
wget https://download.gnome.org/sources/pango/1.48/pango-1.48.1.tar.xz
echo "Downloading Gdk-pixbuf 2.42."
wget https://download.gnome.org/sources/gdk-pixbuf/2.42/gdk-pixbuf-2.42.2.tar.xz
echo "Downloading ATK 2.36."
wget https://download.gnome.org/sources/atk/2.36/atk-2.36.0.tar.xz
echo "Downloading GObject-Introspection 1.66."
wget https://download.gnome.org/sources/gobject-introspection/1.66/gobject-introspection-1.66.1.tar.xz
echo "Downloading Epoxy 1.5."
wget https://download.gnome.org/sources/libepoxy/1.5/libepoxy-1.5.5.tar.xz


# create a subdirectory "dependencies" and move all tarballs there for extraction and building
mkdir dependencies
mv *.tar.xz ./dependencies
cd dependencies
echo "Extracting GTK dependencies."
for FILE in *; do
	tar -xf $FILE; echo -e "Extracting $FILE";
	rm $FILE; echo -e "Removing $FILE archive";
done



