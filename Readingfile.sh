DIR="dsxFiles"
if [ "$(ls -A $DIR)" ]; then
    file="FilesByIssueFinalToDeploy.txt"
while IFS= read line
do
	IFS=.
	set $line
	jname=`echo $1`
	
done < "$file"
else
    echo "dsxfile does not exist to deploy"
fi
