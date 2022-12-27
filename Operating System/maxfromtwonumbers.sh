echo "Enter the number 1 : "
read number1
echo "Enter the number 2 : "
read number2
if [ $number1 -gt $number2 ]
then
echo "$number1 is largest"
else
echo "$number2 is largest"
fi