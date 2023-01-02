echo "Enter numbers 1 : ";
read n1;
echo "Enter numbers 2 : ";
read n2;
echo "Enter the number of the function you want to perform:";
echo "1 for Addition";
echo "2 for Subtraction";
echo "3 for Multiplication";
echo "4 for Division";
read f;
case $f in
1)
  ans=`expr $n1 + $n2`;
  echo "answer is $ans";
  ;;
2)
  ans=`expr $n1 - $n2`;
  echo "answer is $ans";
  ;;
3)
  ans=`expr $n1 \* $n2`;
  echo "answer is $ans";
  ;;
4)
  ans=`expr $n1 / $n2`;
  echo "answer is $ans";
  ;;
*)
  echo "INVALID REQUEST";
  ;;
esac