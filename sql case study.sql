# 1. Display the first name and department number for all customers whose last name is “De Haa"
select first name ,deparatmant number,last name  from customer
where lastname ='De Haa';

#2. Display all data from Departments table for Sales department (department_name column).


CREATE TABLE departments (
	department_id INT NOT NULL,
	department_name VARCHAR(30) NOT NULL,
	manager_id INT ,
	location_id INT,
	PRIMARY KEY (department_id)
	);
    
    INSERT INTO departments
VALUES (
	10,
	'Administration',
	200,
	1700
	);

INSERT INTO departments
VALUES (
	20,
	'Marketing',
	201,
	1800
	);

INSERT INTO departments
VALUES (
	30,
	'Purchasing',
	114,
	1700
	);

INSERT INTO departments
VALUES (
	40,
	'Human Resources',
	203,
	2400
	);

INSERT INTO departments
VALUES (
	50,
	'Shipping',
	121,
	1500
	);

INSERT INTO departments
VALUES (
	60,
	'IT',
	103,
	1400
	);

INSERT INTO departments
VALUES (
	70,
	'Public Relations',
	204,
	2700
	);

INSERT INTO departments
VALUES (
	80,
	'Sales',
	145,
	2500
	);

INSERT INTO departments
VALUES (
	90,
	'Executive',
	100,
	1700
	);

INSERT INTO departments
VALUES (
	100,
	'Finance',
	108,
	1700
	);

INSERT INTO departments
VALUES (
	110,
	'Accounting',
	205,
	1700
	);

INSERT INTO departments
VALUES (
	120,
	'Treasury',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	130,
	'Corporate Tax',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	140,
	'Control And Credit',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	150,
	'Shareholder Services',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	160,
	'Benefits',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	170,
	'Manufacturing',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	180,
	'Construction',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	190,
	'Contracting',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	200,
	'Operations',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	210,
	'IT Support',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	220,
	'NOC',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	230,
	'IT Helpdesk',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	240,
	'Government Sales',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	250,
	'Retail Sales',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	260,
	'Recruiting',
	NULL,
	1700
	);

INSERT INTO departments
VALUES (
	270,
	'Payroll',
	NULL,
	1700
	);
drop table departments;

select * from departments;

#2. Display all data from Departments table for Sales department (department_name column).
select * from departments
where department_name='sales';

#3. Display the first_name, last_name, department number and salary for all employees who earn more than 9700 (Employees table). 
select * from employees;

select first_name ,last_name,department_id,salary from employees
where salary >9700;

# 4. Display all data from Employees table for all employees who was hired before January 1st, 1992.

select * from employees
where hire_date <('1992-01-01');

# 5 Display the employee number, first name, job id and department number for all employees whose department number equals 20, 60 or 80 (Employees table).

select employee_id,first_name,job_id,department_id from employees
where department_id in (20,60,80);

# 6. Display the employee number, first name, job id and department number for all employees whose department number is not equal to 20, 60 and 80 (Employees table). 

select employee_id,first_name,job_id,department_id from employees
where department_id not in  (20,60,80);

#7. Display the last name, phone number, salary and manager number, for all employees whose manager number equals 100, 102 or 103 (Employees table). 

select last_name, phone_number,salary,manager_id from employees
where manager_id in (100,102,103);

# 8. Display the first name and salary for all employees whose first name ends with an e (Employees table). 

select first_name,salary from employees
where first_name like '%e';

# 9. Display the last name and department number for all employees where the second letter in their last name is i (Employees table).

select last_name ,department_id from employees
where last_name like '_i%';

# 10. Display all data from Employees table for all employees who have the letters : L, J, or H in their last name. Sort the query in descending order by salary. 

select * from employees
where last_name like '%l%'or'%j%'or'%h%'
order by last_name desc;

#11. Display the first name, hire date, salary and department number for all employees whose first name doesn’t have the letter A. Sort the query in ascending order by department number 
-- (Employees table).

select first_name, hire_date,salary,department_id from employees
 where first_name not like '%a%';
 
 #   12. Display all data from Employees table for all employees without any department number.
 
 select * from employees
 where department_id is null ;
 
 # 13. Display the first name concatenated with the last name, separated by comma, and salary, for all employees whose salary not in the range between 7000 and 15000. Sort the query in ascending 
-- order by the full name (Employees table). 

select first_name, last_name,salary from employees
where salary not between 7000 and 15000
order by first_name and last_name ;

