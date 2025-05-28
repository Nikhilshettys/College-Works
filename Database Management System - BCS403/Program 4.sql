-- Program 4:

-- for the customers table that would fire for INSERT or UPDATE or DELETE 
-- operations performed on the CUSTOMERS table. This trigger will display 
-- the salary difference between the old & new Salary. 
-- CUSTOMERS(ID,NAME,AGE,ADDRESS,SALARY)

CREATE TABLE Customers (
    id INT,
    name VARCHAR(10),
    age INT,
    sal INT,
    address VARCHAR(10)
);

DESC Customers;

INSERT INTO Customers VALUES (10, 'abhi', 25, 10000, 'Bangalore');
INSERT INTO Customers VALUES (20, 'rohith', 30, 9000, 'Delhi');
INSERT INTO Customers VALUES (30, 'david', 28, 9000, 'Pune');
INSERT INTO Customers VALUES (40, 'rahul', 29, 7000, 'Mumbai');
INSERT INTO Customers VALUES (50, 'pramod', 31, 8000, 'Mysore');

SELECT * FROM Customers;

-- Step 5: Enable DBMS output
SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER sal_diff
BEFORE INSERT OR UPDATE OR DELETE ON Customers
FOR EACH ROW
WHEN (NEW.id > 0)
DECLARE
    sal_difference NUMBER;
BEGIN
    IF UPDATING THEN
        sal_difference := :NEW.sal - :OLD.sal;
        DBMS_OUTPUT.PUT_LINE('Previous salary: ' || :OLD.sal);
        DBMS_OUTPUT.PUT_LINE('Current salary: ' || :NEW.sal);
        DBMS_OUTPUT.PUT_LINE('Salary difference: ' || sal_difference);
    END IF;
END;
/

UPDATE Customers SET sal = 10000 WHERE id = 50;

SELECT * FROM Customers;