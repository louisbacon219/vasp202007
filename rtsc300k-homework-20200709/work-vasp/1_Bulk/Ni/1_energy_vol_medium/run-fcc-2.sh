date > SUM
#
#  change the value of a in your calculation
#

for a in 3.25 3.30 3.35 3.40 3.45 3.50 3.55 3.60 3.65 3.70 3.75 

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