# 14. Display the first name concatenated with the last name, separated by comma, the phone 
-- number concatenated with the email address, separated by hyphen, and salary, for all employees
-- whose salary is in the range of 5000 and 10000. Name the column headings: “FULL_NAME”, “CONTACTS” and “SAL” respectively (Employees table).

select salary ,concat(first_name,',',last_name) as fullname, concat(phone_number,'-',email) as  contact, salary between 5000 and 10000 as sal from employees;



select * from employees;


# 15. Display all data from Employees table for all employees whose: salary is in the range of 6000 and 
-- 800 and their commission is not null or department number is not equal to 80, 90 and 100 and their 
-- hire date is before January 1st, 1990.
select * from employees
where salary between 6000 and 8000 
and  commission_pct is null
and  department_id not in (80,90,100)
and hire_date > ('1990-01-01');

# 16. Display last name, job id and hire date for all employees who was hired during December 12th, 1995 and April 17th, 1998.

select last_name,job_id,hire_date from employees
where hire_date between ('1995-12-12') and ('1998-04-17');

# 17.Display the first name concatenated with last name, hire date, commission percentage, 
-- telephone, and salary for all employees whose salary is greater than 10000 or the third digit in their 
-- phone number equals 5. Sort the query in a descending order by the first name (Employees table).

select  first_name,last_name,hire_date,commission_pct,phone_number,salary from employees
where salary >10000
or phone_number like '___5%'
order by first_name desc;

#18 Display the last name and salary for all employees who earn more than 12000 (Employees table).

select last_name ,salary from employees
where salary > 12000;

#1. Display the last name and department number for all employees whose department number isequal to 50 or 80.
-- perform  Perform this exercise once by using the IN operator, once by using the OR operator.

select last_name,department_id from employees
where department_id in(50,80);

select last_name,department_id from employees
where department_id =50 or  department_id=80;

#20 Display the first name and salary for all employees who doesn’t earn any commission. 

select first_name, salary, commission_pct from employees
where commission_pct is null;

# 21. Display the first name, salary, and manager number for all employees whose manager number is not null 
select first_name,salary,manager_id from employees
where manager_id is not null;


# Problem Statements to be solved using – SQL Scalar/Numeric Functions 

#1. Display the first name in lower case and last name in upper case, for all employees whose employee number is in the range between 80 and 150.
 
select employee_id ,lower(first_name),upper(last_name) from employees
where employee_id between 80 and 150;

#2. Display the first name and last name for all employees whose family name is King, perform this 
-- exercise with a case-insensitive search (regardless of the capitalization used for the values within last 
-- name column).
 
select first_name,last_name from employees
where last_name = 'king';

# 3. Generating new email address 
-- a. For each employee, display the first name, last name, and email address. The email 
-- address will be composed from the first letter of first name, concatenated with the three 
-- first letters of last name, concatenated with @oracle.com. 
-- b. For each employee, display the first name, last name, and email address. The email 
-- address will be composed from the first letter of first name, concatenated with the three last 
-- letters of last name, concatenated with @oracle.com.
select * from employees;
select first_name,last_name,concat(substr(first_name,1,1),substr(last_name,1,3),'@oracle.com') as email from employees;

select first_name,last_name,concat(substr(first_name,1,1),substr(last_name,-3),'@oracle.com') as email from employees;

# 4. Using the CONCAT function 
--  a. For each employee, use the CONCAT function to display the first name concatenated with the last name. 
-- b. For each employee, use the CONCAT function to display the first name concatenated with the last name, concatenated with hire date. 
# a
select first_name,last_name ,concat(first_name,last_name)from employees;
# b
select first_name,last_name,hire_date,concat(first_name,last_name,hire_date)from employees;

# 5. Display the last name for all employees where last name’s length is greater than 8 characters.

select last_name from employees
where length(last_name)>8;

# 6. Phone numbers: 
-- a. For each employee, display the first name, last name, phone number and a new phone 
-- number using the REPLACE function. in the new phone number replace all occurrences of 515 with 815. 

select first_name,last_name,phone_number,replace(phone_number,'515','815')from employees;

# b. For each employee, display the first name, last name, phone number and a new phone 
-- number using the REPLACE function. in the new phone number replace all prefixes of 515 with 815.

select first_name,last_name,phone_number,replace(phone_number,515,815)from employees;

 # 7 For each employee, display : 
