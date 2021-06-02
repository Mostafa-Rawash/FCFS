stay="yes"
echo "Welcome to FCFS implementation"


while [ $stay == "yes" ];do #  to run the program many times untel the user end thier processes
echo "Enter the number of processes that you want to calculate" #  take the the numer of process from the user 
read f 
# store the num. of processes in var. "f"
waitingTime=0
# waiting time for first processes will be 0 by default
avarage=0 # will collect each process brust time then divided them by  
for ((x=1;x<=$f;x++)) # looping to take each processes brust time 
do
echo "Enter the burst/duration time for process num.$x" # to enter the brust time for the process num. $x
read burstTime
if [ $x != $f  ]
then
waitingTime=$((waitingTime+burstTime))
else 
waitingTime=0
fi
echo "waitingTime is $waitingTime"
totalBrutTime=$(($totalBrutTime+$waitingTime))
done # end of for loop
avarage=$((totalBrutTime/f))  # will devide the total of brusting time by num. of processes 
echo "avarage time to nerest integer is equal: $avarage "
echo "did you want to make new process? (yes or no)"
read stay # if the user enter "no" the program will stop 
done # end of while loop