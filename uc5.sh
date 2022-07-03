perHourSalary=20
workingdays=20
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
salary_month=$(( $workingdays * $salary_day ))
echo "The salary of 20 working days per month = $salary_month" 
