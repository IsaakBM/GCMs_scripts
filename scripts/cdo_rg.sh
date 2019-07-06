#!/bin/bash


for m in `seq 1 10`
do

# Trick to padd zeros in ksh you would use TYPESET
m=$(printf "%.2d" "$m")
echo MEMBER $m

cdo remapbil,1deg.grd, thetao_${m}_Omon_CanESM2_rcp45_r1i1p1.nc thetao_${m}_rg_Omon_CanESM2_rcp45_r1i1p1.nc

done
