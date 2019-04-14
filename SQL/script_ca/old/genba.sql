/*
 * 現場で使えるSQL＿テーブル作成スクリプト(Oracle 版)
 */

/** テーブルがひとつでも存在している場合、削除する **/

DECLARE
  v_cnt NUMBER;
BEGIN
  SELECT count(table_name)  INTO v_cnt
  FROM user_tables
  WHERE table_name IN ('支店担当者マスタ','売上データ','商品マスタ','担当者マスタ','顧客マスタ');

  IF v_cnt > 0 THEN
    EXECUTE IMMEDIATE 'DROP TABLE 支店担当者マスタ purge';
    EXECUTE IMMEDIATE 'DROP TABLE 売上データ purge';
    EXECUTE IMMEDIATE 'DROP TABLE 商品マスタ purge';
    EXECUTE IMMEDIATE 'DROP TABLE 担当者マスタ purge';
    EXECUTE IMMEDIATE 'DROP TABLE 顧客マスタ purge';
  END IF;
END;
/


-- テーブル作成：商品マスタ
CREATE TABLE 商品マスタ (
    商品ID     NUMBER NOT NULL,
    商品名     VARCHAR2(30) NOT NULL,
    グループ名 VARCHAR2(20) NOT NULL,
    仕入単価   NUMBER,
    卸単価     NUMBER,
    CONSTRAINT pk_shohin PRIMARY KEY (商品ID)
);

-- テーブル作成：担当者マスタ
CREATE TABLE 担当者マスタ (
    担当者ID   NUMBER NOT NULL,
    担当者名   VARCHAR2(20) NOT NULL,
    ふりがな   VARCHAR2(20) NOT NULL,
    MGR_ID     NUMBER,
    生年月日   DATE NOT NULL,
    性別       NUMBER NOT NULL,
    CONSTRAINT pk_tanto PRIMARY KEY (担当者ID),
    CONSTRAINT fk_mgr FOREIGN KEY (MGR_ID) REFERENCES 担当者マスタ(担当者ID),
    CONSTRAINT ck_gender CHECK (性別=0 OR 性別=1)
);

-- テーブル作成：顧客マスタ
CREATE TABLE 顧客マスタ (
    顧客ID     NUMBER NOT NULL,
    顧客名     VARCHAR2(20) NOT NULL,
    連絡先     VARCHAR2(20) NOT NULL,
    CONSTRAINT pk_kokyaku PRIMARY KEY (顧客ID)
);

-- テーブル作成：売上データ
CREATE TABLE 売上データ (
    伝票番号   NUMBER NOT NULL,
    行番号     NUMBER NOT NULL,
    処理日     DATE NOT NULL,
    商品ID     NUMBER NOT NULL,
    担当者ID   NUMBER NOT NULL,
    顧客ID     NUMBER NOT NULL,
    数量       NUMBER NOT NULL,
    CONSTRAINT pk_uriage PRIMARY KEY (伝票番号, 行番号),
    CONSTRAINT fk_shohin FOREIGN KEY (商品ID) REFERENCES 商品マスタ(商品ID),
    CONSTRAINT fk_tanto FOREIGN KEY (担当者ID) REFERENCES 担当者マスタ(担当者ID),
    CONSTRAINT fk_kokyaku FOREIGN KEY (顧客ID) REFERENCES 顧客マスタ(顧客ID)
);

-- テーブル作成：支店担当者マスタ
CREATE TABLE 支店担当者マスタ (
    支店担当者ID   NUMBER NOT NULL,
    支店担当者名   VARCHAR2(20) NOT NULL,
    ふりがな   VARCHAR2(20) NOT NULL,
    MGR_ID     NUMBER,
    生年月日   DATE NOT NULL,
    性別       NUMBER NOT NULL,
    CONSTRAINT pk_siten_tanto PRIMARY KEY (支店担当者ID),
    CONSTRAINT fk_siten_mgr FOREIGN KEY (MGR_ID) REFERENCES 支店担当者マスタ(支店担当者ID),
    CONSTRAINT ck_siten_gender CHECK (性別=0 OR 性別=1)
);

