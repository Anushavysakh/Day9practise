wage_per_hour=20
attendence=$(($RANDOM%3))
if [[ attendence -eq 0 ]]
then
        echo "Employee is absent"
        working_hour=0
        elif [[ attendence -eq 1 ]]
        then
                echo "Employee is present - full time"
                working_hour=8
        else
                echo "Employee is present - part time"
                working_hour=4
fi
Daily_wage=$(( wage_per_hour*working_hour ))
echo "The daily wage of the employee is $Daily_wage"