-- a. first name 
-- b. salary 
-- c. salary after a raise of 12% 
-- d. salary after a raise of 12%, expressed as a whole number (ROUND). 
-- e. salary after a raise of 12%, round down to the nearest whole number.
# a
select first_name from employees;
#b
select salary from employees;
# c
select first_name,salary,
salary*12/100 from employees;
# d 
 select first_name,salary,
salary*12/100,round(salary*12/100) from employees;
#e 
select first_name,salary,
round(salary) from employees;

# 8. For each employee, display the first name, hire date, hire date minus 10 days, hire date plus one 
-- month, and the day difference between current date and hire date. 

select first_name, hire_date, adddate(hire_date,-10) ,timestampadd(month,1,hire_date) from employees;

#9. For each employee, display the first name, last name, hire date, number of months he works in 
-- the company, and number of years he works in the company. 

select first_name,last_name,hire_date,timestampdiff(month,hire_date,curdate()),timestampdiff(year,hire_date,curdate()) from employees;

#10. For each employee, display the first name, hire date, and hire date plus one year.
 
select first_name,hire_date,timestampadd(year,1,hire_date)from employees;

# 11. For each employee, display the first name, hire date, hire date rounded up to the nearest year, and hire date rounded up to the nearest month. 

select first_name,hire_date,year(round(hire_date)),month(round(hire_date)) from employees;

# 12. For each employee, display the first name, the day of his hire date, and the year of his hire date. 

select first_name,day(hire_date),year(hire_date) from employees;
select * from employees;
# 13. Display the last name in upper case, the salary in format model : ‘9,999.999’, and hire date in 
-- format model: ‘DD/MM/YYYY’, for all employees whose last name begins with the letter D or K.

select last_name,salary,hire_date,upper(last_name), format(salary,'9,99,999'),date_format(hire_date,'%d,%m.%y') from employees
where last_name like 'd%'
or last_name like 'k%';

# 14. Commission Percentage 
-- a. For each employee, display the first name, last name, salary and commission percentage. If an employee doesn’t earn a commission, display 0 instead of NULL. 
-- b. For each employee, display the first name, last name, salary and commission percentage. If an employee doesn’t earn a commission, display “No Commission” instead of NULL

# a
set sql_safe_updates=0;
update employees
set commission_pct=0
where commission_pct is null;

# b 
set sql_safe_updates=0;
update employees
set commission_pct='no commission'
where commission_pct is null;


# 15. For each employee, display the first name, last name, salary, and a salary grade based on these conditions : 
-- a. if the salary is between 0 and 5000 – salary grade level is A 
-- b. if the salary is between 5001 and 15000 – salary grade level is B 
-- c. if the salary is between 15001 and 20000 – salary grade level is C 
-- d. for any other range – salary grade level is D 
select first_name,last_name,salary ,
case
when salary between 0 and 5000 then 'Grade lvl A'
when salary between 5001 and 15000 then 'Grade lvl B'
when salary between 15001 and 20000 then 'Grade lvl C'
else  'Grade lvl D'
end as 'Grade lvl'
from employees;

#Problem Statements to be solved using – Basic Select Statements 

# 1.Create a query to display the employee number, first name, last name, phone number and department number (Employees table). 

select first_name,last_name,phone_number,department_id from employees;

#2. Create a query to display the first name, last name, hire date, salary, and salary after a raise of 
-- 20%. Name the last column (salary after a raise) heading as “ANNUAL_SAL” (Employees table). 

select first_name,last_name,hire_date,salary,
salary*20/100 as 'annual_sal' from employees;

# 3. Create a query to display the last name concatenated with the first name, separated by space, and 
-- the telephone number concatenated with the email address, separated by hyphen. Name the 
-- column headings “FULL_NAME” and “CONTACT_DETAILS” respectively (Employees tables). 

select last_name,first_name,concat(last_name , first_name) as 'full name ',
phone_number,email,concat(phone_number,'-', email)as 'contact detail' from employees;

# 4. Create a query to display the unique manager numbers from Employees table. 

select distinct manager_id from employees;

# 5. Create a query to display the last name concatenated with job_id column, separated by space. Name this column heading as “EMPLOYEE_AND_TITLE” (Employees table). 

select last_name, job_id,concat(last_name ,' ', job_id) as 'EMPLOYEE_AND_TITTLE' from employees;

