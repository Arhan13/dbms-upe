-- Creating table
-- Emp Table
CREATE TABLE EMP (
    EMPNO int, 
    Name varchar(20),
    DEPTNO int,
    SAL int
);
-- Emp Grade Table
CREATE TABLE EMP_GRADE (
    EMPNO int,
    GRADE varchar(20)
);
-- Droping Tables
-- DROP TABLE EMP;
-- DROP TABLE EMP_GRADE;

-- Inserting values
INSERT INTO EMP VALUES(7369, 'SMITH', 20, 800);
INSERT INTO EMP VALUES(7499, 'ALLEN', 30, 1600);
INSERT INTO EMP VALUES(7521, 'WARD', 30, 1250);
INSERT INTO EMP VALUES(7566, 'JONES', 20, 850);
-- Displaying value from table
SELECT * FROM EMP;
DECLARE
EMP_REC EMP%ROWTYPE;
Cursor c is SELECT * INTO EMP_REC FROM EMP;
BEGIN
OPEN c;
-- Loop to input values
IF c%ISOPEN THEN --- IF (1)
LOOP --- Loop (1)
FETCH c INTO EMP_REC;
IF C%NOTFOUND THEN EXIT; END IF;
IF EMP_REC.SAL <= 1400 THEN
INSERT INTO EMP_GRADE VALUES(EMP_REC.EMPNO, EMP_REC.Name, 'C');
ELSIF EMP_REC.SAL BETWEEN 1401 and 2000 THEN
INSERT INTO EMP_GRADE VALUES(EMP_REC.EMPNO, EMP_REC.Name, 'B');
ELSE 
INSERT INTO EMP_GRADE VALUES(EMP_REC.EMPNO, EMP_REC.Name, 'A');
END IF;
END LOOP;
ELSE 
OPEN c;
END IF;
END;
/
SELECT * FROM EMP_GRADE;