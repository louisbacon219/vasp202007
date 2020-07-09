date > SUM
#
#  change the value of a in your calculation
#
for a in 3.25 3.30 3.35 3.40 3.45 3.50 3.55 3.60 3.65 3.70 3.75 

do

mkdir $a
cp POTCAR INCAR KPOINTS vsub_VASP5.4.4  $a

cd $a
 
echo "a= $a"

cat >POSCAR <<!
FCC Ni Bulk
 $a
    0.0  0.5  0.5
    0.5  0.0  0.5
    0.5  0.5  0.0
 Ni
 1
direct
 0.0 0.0 0.0
!

qsub vsub_VASP5.4.4
wait

# E=`tail -1 OSZICAR`
# echo $a $E >> ../SUM

cd ..
done
