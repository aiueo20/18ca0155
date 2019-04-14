/** テーブルがひとつでも存在している場合、削除する **/

DECLARE
  v_cnt NUMBER;
BEGIN
  SELECT count(table_name)  INTO v_cnt
  FROM user_tables
  WHERE table_name IN ('商品','顧客','注文','注文','従業員','商品等級');

  IF v_cnt > 0 THEN
    EXECUTE IMMEDIATE 'DROP TABLE 商品 purge';
    EXECUTE IMMEDIATE 'DROP TABLE 顧客 purge';
    EXECUTE IMMEDIATE 'DROP TABLE 注文 purge';
    EXECUTE IMMEDIATE 'DROP TABLE 注文明細 purge';
    EXECUTE IMMEDIATE 'DROP TABLE 従業員 purge';
    EXECUTE IMMEDIATE 'DROP TABLE 商品等級 purge';
  END IF;
END;
/


-- テーブル作成

CREATE TABLE 商品 (
商品コード  NUMBER(6) Constraint pk_icode primary key,
商品名      VARCHAR2(30),
単価         NUMBER(6),
割引         NUMBER(8,2),
製造者      VARCHAR2(20) );


CREATE TABLE 顧客 (
顧客コード  NUMBER(6) Constraint pk_kcode primary key,
顧客名      VARCHAR2(30),
住所      VARCHAR2(20) );


CREATE TABLE 注文 (
注文コード  NUMBER(6) Constraint pk_scode primary key,
顧客コード  NUMBER(6) ,
注文日      DATE );


CREATE TABLE 注文明細 (
注文コード  NUMBER(6),
明細番号 NUMBER(3),
商品コード  NUMBER(6) ,
数量     NUMBER(4) ,
Constraint pk_sicode primary key(注文コード,明細番号));


CREATE TABLE 従業員 (
社員コード  NUMBER(6) Constraint pk_emcode primary key,
社員名      VARCHAR2(20),
ふりがな    VARCHAR2(20),
上司コード  NUMBER(6));


CREATE TABLE 商品等級 (
等級  VARCHAR2(2) Constraint pk_itemgrade primary key,
最低単価 NUMBER(5),
最高単価 NUMBER(5));


-- データの挿入

INSERT INTO 商品 VALUES(99001,'オーガニックワイン',2000,NULL,'カントリー');
INSERT INTO 商品 VALUES(99002,'新橋焼酎',1000,NULL,'キリンジ');
INSERT INTO 商品 VALUES(99003,'極上ウィスキー',5000,NULL,'キリンジ');
INSERT INTO 商品 VALUES(99004,'スパークリングワイン',2500,NULL,'カントリー');
INSERT INTO 商品 VALUES(99005,'発泡酒',150,0.8,'ユウヒ');
INSERT INTO 商品 VALUES(99006,'缶ビール',250,0.9,'ユウヒ');
INSERT INTO 商品 VALUES(99007,'瓶ビール',350,0.8,'ユウヒ');
INSERT INTO 商品 VALUES(99008,'地ビール',500,NULL,'ユウヒ');
INSERT INTO 商品 VALUES(99009,'大手町カクテル',1000,NULL,'ハコダテ');
INSERT INTO 商品 VALUES(99010,'グラニュー糖梅酒',1500,NULL,'ハコダテ');
INSERT INTO 商品 VALUES(99011,'ノンアルコールビール',130,NULL,'キリンジ');
INSERT INTO 商品 VALUES(99012,'トマトビール',500,NULL,'キリンジ');
INSERT INTO 商品 VALUES(99013,'銀座カクテル',1000,NULL,'ハコダテ');
INSERT INTO 商品 VALUES(99014,'六本木焼酎',1000,NULL,'キリンジ');
INSERT INTO 商品 VALUES(99015,'シャトーマンゴー',50000,NULL,'カントリー');





INSERT INTO 顧客 VALUES(22001,'あいう料亭','港区');
INSERT INTO 顧客 VALUES(22002,'レストランABC','中央区');
INSERT INTO 顧客 VALUES(22003,'いろはバー','渋谷区');
INSERT INTO 顧客 VALUES(22004,'アカサカフェ','新宿区');
INSERT INTO 顧客 VALUES(22005,'ああ居酒屋','千代田区');
INSERT INTO 顧客 VALUES(22006,'いい喫茶','品川区');




INSERT INTO 注文 VALUES(33001,22001,'07-01-10');
INSERT INTO 注文 VALUES(33002,22001,'07-02-03');
INSERT INTO 注文 VALUES(33003,22003,'07-05-03');
INSERT INTO 注文 VALUES(33004,22002,'07-08-10');
INSERT INTO 注文 VALUES(33005,22003,'07-08-10');
INSERT INTO 注文 VALUES(33006,22005,'07-08-10');
INSERT INTO 注文 VALUES(33007,22001,'07-09-10');
INSERT INTO 注文 VALUES(33008,22001,'07-10-10');
INSERT INTO 注文 VALUES(33009,22004,'07-12-10');
INSERT INTO 注文 VALUES(33010,22004,'07-12-20');




INSERT INTO 注文明細 VALUES(33001,1,99001,24);
INSERT INTO 注文明細 VALUES(33001,2,99002,12);
INSERT INTO 注文明細 VALUES(33001,3,99004,6);
INSERT INTO 注文明細 VALUES(33002,1,99010,12);
INSERT INTO 注文明細 VALUES(33002,2,99011,60);
INSERT INTO 注文明細 VALUES(33003,1,99003,60);
INSERT INTO 注文明細 VALUES(33004,1,99001,6);
INSERT INTO 注文明細 VALUES(33004,2,99005,12);
INSERT INTO 注文明細 VALUES(33005,1,99006,24);
INSERT INTO 注文明細 VALUES(33005,2,99007,12);
INSERT INTO 注文明細 VALUES(33006,1,99008,6);
INSERT INTO 注文明細 VALUES(33007,1,99009,60);
INSERT INTO 注文明細 VALUES(33007,2,99010,12);
INSERT INTO 注文明細 VALUES(33008,1,99006,36);
INSERT INTO 注文明細 VALUES(33008,2,99007,6);
INSERT INTO 注文明細 VALUES(33009,1,99006,12);
INSERT INTO 注文明細 VALUES(33009,2,99008,24);
INSERT INTO 注文明細 VALUES(33009,3,99007,60);
INSERT INTO 注文明細 VALUES(33010,1,99001,24);
INSERT INTO 注文明細 VALUES(33010,2,99003,24);





INSERT INTO 従業員 VALUES(101,'佐藤','さとう',NULL);
INSERT INTO 従業員 VALUES(102,'鈴木','すずき',101);
INSERT INTO 従業員 VALUES(103,'高橋','たかはし',101);
INSERT INTO 従業員 VALUES(104,'田中','たなか',102);
INSERT INTO 従業員 VALUES(105,'渡辺','わたなべ',102);
INSERT INTO 従業員 VALUES(106,'伊藤','いとう',103);




INSERT INTO 商品等級 VALUES('A',1,1000);
INSERT INTO 商品等級 VALUES('B',1001,2000);
INSERT INTO 商品等級 VALUES('C',2001,5000);
INSERT INTO 商品等級 VALUES('D',5001,50000);



commit;
