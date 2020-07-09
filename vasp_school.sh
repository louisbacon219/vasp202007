#!/bin/bash

# vasp spring school 2020 setup script
echo "vasp spring school 2020 setup script running..."

echo "Copy VASP files..."
cp /work1/u50tcl00/vasp_school_spring/vasp_school_spring.tar.gz ~/
cd ~/
tar zxvf vasp_school_spring.tar.gz
cp -r ~/vasp_school_spring/bin_vasp ~/
cp -r ~/vasp_school_spring/input ~/
cp -r ~/vasp_school_spring/potential ~/
cp ~/vasp_school_spring/vsub_VASP5.4.4 ~/ 
cp -r ~/vasp_school_spring/result_VASPspring_school /work1/`whoami`

dateTime=$(date +%F_%H-%M-%S)
echo "Copy your ~/.bashrc to ~/bashrc_$dateTime and rewrite ~/.bashrc "
cp ~/.bashrc ~/bashrc_"$dateTime"
cp ~/vasp_school_spring/input/bashrc ~/.bashrc
. ~/.bashrc
echo "vasp spring school 2020 setup finish."
echo "Job script is ~/vsub_VASP5.4.4"
