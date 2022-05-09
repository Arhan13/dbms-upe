-- WITH DB
CREATE TABLE EMP (
    EMPNO int,
    Name varchar(20),
    DEPTNO int, 
    SAL int
)
INSERT INTO EMP VALUES(7369, 'SMITH', 20, 800)
INSERT INTO EMP VALUES(7499, 'ALLEN', 30, 1600)
INSERT INTO EMP VALUES(7521, 'WARD', 30, 1250)
INSERT INTO EMP VALUES(7566, 'JONES', 20, 850)
INSERT INTO EMP VALUES(7788, 'SCOTT', 20, 1100)

-- To Drop Table
-- DROP TABLE EMP;



DECLARE
salary number(5);

BEGIN
select sal into salary from emp where empno = 7788;
if salary < 2500 THEN
update
END;
/
-- TODO - Not complete