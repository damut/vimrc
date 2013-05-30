@echo off

copy vimrc %HOME%\_vimrc
copy gvimrc %HOME%\_gvimrc

gvim +BundleInstall +qall
