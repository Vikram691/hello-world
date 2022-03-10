

a=100
b=devops
echo $a times
echo $b
DATE=2022-03-10
DATE=$(date+%F)
echo Today Date is "$DATE"

x=10
y=20
# shellcheck disable=SC2004
ADD=$(($x+$y))
echo Add="$ADD"