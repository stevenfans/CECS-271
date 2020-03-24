% Problem 5.5
format bank
clc; close all; 

%initialize the salary and employees
sal_lvl1 = 12000; emps_at1 = 3000; 
sal_lvl2 = 15000; emps_at2 = 2500; 
sal_lvl3 = 18000; emps_at3 = 1500; 
sal_lvl4 = 24000; emps_at4 = 1000; 
sal_lvl5 = 35000; emps_at5 = 400; 
sal_lvl6 = 50000; emps_at6 = 100; 
sal_lvl7 = 70000; emps_at7 = 25; 

%convert into arrays
sal_array = [sal_lvl1, sal_lvl2, sal_lvl3, sal_lvl4, sal_lvl5, sal_lvl6, sal_lvl7]; 
emps_array = [emps_at1, emps_at2, emps_at3, emps_at4, emps_at5, emps_at6, emps_at7]; 

% Part A. average salary level
average_salary_level = mean(sal_array)

% Part B. number of employees above and below this salary
%check which salaries are above and below the average
above_average = sal_array > average_salary_level;
below_average = sal_array < average_salary_level;
%get the employee number from each salary
Above_Average_Emps = (above_average.*emps_array);
Below_Average_Emps = (below_average.*emps_array);
%sum up the employee arrays to get their sum
Total_Above = sum(Above_Average_Emps)
Total_Below = sum(Below_Average_Emps)

%Part C. the average salary
% get the total amount of salary per employee
total_sal = sum(sal_array.*emps_array);
% get total employees number
total_emps = sum(emps_array); 
% get average
average_salary_earned = total_sal/total_emps 