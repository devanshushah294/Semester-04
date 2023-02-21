for file in * 
do
if [ -r $file ] 
then
    echo $file "read"
fi
done
for file in * 
do
if [ -w $file ] 
then
    echo $file "write"
fi
done
for file in * 
do
if [ -e $file ] 
then
    echo $file "write"
fi
done