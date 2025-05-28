-- Program-6: 
 
-- Write a PL/SQL block of code using parameterized Cursor, that will merge 
-- the data available in the newly created table N_RollCall with the data 
-- available in the table O_RollCall. If the data in the first table already exist in 
-- the second table then that data should be skipped.

-- Step 1: Create Table O_Rollcall and Insert Data
CREATE TABLE O_Rollcall (
    roll INT,
    name VARCHAR2(20)
);

INSERT INTO O_Rollcall VALUES (10, 'AJIET');
INSERT INTO O_Rollcall VALUES (20, 'MITE');
INSERT INTO O_Rollcall VALUES (30, 'NITTE');
INSERT INTO O_Rollcall VALUES (40, 'RVC');
INSERT INTO O_Rollcall VALUES (50, 'IIT');

-- Display O_Rollcall contents
SELECT * FROM O_Rollcall;

-- Step 2: Create Table N_Rollcall and Insert Data
CREATE TABLE N_Rollcall (
    roll INT,
    name VARCHAR2(20)
);

INSERT INTO N_Rollcall VALUES (60, 'ALIET');
INSERT INTO N_Rollcall VALUES (70, 'NITK');
INSERT INTO N_Rollcall VALUES (80, 'MIT');
INSERT INTO N_Rollcall VALUES (40, 'RVC');
INSERT INTO N_Rollcall VALUES (50, 'IIT');

-- Display N_Rollcall contents before merge
SELECT * FROM N_Rollcall;

-- Step 3: Create Procedure roll_details
CREATE OR REPLACE PROCEDURE roll_details AS
    rno1 INT;
    nm1 VARCHAR2(20);
    rno2 INT;
    nm2 VARCHAR2(20);
    found_match BOOLEAN;
    CURSOR c1 IS SELECT roll, name FROM O_Rollcall;
    CURSOR c2 IS SELECT roll, name FROM N_Rollcall;
BEGIN
    OPEN c1;
    LOOP
        FETCH c1 INTO rno1, nm1;
        EXIT WHEN c1%NOTFOUND;

        found_match := FALSE;

        OPEN c2;
        LOOP
            FETCH c2 INTO rno2, nm2;
            EXIT WHEN c2%NOTFOUND;

            IF rno1 = rno2 THEN
                found_match := TRUE;
                EXIT;
            END IF;
        END LOOP;
        CLOSE c2;

        IF NOT found_match THEN
            INSERT INTO N_Rollcall VALUES (rno1, nm1);
        END IF;
    END LOOP;
    CLOSE c1;
END;
/

-- Step 4: Call the procedure
BEGIN
    roll_details;
END;
/

-- Step 5: Display updated N_Rollcall
SELECT * FROM N_Rollcall;
