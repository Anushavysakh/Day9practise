echo  "Welcome to Employee Wage Computation Program"
echo "Attendence"
result=$(($RANDOM%2))
if [[ $result -eq 0 ]]
then
	echo "Employee is absent";
else
	echo "Employee is present";
fi
