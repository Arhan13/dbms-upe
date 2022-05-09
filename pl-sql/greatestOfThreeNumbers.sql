DECLARE 
a number:=5;
b number:=6;
c number:=7;
BEGIN
-- a:=&a1;
-- b:=&b1;
-- c:=&c1;
if (a>b) and (a>c) then
dbms_output.put_line('A is maximum');
elsif (b>c) and (b>a) then
dbms_output.put_line('B is maximum');
else
dbms_output.put_line('C is maximum');
end if;
END;
/