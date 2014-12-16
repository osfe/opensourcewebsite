#!/usr/bin/env bash
echo 'create base directory'
mkdir -p $1
echo 'move to base directory'
cd $1

mkdir -p FAB/GERBER
mkdir -p FAB/PS/SCH
mkdir -p FAB/PS/BRD
mkdir -p FAB/BOM
mkdir -p BCK
mkdir -p DATASHEET
mkdir -p SIMUL
