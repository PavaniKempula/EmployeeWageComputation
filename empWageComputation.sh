#!/bin/bash -x

echo "Welcome to EmployeeWageComputation Program"

function attendance()
{
	Random=$((RANDOM%2))
	if [ $Random -eq 1 ]
	 then
		echo "Employee is present";
	 else
		echo "Employee is absent";
	fi
}


attendance


isPartTime=1;
isFullTime=2;
empRatePerHr=20;
randomCheck=$((RANDOM%3))


case $randomCheck in
        $isFullTime)
	            empHrs=8;
                       ;;
        $isPartTime)
                    empHrs=4;
                       ;;
               *)
                    empHrs=0;
esac

salary=$(($empHrs * $empRatePerHr));


