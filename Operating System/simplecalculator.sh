echo "Enter 2 numbers to operate on them:"
read n1
read n2
echo "Enter the number of the function you want to perform:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read f
case $f in
1)
  ans=`expr $n1 + $n2`
  echo "$ans"
  ;;
2)
  ans=`expr $n1 - $n2`
  echo "$ans"
  ;;
3)
  ans=`expr $n1 \* $n2`
  echo "$ans"
  ;;
4)
  ans=`expr $n1 / $n2`
  echo "$ans"
  ;;
*)
  echo "INVALID REQUEST"
  ;;
esac