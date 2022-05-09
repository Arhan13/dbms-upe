--Code for cursors
-- Creating table
CREATE TABLE UPE (
    ID int,
    Name varchar(200),
    DOB DATE,
    SAL int
);
-- DROP TABLE UPE;
-- Inserting Values
INSERT INTO UPE values(1, 'Arhan', To_Date('18/06/2001', 'dd/mm/yyyy'), 10);
INSERT INTO UPE values(2, 'Hardik', To_Date('01/06/2001', 'dd/mm/yyyy'), 1);
-- Displaying
SELECT * FROM UPE;
-- PL/SQL
DECLARE
num number(5);
BEGIN
UPDATE
UPE SET SAL = SAL + SAL * 10 WHERE Name = 'Arhan' OR Name = 'Hardik';
IF SQL%NOTFOUND THEN
dbms_output.put_line('None of the salaries were updated');
elsif SQL%FOUND THEN
num:=SQL%ROWCOUNT;
dbms_output.put_line('Salaries for ' || num || ' employees are updated');
END IF;
END;
/
SELECT Name, SAL from UPE;