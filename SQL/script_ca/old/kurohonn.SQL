/* SQL実習用・ 社員表、部門表*/

/** テーブルがひとつでも存在している場合、削除する **/

DECLARE
  v_cnt NUMBER;
BEGIN
  SELECT count(table_name)  INTO v_cnt
  FROM user_tables
  WHERE table_name IN ('社員','給与等級','部門');

  IF v_cnt > 0 THEN
    EXECUTE IMMEDIATE 'DROP TABLE 社員 purge';
    EXECUTE IMMEDIATE 'DROP TABLE 給与等級 purge';
    EXECUTE IMMEDIATE 'DROP TABLE 部門 purge';
  END IF;
END;
/

          -- 実習用の表－－部署表を作成します。
CREATE TABLE 部門(
	部門番号    NUMBER(2)     CONSTRAINT PK_部門 PRIMARY KEY,
	部門名      VARCHAR2(14),
	所在地      VARCHAR2(13)
);

          -- 実習用の表－－ランク表を作成します。
CREATE TABLE 給与等級(
	等級			NUMBER(2)	CONSTRAINT PK_給与等級_GRADE PRIMARY KEY,
	最低給与額		NUMBER(9),
	最高給与額		NUMBER(9)
);


          -- 実習用の表－－社員表を作成します。
CREATE TABLE 社員(
	社員番号    NUMBER(4)     CONSTRAINT PK_社員 PRIMARY KEY,
	社員名      VARCHAR2(10),
	職務        VARCHAR2(9),
	上司        NUMBER(4),
	入社日      DATE          DEFAULT SYSDATE,
	給与        NUMBER(9),
	歩合給      NUMBER(9),
	部門番号    NUMBER(2)     CONSTRAINT FK_部門_部門番号 REFERENCES 部門(部門番号)
);


          -- 実習用のデータ－－部門表のデータを挿入します。
INSERT INTO 部門
	VALUES(10,'経理','東京');

INSERT INTO 部門
	VALUES(20,'研究開発','名古屋');

INSERT INTO 部門
	VALUES(30,'営業','大阪');

INSERT INTO 部門
	VALUES(40,'管理','東京');



          -- 実習用のデータ－－社員表のデータを挿入します。
INSERT INTO 社員 
	VALUES(7360,'伊藤','SE',7902,'80/12/17',180000,NULL,20);

INSERT INTO 社員 
	VALUES(7499,'白井','営業',7698,'81/2/20',260000,30000,30);

INSERT INTO 社員 
	VALUES(7521,'小出','営業',7698,'81/2/22',225000,50000,30);

INSERT INTO 社員 
	VALUES(7566,'松岡','部長',7839,'81/4/2',297500,NULL,20);

INSERT INTO 社員 
	VALUES(7654,'高木','営業',7698,'81/9/28',225000,140000,30);

INSERT INTO 社員 
	VALUES(7698,'藤原','部長',7839,'81/5/1',385000,NULL,30);

INSERT INTO 社員 
	VALUES(7782,'高橋','部長',7839,'81/6/9',345000,NULL,10);

INSERT INTO 社員 
	VALUES(7788,'藤井','主任',7566,'87/6/13',300000,NULL,20);

INSERT INTO 社員 
	VALUES(7839,'林','社長',null,'81/11/17',900000,NULL,10);

INSERT INTO 社員 
	VALUES(7844,'川口','営業',7698,'81/9/8',250000,30000,30);

INSERT INTO 社員 
	VALUES(7876,'長谷川','SE',7788,'87/7/13',210000,NULL,20);

INSERT INTO 社員 
	VALUES(7900,'田中','業務',7698,'81/12/3',195000,NULL,30);

INSERT INTO 社員 
	VALUES(7902,'桜井','主任',7566,'81/12/3',300000,NULL,20);

INSERT INTO 社員 
	VALUES(7934,'田村','業務',7782,'82/1/3',230000,NULL,10);



         -- 実習用のデータ－－ランク表のデータを挿入します。
INSERT INTO 給与等級 VALUES(1, 70000,120000);
INSERT INTO 給与等級 VALUES(2,120001,140000);
INSERT INTO 給与等級 VALUES(3,140001,200000);
INSERT INTO 給与等級 VALUES(4,200001,300000);
INSERT INTO 給与等級 VALUES(5,300001,999999);



COMMIT;

