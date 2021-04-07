n=0
limit=100
headcount=0
tailcount=0
declare -A diction
while [ $n -lt $limit ]
do
randomcheck=$((RANDOM%2))

case $randomcheck in
	1) headcount=$(($headcount+1))
	diction[head]=$headcount
	;;
	0) tailcount=$(($tailcount+1))	
	diction[tail]=$tailcount
	;;
esac
	n=$(($n+1))
done

for key in ${!diction[@]}
do
echo	"$key=${diction[$key]}"
done
echo $headcount $tailcount
headpercent=`echo $headcount 100.00 | awk '{print $1/$2}'`
tailpercent=`echo $tailcount 100.00 | awk '{print $1/$2}'`
echo "head percentage is : "$headpercent
echo "tail percentage is : "$tailpercent
