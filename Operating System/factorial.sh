echo "Enter a number : ";
read n;
f=1;
for((i=1;i<=$n;i++))
do
  f=`expr $f \* $i`;
done
echo "Factorial is $f";