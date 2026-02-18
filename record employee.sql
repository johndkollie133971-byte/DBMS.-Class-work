set serveroutput on
DECLARE
    CURSOR c1 IS
        SELECT * FROM EMP
        WHERE Gender = 'M' AND Deptname = 'HR';
    rec c1%ROWTYPE;
begin 
    OPEN c1;
    LOOP
        FETCH c1 INTO rec;
        EXIT WHEN c1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(rec.EID || ' ' || rec.EName || ' ' || rec.Deptname);
    END LOOP;
    CLOSE c1;
END;
/