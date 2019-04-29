cat FilesByIssue.xml |grep location |awk -F "=" '{print $2}'>IssueFile.txt
 file="IssueFile.txt"
> FilesByIssueFinal.txt
while IFS= read line
do
        # display $line or do somthing with $line
	echo "$line"
    SUBSTRING=${line#*/}
    echo $SUBSTRING
    tmp=${SUBSTRING%'"'*}
	echo $tmp >> FilesByIssueFinal.txt
done <"$file"
cat FilesByIssueFinal.txt
