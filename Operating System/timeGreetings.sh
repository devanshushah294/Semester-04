while [ 1 -gt 0 ]
do
time=`date +%H`
if [[ $time -le 12 ]] 
then
    echo 'Good morning'
elif [[ $time -le 16 ]]
then
    echo 'good afternoon'
else
    echo 'anything'
fi
sleep 10
done