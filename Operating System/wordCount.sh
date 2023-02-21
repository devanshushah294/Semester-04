echo "Enter the file name"
read fileName
lineCount=`wc -l $fileName`
wordCount=`wc -w $fileName`
byteCount=`wc -c $fileName`
echo "number of lines are" $lineCount
echo "number of words are" $wordCount
echo "number of character are" $byteCount