-- Program-5: 
 
-- Create cursor for Employee table & extract the values from the table. 
-- Declare the variables, Open the cursor & extract the values from the cursor. 
-- Close the cursor. Employee(E_id, E_name, Age, Salary)

CREATE TABLE employee (
    E_id INT,
    E_name VARCHAR2(10),
    age INT,
    sal INT
);

DESC employee;

INSERT INTO employee VALUES (111, 'alok', 25, 10000); 
INSERT INTO employee VALUES (222, 'raju', 30, 9000); 
INSERT INTO employee VALUES (333, 'david', 28, 9000); 
INSERT INTO employee VALUES (444, 'rahul', 29, 7000); 
INSERT INTO employee VALUES (555, 'pramod', 31, 8000);

SELECT * FROM employee;

-- Step 5: Enable DBMS Output
SET SERVEROUTPUT ON;

DECLARE
    CURSOR c1 IS SELECT E_id, sal FROM employee;
    vid INT;
    vsal INT;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Emp ID       Emp Salary');
    DBMS_OUTPUT.PUT_LINE('------------------------');

    OPEN c1;
    LOOP
        FETCH c1 INTO vid, vsal;
        EXIT WHEN c1%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(vid || '           ' || vsal);
    END LOOP;
    CLOSE c1;
END;
/