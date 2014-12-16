#!/bin/sh
echo "Creation de la structure d'un projet LateX"
echo "Le dossier courant est " `pwd`
echo "Le nom du projet est " $1

FOLDER=`pwd`
cd $FOLDER

# directory creation
echo "Creation du dossier pour les figures"
mkdir -p $1/figures/source
echo "Creation du dossier pour les tableaux"
mkdir -p $1/tables/source
echo "Creation du dossier pour les sources"
mkdir -p $1/parts
echo "Creation du dossier pour les packages locaux"
mkdir -p $1/packages

echo "Recuperation des modeles"
# copy templates
cd $1
echo "Modele pour les figures"
cp ~/tex/TEMPLATE/graphic_table_generic_layout.tex tables/source/graphic_table_generic_layout.sty
echo "Package generique"
cp ~/tex/TEMPLATE/header.sty packages/
echo "Base du document maitre"
cp ~/tex/TEMPLATE/document_generic_layout.tex $1.tex
echo "Makefile"
cp ~/tex/TEMPLATE/Makefile .

# vim launch
echo "Lancement de gvim"
gvim $1.tex &
