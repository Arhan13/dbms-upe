-- CREATE TABLE EMPLOYEENEW (
--     employee_name varchar(200),
--     employee_no varchar(200),
--     dept_no number(5),
--     date_of_join Date
-- );

-- desc employeenew;

-- CREATE VIEW empview as select * from employeenew;

-- desc empview;

-- INSERT INTO empview values('Arhan', '3', 1, To_Date('18/06/2001', 'dd/mm/yyyy'));
-- INSERT INTO empview values('Hardik', '2', 2, To_Date('01/01/2001', 'dd/mm/yyyy'));

-- delete from empview where employee_name = 'Arhan' and employee_no = '3';
-- update empview set employee_name = 'Rooter' where employee_no = '2';
-- create view empview2 as select * from employeenew;
-- drop view empview;
-- create or replace view empview2 as select employee_name, employee_no from employeenew;
create or replace view empview2(ename, eno) as select employee_name, employee_no from employeenew;

-- SELECT * from empview;
SELECT * from empview2;
SELECT * from employeenew;