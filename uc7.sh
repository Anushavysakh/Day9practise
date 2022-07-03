#Refactor the Code to write a function to get work hours
calculateworkhours ()
{   
    	attendence=$1
    	case $attendence in 
        	0)
        	    workhrday=0
        	    ;;
        	1)
        	    workhrday=8
        	    ;;
        	2)
        	    workhrday=4
        	    ;;
    esac
    echo $workhrday
}

wagehour=20
max_h=100
max_d=20
total_working_hrs=0
total_working_days=0
while(( total_working_hrs < max_h && total_working_days < max_d ))
do
    (( total_working_days++ ))
    attendence=$(( RANDOM % 3 ))
    workhrday=$( calculateworkhours $attendence)
    (( total_working_hrs += workhrday ))
    
done
echo "Total working hours is $total_working_hrs"
