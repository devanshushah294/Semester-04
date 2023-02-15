echo "enter the string"
read str
echo "enter starting index"
read SI;
echo "enter the length"
read length;
count=0;
str=${str:$SI:$length};
echo $str
len=${#str};
for((i=0;i<len;i++))
do
    c=${str:i:1}
    printf $c
    printf "\n"

    if [ $c=='a' -o $c=='e' -o $c=='i' -o $c=='o' -o $c=='u' -o false ] 
     then
        count=`expr $count + 1`
    else
    echo "hello"
    fi
done
echo $count