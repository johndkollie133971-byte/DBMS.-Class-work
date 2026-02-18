set serveroutput on
DECLARE
    p NUMBER := 10000;
    r NUMBER := 5;
    n NUMBER := 2;
    si NUMBER;
BEGIN
    si := (p * r * n) / 100;
    DBMS_OUTPUT.PUT_LINE('Simple Interest = ' || si);
END;
/