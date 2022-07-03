perHourSalary=20
totalSalary=0
totalWorkingHour=0
totalWorkdays=0
while [[ $totalWorkdays -lt 20 && $totalWorkingHour -lt 100 ]]
do
	 (( totalWorkdays++ ))
	 attendence=$(( $RANDOM%3 ))
         case $attendence in
		0)
			echo "Employee is absent"
			workingHour=0
			;;

		1)
			echo "Employee is present"
			workingHour=8
			;;

		2)
			echo "Employee is working as part time"
			workingHour=4
			;;
		esac
	((totalWorkingHour+=workingHour))
done
total_salary=$(( $totalWorkingHour * $perHourSalary))
echo "Employee totalSalary per month = $total_salary"
