----write a block which accepts measurement---
set serveroutput on
declare
    feet NUMBER := 5;
    cm NUMBER;
    inch NUMBER;
    meter NUMBER;
begin
    inch := feet * 12;
    cm := inch * 2.54;
    meter := cm / 100;

    DBMS_OUTPUT.PUT_LINE('Feet   : ' || feet);
    DBMS_OUTPUT.PUT_LINE('Inches : ' || inch);
    DBMS_OUTPUT.PUT_LINE('CM     : ' || cm);
    DBMS_OUTPUT.PUT_LINE('Meter  : ' || meter);
end;
/