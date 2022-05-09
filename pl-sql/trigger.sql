-- create table empi(id int, age int);
create table empi(id int, age int);
create trigger trigi
after update or insert or delete on empi;
BEGIN
if updating then
dbms_output.put_line('Updating');
elsif deleting then
dbms_output.put_line('Deleting');
elsif inserting then
dbms_output.put_line('Inserting');
else 
dbms_output.put_line('Output');
end if;
END;
/

-- insert into empi values(5,15);
-- delete from empi where id=5;
update empi set age = 17 where id = 4;