/** �e�[�u�����ЂƂł����݂��Ă���ꍇ�A�폜���� **/

DECLARE
  v_cnt NUMBER;
BEGIN
  SELECT count(table_name)  INTO v_cnt
  FROM user_tables
  WHERE table_name IN ('SALGRADES','EMPLOYEES','DEPARTMENTS');

  IF v_cnt > 0 THEN
    EXECUTE IMMEDIATE 'DROP TABLE salgrades purge';
    EXECUTE IMMEDIATE 'DROP TABLE employees purge';
    EXECUTE IMMEDIATE 'DROP TABLE departments purge';
  END IF;
END;
/



/* Create Table for ���K */

CREATE TABLE departments
       (deptno NUMBER(2) CONSTRAINT pk_depts PRIMARY KEY,
	dname VARCHAR2(14) ,
	loc VARCHAR2(10) ) ;

CREATE TABLE employees
       (empno NUMBER(4) CONSTRAINT pk_emps PRIMARY KEY,
	ename VARCHAR2(10),
	yomi VARCHAR2(20),
	job VARCHAR2(8),
	mgr NUMBER(4),
	hiredate DATE,
	sal NUMBER(7),
	comm NUMBER(7),
	deptno NUMBER(2) CONSTRAINT fk_deptno REFERENCES departments(deptno));

INSERT INTO departments VALUES
	(10,'�Ǘ�','��蒬');
INSERT INTO departments VALUES 
	(20,'�����J��','���l');
INSERT INTO departments VALUES
	(30,'�c��','�i��');
INSERT INTO departments VALUES
	(40,'����','����');

INSERT INTO employees VALUES
	(1001,'����','sato','�В�',NULL,to_date('2001-02-25','yyyy-mm-dd'),500000,NULL,10);
INSERT INTO employees VALUES
	(1002,'���','suzuki','����',1013,to_date('2000-03-26','yyyy-mm-dd'),200000,NULL,20);
INSERT INTO employees VALUES
	(1003,'����','takahashi','�c��',1007,to_date('2000-05-30 ','yyyy-mm-dd'),300000,30000,30);
INSERT INTO employees VALUES
	(1004,'�c��','tanaka','�c��',1007,to_date('2002-06-02','yyyy-mm-dd'),355000,50000,30);
INSERT INTO employees VALUES
	(1005,'�n��','watanabe','����',1001,to_date('2002-07-11','yyyy-mm-dd'),280000,NULL,20);
INSERT INTO employees VALUES
	(1006,'�ɓ�','ito','�c��',1007,to_date('2008-01-06','yyyy-mm-dd'),300000,140000,30);
INSERT INTO employees VALUES
	(1007,'�R�{','yamamoto','����',1001,to_date('2000-08-09','yyyy-mm-dd'),285000,NULL,30);
INSERT INTO employees VALUES
	(1008,'����','nakamura','����',1001,to_date('2000-09-17','yyyy-mm-dd'),245000,NULL,10);
INSERT INTO employees VALUES
	(1009,'����','kobayashi','��C',1005,to_date('2006-10-21','yyyy-mm-dd'),300000,NULL,20);
INSERT INTO employees VALUES
	(1010,'�ē�','saito','�c��',1007,to_date('2001-12-17','yyyy-mm-dd'),150000,0,30);
INSERT INTO employees VALUES
	(1011,'����','kato','����',1009,to_date('2006-10-21','yyyy-mm-dd'),110000,NULL,20);
INSERT INTO employees VALUES
	(1012,'�g�c','yoshida','����',1007,to_date('2009-03-13','yyyy-mm-dd'),295000,NULL,30);
INSERT INTO employees VALUES
	(1013,'�R�c','yamada','��C',1005,to_date('2001-03-13','yyyy-mm-dd'),280000,NULL,20);
INSERT INTO employees VALUES
	(1014,'���X��','sasaki','����',1008,to_date('2004-05-02','yyyy-mm-dd'),230000,NULL,10);

CREATE TABLE salgrades
      ( grade CHAR(1) CONSTRAINT pk_grades PRIMARY KEY,
	losal NUMBER(7),
	hisal  NUMBER(7));

INSERT INTO salgrades VALUES ('A',100000,190000);
INSERT INTO salgrades VALUES ('B',190001,280000);
INSERT INTO salgrades VALUES ('C',280001,370000);
INSERT INTO salgrades VALUES ('D',370001,460000);
INSERT INTO salgrades VALUES ('E',460001,999999);

COMMIT;
