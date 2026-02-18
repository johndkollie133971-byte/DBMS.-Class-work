---Write a block which displays gross salary of employees---
set serveroutput on
declare
CREATE TABLE EMP (
    EID NUMBER PRIMARY KEY,
    EName VARCHAR2(20),
    Deptno NUMBER,
    Deptname VARCHAR2(20),
    Gender VARCHAR2(1),
    Age NUMBER,
    BasicSal NUMBER
);
declare
    id NUMBER := 101;
    basic NUMBER;
    hra NUMBER;
    da NUMBER;
    medical NUMBER := 500;
    pf NUMBER;
    gross NUMBER;
begin
    SELECT BasicSal INTO basic
    FROM EMP
    WHERE EID = id;

    hra := basic * 0.15;
    da := basic * 0.50;
    pf := basic * 0.10;

    gross := basic + hra + da + medical - pf;

    DBMS_OUTPUT.PUT_LINE('Gross Salary = ' || gross);
    end;
    /