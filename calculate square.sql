----calculate the square----
set serveroutput on
DECLARE
    num NUMBER := 5;
    sq NUMBER;
    cu NUMBER;
BEGIN
    sq := num * num;
    cu := num * num * num;

    DBMS_OUTPUT.PUT_LINE('Square = ' || sq);
    DBMS_OUTPUT.PUT_LINE('Cube = ' || cu);
END;
/