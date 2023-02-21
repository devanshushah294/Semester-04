echo 'Enter the directory name'
read dir
if [ -d "$dir" ]
then
    echo 'yeah!'
else
    `mkdir $dir`
    echo "directory created successfully"
fi
echo 'enter the file name : '
read file
if [ -f "$file" ]
then
    echo 'file already exists'
else
    `cat > $file`
    echo "file created successfully"
fi