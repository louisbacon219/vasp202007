date > SUM
#
#  change the value of a in your calculation
#
# for a in 2.55 2.60 2.65 2.70 2.75 2.80 2.85 2.90 2.95 3.00 3.05 
for a in 2.85 2.90 2.95 3.00 3.05 3.10 3.15 3.20 3.25 3.30

do

cd $a
echo "a= $a"
E=`tail -1 OSZICAR`
echo $a $E >> ../SUM
cd ..
done