/*
 * サンプルデータ
 */

-- データ挿入：商品マスタ
INSERT INTO 商品マスタ (商品ID, 商品名, グループ名, 仕入単価, 卸単価) VALUES (1, 'デスクトップ型パソコン', 'パソコン本体', 150000, 180000);
INSERT INTO 商品マスタ (商品ID, 商品名, グループ名, 仕入単価, 卸単価) VALUES (2, 'ノート型パソコン', 'パソコン本体', 230000, 270000);
INSERT INTO 商品マスタ (商品ID, 商品名, グループ名, 仕入単価, 卸単価) VALUES (3, '17型_ディスプレイ', '周辺機器', 40000, 50000);
INSERT INTO 商品マスタ (商品ID, 商品名, グループ名, 仕入単価, 卸単価) VALUES (4, '19型_ディスプレイ', '周辺機器', 80000, 95000);
INSERT INTO 商品マスタ (商品ID, 商品名, グループ名, 仕入単価, 卸単価) VALUES (5, '15型_液晶ディスプレイ', '周辺機器', 100000, 120000);
INSERT INTO 商品マスタ (商品ID, 商品名, グループ名, 仕入単価, 卸単価) VALUES (6, 'デジタルカメラ', '周辺機器', NULL, NULL);
INSERT INTO 商品マスタ (商品ID, 商品名, グループ名, 仕入単価, 卸単価) VALUES (7, 'プリンタ', '周辺機器', 20000, 25000);
INSERT INTO 商品マスタ (商品ID, 商品名, グループ名, 仕入単価, 卸単価) VALUES (8, 'スキャナ', '周辺機器', 25000, 30000);
INSERT INTO 商品マスタ (商品ID, 商品名, グループ名, 仕入単価, 卸単価) VALUES (9, 'HUB', 'ネットワーク機器', 5000, 7000);
INSERT INTO 商品マスタ (商品ID, 商品名, グループ名, 仕入単価, 卸単価) VALUES (10, 'ターミナルアダプタ', 'ネットワーク機器', 15000, 20000);

-- データ挿入：担当者マスタ
INSERT INTO 担当者マスタ (担当者ID, 担当者名, ふりがな, 生年月日, 性別) VALUES (1, '鈴木', 'すずき', '1960-01-23', 1);
INSERT INTO 担当者マスタ (担当者ID, 担当者名, ふりがな, 生年月日, 性別) VALUES (2, '小野', 'おの', '1960-08-02', 1);
INSERT INTO 担当者マスタ (担当者ID, 担当者名, ふりがな, 生年月日, 性別) VALUES (3, '斎藤', 'さいとう', '1963-10-15', 1);
INSERT INTO 担当者マスタ (担当者ID, 担当者名, ふりがな, 生年月日, 性別, MGR_ID) VALUES (4, '藤本', 'ふじもと', '1972-07-18', 1, 3);
INSERT INTO 担当者マスタ (担当者ID, 担当者名, ふりがな, 生年月日, 性別, MGR_ID) VALUES (5, '小林', 'こばやし', '1971-02-11', 0, 3);
INSERT INTO 担当者マスタ (担当者ID, 担当者名, ふりがな, 生年月日, 性別, MGR_ID) VALUES (6, '伊藤', 'いとう', '1972-04-01', 0, 2);
INSERT INTO 担当者マスタ (担当者ID, 担当者名, ふりがな, 生年月日, 性別, MGR_ID) VALUES (7, '佐瀬', 'させ', '1975-02-21', 1, 2);
INSERT INTO 担当者マスタ (担当者ID, 担当者名, ふりがな, 生年月日, 性別, MGR_ID) VALUES (8, '宇賀神', 'うがじん', '1975-12-22', 1, 1);
INSERT INTO 担当者マスタ (担当者ID, 担当者名, ふりがな, 生年月日, 性別, MGR_ID) VALUES (9, '岡田', 'おかだ', '1972-03-18', 1, 4);

