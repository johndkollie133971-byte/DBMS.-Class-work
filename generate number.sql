--- generate the numbers using LOOP, FOR LOOP and WHILE LOOP inputted by user---
set serveroutput on
declare
    n NUMBER := 5;
    i NUMBER;
begin
    DBMS_OUTPUT.PUT_LINE('--- LOOP ---');
    i := 1;
    loop
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 1;
        EXIT WHEN i > n;
    end loop;

    DBMS_OUTPUT.PUT_LINE('--- FOR LOOP ---');
    FOR i IN 1..n LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    end loop;

    DBMS_OUTPUT.PUT_LINE('--- WHILE LOOP ---');
    i := 1;
    WHILE i <= n LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 1;
    end loop;
end;
/