exit=1
echo "Welcome to FCFS implementation"



#  functions init. 
function takeData () {
echo "Enter the number  of processes that you want"
read f
waitingTime=0
avarage=0
for ((x=1;x<=$f;x++))
do
# echo "Enter the duration time for process num.$x  "
# read durationTime
echo "Enter the burst time for process num.$x"
read burstTime

if [ $x != $f  ]
then
waitingTime=$((waitingTime+burstTime))
else 
waitingTime=0
fi
echo "waitingTime is $waitingTime"
totalBrutTime=$(($totalBrutTime+$waitingTime))
echo "totalBrutTime is until now is $totalBrutTime "
done
avarage=$((totalBrutTime/f))
printf "avarage time to nerest integer is equal: $avarage"
}
takeData

# #  to run the program many times
# while (($exit!=1))
# do
# 
# done





# Notes
# to adding variable in string using $ before var. name