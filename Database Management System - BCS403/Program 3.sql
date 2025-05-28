-- Program-3 
 
-- Queries using aggregate functions(COUNT,AVG,MIN,MAX,SUM),Group 
-- by,Orderby. Employee(E_id, E_name, Age, Salary) 
-- 1. Create Employee table containing all Records E_id, E_name, Age, Salary. 
-- 2. Count number of employee names from employee table 
-- 3. Find the Maximum age from employee table. 
-- 4. Find the Minimum age from employee table. 
-- 5. Find salaries of employee in Ascending Order. 
-- 6. Find grouped salaries of employees.

create table employee (E_id int, 
E_name varchar(10), 
Age int, 
Salary int);

desc Employee;

insert into Employee values(401,'abhi',25 ,10000); 
insert into employee values(402,'rohith',30,9000); 
insert into employee values(403,'david',28,9000); 
insert into employee values(404,'rahul',29,7000); 
insert into employee values(405,'pramod',31,8000);

select * from employee;

select count(E_name) from Employee;

select max(age) from Employee;

select min(age) from Employee;

SELECT * FROM employee ORDER BY salary ASC;

select salary from employee group by salary;