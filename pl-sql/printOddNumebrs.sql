DECLARE 
n number:=100;
r_mod number;
BEGIN
for i in 1..n
loop
-- dbms_output.put_line(i);
r_mod:= MOD(i, 2);
if r_mod = 0 then
dbms_output.put_line(' ');
else 
dbms_output.put_line(i);
end if;
end loop;
END;
/