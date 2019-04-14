-- 実習用ユーザを作成します(ユーザ名：ca　パスワード：pro)

CREATE USER ca
IDENTIFIED BY pro
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE temp
QUOTA UNLIMITED ON users;


-- テーブル作成等の権限を与えます

GRANT CREATE SESSION,
      CREATE TABLE,
      CREATE VIEW,
      CREATE SEQUENCE,
      CREATE SYNONYM,
      CREATE PUBLIC SYNONYM,
      DROP PUBLIC SYNONYM,
      RESOURCE
TO ca;

