---Write a PL/SQL block to calculate the total, percentage and grade of student---
set serveroutput on
declare
CREATE TABLE RESULT (
    Rollno NUMBER PRIMARY KEY,
    Name VARCHAR2(20),
    Sub1 NUMBER,
    Sub2 NUMBER,
    Sub3 NUMBER,
    Sub4 NUMBER,
    Sub5 NUMBER,
    Total NUMBER,
    Per NUMBER,
    Grade VARCHAR2(2)
);
declare
    rno NUMBER := 1;
    t NUMBER;
    p NUMBER;
    g VARCHAR2(2);
begin
    SELECT (Sub1+Sub2+Sub3+Sub4+Sub5)
    INTO t
    FROM RESULT
    WHERE Rollno = rno;

    p := t / 5;

    IF p >= 75 THEN
        g := 'A';
    ELSIF p >= 60 THEN
        g := 'B';
    ELSIF p >= 50 THEN
        g := 'C';
    ELSE
        g := 'F';
    END IF;

    UPDATE RESULT
    SET Total = t, Per = p, Grade = g
    WHERE Rollno = rno;

    DBMS_OUTPUT.PUT_LINE('Total = ' || t);
    DBMS_OUTPUT.PUT_LINE('Percentage = ' || p);
    DBMS_OUTPUT.PUT_LINE('Grade = ' || g);
END;
/
___________________________________