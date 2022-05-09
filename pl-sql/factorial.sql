-- Code for factorial
DECLARE
-- Declare the variables
n number;
fact number;
BEGIN
-- Initialize the variables
n:=5;
fact:= 1;
-- Loop to calculate the factorial
for i in 1..n
Loop
fact:= fact * i;
END LOOP;
-- Display the result
dbms_output.put_line('Factorial of 5 is ' || fact);
--UPDATE
END;
/