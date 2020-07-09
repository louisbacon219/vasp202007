date > SUM
#
#  change the value of a in your calculation
#

# for a in 2.55 2.60 2.65 2.70 2.75 2.80 2.85 2.90 2.95 3.00 3.05
for a in 2.55 2.60 2.65 2.70 2.75 2.80 2.85 2.90 2.95 3.00 3.05 

do

mkdir $a
cp POTCAR INCAR KPOINTS vsub_VASP5.4.4 $a

cd $a
 
echo "a= $a"

cat >POSCAR <<!
BCC Fe Bulk
 $a
   -0.5  0.5  0.5
    0.5 -0.5  0.5
    0.5  0.5 -0.5
 Fe
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
