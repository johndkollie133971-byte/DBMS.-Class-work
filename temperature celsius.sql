---Write a block which converts temperature from Celsius to 
set serveroutput on
DECLARE
    c NUMBER := 30;
    f NUMBER;
BEGIN
    f := (c * 9 / 5) + 32;
    DBMS_OUTPUT.PUT_LINE('Fahrenheit = ' || f);
END;
/