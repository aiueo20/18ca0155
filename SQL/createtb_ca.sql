set echo off
set feed off
set pause on


/** �쐬�������[�U�Őڑ����Ȃ����܂��B
**/
connect CA/pro

@ c:\sql\script_ca\kouryaku                 -- �\���쐬���܂��B

@ c:\sql\script_ca\locations

@ c:\sql\script_ca\person

@ c:\sql\script_ca\sales_entry

@ c:\sql\script_ca\se_text

@ c:\sql\script_ca\tokugawa

@ c:\sql\script_ca\kurohonn

@ c:\sql\script_ca\pokemon

@ c:\sql\script_ca\genba

@ c:\sql\script_ca\softbank_cretab2


set serveroutput on


DECLARE
  v_cnt  NUMBER;
BEGIN
  SELECT COUNT(table_name) INTO v_cnt
  FROM user_tables;

  IF v_cnt > 1 THEN
     DBMS_OUTPUT.PUT_LINE('-------------------------------');
     DBMS_OUTPUT.PUT_LINE('�T���v���e�[�u�����쐬���܂���');
     DBMS_OUTPUT.PUT_LINE('-------------------------------');
  END IF;
END;
/


set feed 6
set pause off
set echo on

