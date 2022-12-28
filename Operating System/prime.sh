echo "Enter a number to check whether it is prime or not:"
read n
count=0
for((i=2;i<$n;i++))
do
  a=`expr $n % $i`
  if [ $a -eq 0 ]
  then
    count=`expr $count + 1`
  fi
done
if [ $count == 0 ]
then
  echo "Prime number"
else
  echo "Not a prime number"
fi