echo 'enter the string'
read str
p;
a=${#str}
echo $a
for((i=a;i-1>=0;i--))
do
    p=${p}${str:i-1:1}
done
echo $p