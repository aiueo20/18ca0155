set echo off
set feed off

@ c:\sql\script_ca\alter_profile             -- �p�X���[�h�̊����𖳊����ɕύX


/** ���[�U�����݂��Ă���ꍇ�A�폜���� **/

DECLARE
  v_cnt NUMBER;
BEGIN
  SELECT COUNT(username) INTO v_cnt
  FROM dba_users
  WHERE username = 'CA';

  IF v_cnt = 1 THEN
    EXECUTE IMMEDIATE 'DROP USER ca CASCADE';
  END IF;
END;
/

@ c:\sql\script_ca\createuser                -- ���[�U���쐬���܂��B


set serveroutput on


DECLARE
  v_cnt  NUMBER;
BEGIN
  SELECT COUNT(username) INTO v_cnt
  FROM dba_users
  WHERE username = 'CA';

  IF v_cnt = 1 THEN
     DBMS_OUTPUT.PUT_LINE('------------------------');
     DBMS_OUTPUT.PUT_LINE('CA���[�U���쐬���܂���');
     DBMS_OUTPUT.PUT_LINE('------------------------');
  END IF;
END;
/

set feed 6
set echo on

