echo "Enter the number 1 : "
read number1
echo "Enter the number 2 : "
read number2
echo "Enter the number 3 : "
read number3
if [ $number1 -gt $number2 ]
then
  if [ $number1 -gt $number3 ]
    then
      echo "$number1 is largest"
  else echo "$number3 is largest"
  fi
else
  if [ $number2 -gt $number3 ]
    then
      echo "$number2 is largest"
  else echo "$number3 is largest"
  fi
fi