DECLARE
n number:=1633;
r_mod number;
BEGIN
r_mod := MOD(n, 2);
if r_mod = 0 then
dbms_output.put_line('The given number is even');
else
dbms_output.put_line('The given number is odd');
end if;
END;
/