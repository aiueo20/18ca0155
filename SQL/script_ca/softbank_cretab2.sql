/** ÉeÅ[ÉuÉãÇ™Ç–Ç∆Ç¬Ç≈Ç‡ë∂ç›ÇµÇƒÇ¢ÇÈèÍçáÅAçÌèúÇ∑ÇÈ **/

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



/* Create Table for é¿èK */

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
	(10,'ä«óù','ëÂéËí¨');
INSERT INTO departments VALUES 
	(20,'å§ãÜäJî≠','â°ïl');
INSERT INTO departments VALUES
	(30,'âcã∆','ïiêÏ');
INSERT INTO departments VALUES
	(40,'ç‡ñ±','ìåãû');

INSERT INTO employees VALUES
	(1001,'ç≤ì°','sato','é–í∑',NULL,to_date('2001-02-25','yyyy-mm-dd'),500000,NULL,10);
INSERT INTO employees VALUES
	(1002,'óÈñÿ','suzuki','éññ±',1013,to_date('2000-03-26','yyyy-mm-dd'),200000,NULL,20);
INSERT INTO employees VALUES
	(1003,'çÇã¥','takahashi','âcã∆',1007,to_date('2000-05-30 ','yyyy-mm-dd'),300000,30000,30);
INSERT INTO employees VALUES
	(1004,'ìcíÜ','tanaka','âcã∆',1007,to_date('2002-06-02','yyyy-mm-dd'),355000,50000,30);
INSERT INTO employees VALUES
	(1005,'ìnï”','watanabe','ïîí∑',1001,to_date('2002-07-11','yyyy-mm-dd'),280000,NULL,20);
INSERT INTO employees VALUES
	(1006,'à…ì°','ito','âcã∆',1007,to_date('2008-01-06','yyyy-mm-dd'),300000,140000,30);
INSERT INTO employees VALUES
	(1007,'éRñ{','yamamoto','ïîí∑',1001,to_date('2000-08-09','yyyy-mm-dd'),285000,NULL,30);
INSERT INTO employees VALUES
	(1008,'íÜë∫','nakamura','ïîí∑',1001,to_date('2000-09-17','yyyy-mm-dd'),245000,NULL,10);
INSERT INTO employees VALUES
	(1009,'è¨ó—','kobayashi','éÂîC',1005,to_date('2006-10-21','yyyy-mm-dd'),300000,NULL,20);
INSERT INTO employees VALUES
	(1010,'êƒì°','saito','âcã∆',1007,to_date('2001-12-17','yyyy-mm-dd'),150000,0,30);
INSERT INTO employees VALUES
	(1011,'â¡ì°','kato','éññ±',1009,to_date('2006-10-21','yyyy-mm-dd'),110000,NULL,20);
INSERT INTO employees VALUES
	(1012,'ãgìc','yoshida','éññ±',1007,to_date('2009-03-13','yyyy-mm-dd'),295000,NULL,30);
INSERT INTO employees VALUES
	(1013,'éRìc','yamada','éÂîC',1005,to_date('2001-03-13','yyyy-mm-dd'),280000,NULL,20);
INSERT INTO employees VALUES
	(1014,'ç≤ÅXñÿ','sasaki','éññ±',1008,to_date('2004-05-02','yyyy-mm-dd'),230000,NULL,10);

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
