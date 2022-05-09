DECLARE
str varchar(20):= 'arhan';
str1 varchar(20);
len number;
BEGIN
len:= Length(str);
for i in reverse 1..len
loop
str1:=str1||substr(str, i, 1);
end loop;
dbms_output.put_line('Reverse string - ' ||  str1);
END;
/