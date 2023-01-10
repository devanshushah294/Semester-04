echo "Enter m :- "
read m
echo "Enter n :- "
read n
while [ $m -le $n ] 
do
  echo $m
  m=`expr $m + 1`
done
