-- Program-2
 
-- Create a table called Employee that contain attributes EMPNO,ENAME,JOB,MGR,SAL) 
--execute the following. 
-- 1. Add a column commission with domain to the Employeetable. 
-- 2. Insert any five records into the table. 
-- 3. Update the column details of job 
-- 4. Rename the column of Employee table using alter command. 
-- 5. Delete the employee whose Empno is 105.

create table employee (empno int, 
ename varchar(10), 
job varchar(10), 
mgr int, 
sal int);

desc employee;

alter table employee add(commission number);

desc employee;

insert into Employee values(101,'alok','manager',1234,10000,'70'); 
insert into employee values(102,'raju','analyst',2345,9000,'65'); 
insert into employee values(103,'david','analyst',3456,9000,'65'); 
insert into employee values(104,'rahul','clerk',4567,7000,'55'); 
insert into employee values(105,'pramod','salesman',5678,5000,'50');

select * from Employee;

update employee set job='trainee' where empno=103;

select * from employee;

alter table employee rename column mgr to manager_ssn;

desc employee;

delete employee where empno=105;

select * from employee;