# 6. Create a query to display the first name, last name, salary, and hire date concatenated with the 
-- literal string “HD”, separated by space. Name the column headings “FN”, “LN”, “SAL”, and “HD” 
-- respectively (Employees table). 

select first_name as 'FN',last_name as 'Ln',salary as 'SAL', hire_date as 'HD' from employees;

# 7. Create a query to display the unique salaries in Employees tables. 

select distinct salary from employees;

# 8. Create a query to display the unique combination of values in department_id and job_id columns (Employees table)
select distinct concat(department_id ,' ', job_id ) from employees ;

# Problem Statements to be solved using – Group By 

#1 . Display the lowest last name alphabetically (Employees table).

select last_name from employees
order by last_name asc;

#2. Display the highest last name alphabetically (Employees table). 

select last_name from employees
order by last_name desc;

# 3. Display the number of rows in Employees table. 

select count(*) from employees;

# 4. Display the number of values (exclude NULLs) in commission_pct column (Employees table). 

select count(commission_pct) as not_null_commission_count
from employees;

# 5. Display the number of NULL values in commission_pct column (Employees table). 

select count(commission_pct) as null_commisssion_pct
from employees;

# 6. Display the highest, lowest, and average salary.

select max(salary) as highest_salary,
min(salary)as lowest_salary,
avg(salary)as avg_salary from employees;

-- Problem Statements to be solved using - GROUP BY and HAVING Clauses 

# 7. Average salary per department a. Display the department number and average salary for each 
-- department. b. Modify your query to display the results only for departments 50 or 80.

select avg(salary)as avarage_salary
 from employees
 group by department_id;
 select avg(salary)as avarage_salary
 from employees
where department_id in (50 ,80 )
group by department_id;

# 8. Numer of employees per job id 
-- a. Display the job id and the number of employees for each job id. 
-- b. Modify your query to display the results only for employees whose salary is greater the -- 10000. 
-- c. Modify your query again, this time display the results only for jobs with more than 2 /people. 

-- a
select job_id ,count(*)as number_employees
from employees
group by job_id;

-- b
select salary,count(*) as number_employees
from employees
where salary > 10000
group by salary ;

-- c 
select job_id,count(*)as number_employees
from employees
group by job_id
having count(*)>2;

# 9. Display the department number, job id, and the average salary for each department and job id. 

select department_id,job_id,avg(salary) as avrage_salary
from employees
group by department_id ,job_id;

# 10. Managers and highest salary 
-- a. Display the manager number and the highest salary for each manager number. 
-- b. Modify your query to display the results only for employees whose salary is greater than 10000. 

-- a
select manager_id,max(salary) as highest_salary
from employees
group by manager_id; 

select manager-id ,max(salary) as highest_salary
from employees
where salary > 10000
group by manager_id;

# 11. Display the job id and minimum salary for each job id, for all jobs whose minimum salary is greater than 7000. 

select job_id,min(salary) as minimun_salary
from employees
where salary >7000
group by job_id;

# 12. Display the department number, and the average salary for each department, for all 
-- departments whose number is in the range of 20 and 80, and their average salary is greater than 9000 

select department_id , avg(salary) as average_salary
from employees
group by department_id
having department_id between 20 and 80
and average_salary>9000;

# Problem Statements to be solved using – SQL Sub-Queries 

# 1. Display the first name and salary for all employees who earn more than employee number 103 0(Employees table). 

select first_name,salary
from employees
where salary > (select salary from employees where employee_id = 103 );

# 2. Display the department number and department name for all departments whose location 
-- number is equal to the location number of department number 90 (Departments table).

select department_id ,department_name 
from departments
where location_id = (select location_id from departments where department_id = 90 );

# 3. Display the last name and hire date for all employees who was hired after employee number 101 (Employees table). 

select last_name ,hire_date
from employees
where hire_date > (select hire_date from employees where employee_id = 101) ;
 
 # 4. Display the first name, last name, and department number for all employees who work in Sales department (Employees and Departments table). 
 
 select first_name,last_name,department_name
 from employees
 where department_name = sales;
 
 # 5. Display the department number and department name for all departments located in Toronto (Departments table). 
 
 
 
 
 
 
 # 6. Display the first name, salary and department number for all employees who work in the department as employee number 124 (Employees table). 
 
 select e.first_name,e.salary,e.department_id
 from employees
 where e.department_id = (
    select e2.department_id
    from employee e2
    where e2.employee_id = 124);