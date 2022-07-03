perHourSalary=20
isPresent=$((RANDOM%3))
case $isPresent in
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
salary_day=$(($perHourSalary * $workingHour))
echo "The daily wage of employee =  $salary_day"
