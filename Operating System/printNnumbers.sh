echo "Enter n :- "
read n
i=0
while [ $i -le $n ] 
do
  echo $i
  i=`expr $i + 1`
done
