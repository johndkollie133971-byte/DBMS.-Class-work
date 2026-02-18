---calculate discount-----
set serveroutput on
declare
    pname VARCHAR2(20) := 'Pen';
    qty NUMBER := 10;
    price NUMBER := 20;
    disc_per NUMBER := 10;
    total NUMBER;
    discount NUMBER;
begin
    total := qty * price;
    discount := (total * disc_per) / 100;

    DBMS_OUTPUT.PUT_LINE('Product Name : ' || pname);
    DBMS_OUTPUT.PUT_LINE('Total Amount : ' || total);
    DBMS_OUTPUT.PUT_LINE('Discount (Rs): ' || discount);
END;
/