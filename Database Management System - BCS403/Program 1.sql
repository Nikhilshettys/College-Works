-- Program 1

-- Create a table called Employee & execute the following. 
-- Employee(EMPNO,ENAME,JOB, MANAGER_NO, SAL, COMMISSION) 
-- 1. Create a user and grant all permissions to the user. 
-- 2. Insert the any three records in the employee table contains attributes 
-- EMPNO, ENAME JOB, MANAGER_NO, SAL, COMMISSION and use rollback. 
-- Check the result. 
-- 3. Add primary key constraint and not null constraint to the 
-- employee table. 
-- 4. Insert null values to the employee table and verify the result.

-- Step 1: Create user HEMANTH with password BCS403
CREATE USER HEMANTH IDENTIFIED BY BCS403;
GRANT CONNECT, RESOURCE, DBA TO HEMANTH;

-- Step 3: Connect to the user (do this manually in SQL Developer or SQL*Plus):
-- CONNECT HEMANTH/BCS403;

-- Step 4: Create the EMPLOYEE table
CREATE TABLE employee (
    empno int,
    ename VARCHAR(10),
    job VARCHAR(10),
    manager_no int,
    sal int,
    commission int
);

-- Step 5: View table structure
DESC employee;

-- Step 6: Insert records
INSERT INTO employee VALUES (101, 'alok', 'manager', 1234, 10000, 70);
INSERT INTO employee VALUES (102, 'raju', 'analyst', 2345, 9000, 65);
INSERT INTO employee VALUES (103, 'david', 'analyst', 3456, 9000, 65);
INSERT INTO employee VALUES (104, 'rahul', 'clerk', 4567, 7000, 55);
INSERT INTO employee VALUES (105, 'pramod', 'salesman', 5678, 5000, 50);

-- View current table data
SELECT * FROM employee;

-- Step 7: Insert one more record
INSERT INTO employee VALUES (106, 'shashi', 'HR', 5509, 50000, 80);

-- View data again
SELECT * FROM employee;

-- Step 8: Rollback the last insert (shashi)
ROLLBACK;

-- Step 9: Confirm rollback
SELECT * FROM employee;

-- Step 10: Alter table to add primary key and NOT NULL constraint
ALTER TABLE employee MODIFY (
    empno NUMBER PRIMARY KEY,
    ename VARCHAR2(10) NOT NULL
);

-- Step 11: View table structure
DESC employee;
