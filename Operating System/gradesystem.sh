echo "Enter percentage:"
read p
if [ $p -le 39 -a $p -ge 0 ]
then
  echo "FAIL"
elif [ $p -le 59 -a $p -ge 40 ]
then
  echo "PASS"
elif [ $p -le 66 -a $p -ge 60 ]
then
  echo "FIRST"
elif [ $p -le 67 -a $p -ge 100 ]
then 
  echo "DISTINCTION"
else
  echo "FAIL"
fi