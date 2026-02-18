--- Write a block to delete the record of employee for given EID---
set serveroutput on
DECLARE
    id NUMBER := 101;
BEGIN
    DELETE FROM EMP WHERE EID = id;
    DBMS_OUTPUT.PUT_LINE('Record Deleted');
END;
/