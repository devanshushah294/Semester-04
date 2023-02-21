echo "Enter the string "
read string
echo "Enter the file name"
read fileName
a=`grep -h $fileName`
echo $a