-- データ挿入：顧客マスタ
INSERT INTO 顧客マスタ (顧客ID, 顧客名, 連絡先) VALUES (1, '(株)ワイキキソフト', '090-AAAA-AAAA');
INSERT INTO 顧客マスタ (顧客ID, 顧客名, 連絡先) VALUES (2, '鈴木商事', '090-BBBB-BBBB');
INSERT INTO 顧客マスタ (顧客ID, 顧客名, 連絡先) VALUES (3, '斎藤模型店', '090-CCCC-CCCC');
INSERT INTO 顧客マスタ (顧客ID, 顧客名, 連絡先) VALUES (4, 'マクロハード', '090-DDDD-DDDD');
INSERT INTO 顧客マスタ (顧客ID, 顧客名, 連絡先) VALUES (5, '(株)ランヌ', '090-EEEE-EEEE');

-- データ挿入：売上データ
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (1, 1, '2000-04-06', 2, 1, 1, 3);
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (1, 2, '2000-04-06', 2, 1, 4, 3);
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (2, 1, '2000-04-12', 1, 2, 1, 1);
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (3, 1, '2000-04-18', 2, 2, 1, 1);
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (4, 1, '2000-04-26', 4, 3, 2, 1);
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (4, 2, '2000-04-26', 4, 3, 7, 1);
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (4, 3, '2000-04-26', 4, 3, 8, 1);
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (5, 1, '2000-05-08', 1, 6, 3, 3);
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (6, 1, '2000-05-12', 5, 2, 1, 1);
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (6, 2, '2000-05-12', 5, 2, 3, 2);
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (7, 1, '2000-05-19', 4, 5, 2, 1);
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (8, 1, '2000-05-22', 1, 6, 2, 1);
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (9, 1, '2000-05-25', 2, 8, 5, 5);
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (10, 1, '2000-06-02', 1, 2, 5, 1);
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (11, 1, '2000-06-06', 3, 3, 2, 2);
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (11, 2, '2000-06-06', 3, 3, 10, 1);
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (12, 1, '2000-06-12', 2, 6, 2, 1);
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (13, 1, '2000-06-15', 5, 7, 9, 5);
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (13, 2, '2000-06-15', 5, 7, 2, 2);
INSERT INTO 売上データ (伝票番号, 行番号, 処理日, 顧客ID, 担当者ID, 商品ID, 数量) VALUES (13, 3, '2000-06-15', 5, 7, 10, 1);

-- データ挿入：支店担当者マスタ
INSERT INTO 支店担当者マスタ (支店担当者ID, 支店担当者名, ふりがな, 生年月日, 性別) VALUES (4, '藤本', 'ふじもと', '1972-07-18', 1);
INSERT INTO 支店担当者マスタ (支店担当者ID, 支店担当者名, ふりがな, 生年月日, 性別, MGR_ID) VALUES (9, '岡田', 'おかだ', '1972-03-18', 1, 4);
INSERT INTO 支店担当者マスタ (支店担当者ID, 支店担当者名, ふりがな, 生年月日, 性別, MGR_ID) VALUES (10, '田中', 'たなか', '1975-05-23', 1, 9);
INSERT INTO 支店担当者マスタ (支店担当者ID, 支店担当者名, ふりがな, 生年月日, 性別, MGR_ID) VALUES (11, '井上', 'いのうえ', '1980-02-18', 1, 9);
INSERT INTO 支店担当者マスタ (支店担当者ID, 支店担当者名, ふりがな, 生年月日, 性別, MGR_ID) VALUES (12, '佐々木', 'ささき', '1968-10-10', 1, 9);


