date > SUM
#
#  change the value of a in your calculation
#

for a in 3.80 3.85 3.90 3.95 4.00 4.05 4.10 4.15 4.20 4.25 4.30 

do

# mkdir $a
# cp POTCAR INCAR KPOINTS  $a

cd $a
 
echo "a= $a"

# cat >POSCAR <<!
# FCC Au Bulk
#  $a
#     0.0  0.5  0.5
#     0.5  0.0  0.5
#     0.5  0.5  0.0
#  Au
#  1
# direct
#  0.0 0.0 0.0
# !

# vasp
# wait

E=`tail -1 OSZICAR`
echo $a $E >> ../SUM

cd ..
done
