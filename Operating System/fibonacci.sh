echo "Enter no of terms you want of the fibonacci series:"
read n
echo "The series is:"
if [ $n -le 0 ]
  then 
  echo "INVALID"
elif [ $n -eq 1 ]
  then
  echo "0"
elif [ $n -eq 2 ]
  then
  echo "0"
  echo "1"
else
  a=0
  b=1
echo "$a"
echo "$b"
for((i=2;i<n;i++))
  do
    c=`expr $a + $b`
    echo "$c"
    a=$b
    b=$c
  done
fi