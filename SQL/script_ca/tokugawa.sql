/** テーブルがひとつでも存在している場合、削除する **/

DECLARE
  v_cnt NUMBER;
BEGIN
  SELECT count(table_name)  INTO v_cnt
  FROM user_tables
  WHERE table_name IN ('TOKUGAWA');

  IF v_cnt > 0 THEN
    EXECUTE IMMEDIATE 'DROP TABLE tokugawa purge';
  END IF;
END;
/



CREATE TABLE tokugawa (			
	Keifu_no		Varchar2(10)     Constraint pk_tokugawa  Primary Key,
	first_name		Varchar2(10)   Not null,
	kana		Varchar2(20)   Not null,
	ordinal_no		Number(2) ,
	parent_no		Varchar2(10)   Constraint fk_kno_pno  References tokugawa(Keifu_no),
	adoptive_p_no		Varchar2(10)   Constraint fk_kno_ano  References tokugawa(Keifu_no) 
);

Insert Into tokugawa Values( 'T_01','家康','いえやす',1,NULL,NULL);
Insert Into tokugawa Values( 'H_02','秀忠','ひでただ',2,'T_01',NULL);
Insert Into tokugawa Values( 'H_03','家光','いえみつ',3,'H_02',NULL);
Insert Into tokugawa Values( 'H_04','家綱','いえつな',4,'H_03',NULL);
Insert Into tokugawa Values( 'H_05','綱重','つなしげ',NULL,'H_03',NULL);
Insert Into tokugawa Values( 'H_06','綱吉','つなよし',5,'H_03','H_04');
Insert Into tokugawa Values( 'H_07','家宣','いえのぶ',6,'H_05','H_06');
Insert Into tokugawa Values( 'H_08','家継','いえつぐ',7,'H_07',NULL);
Insert Into tokugawa Values( 'Y_02','頼宣','よりのぶ',NULL,'T_01',NULL);
Insert Into tokugawa Values( 'Y_03','光貞','みつさだ',NULL,'Y_02',NULL);
Insert Into tokugawa Values( 'Y_04','吉宗','よしむね',8,'Y_03','H_08');
Insert Into tokugawa Values( 'Y_05','家重','いえしげ',9,'Y_04',NULL);
Insert Into tokugawa Values( 'Y_06','宗尹','むねただ',NULL,'Y_04',NULL);
Insert Into tokugawa Values( 'Y_07','家治','いえはる',10,'Y_05',NULL);
Insert Into tokugawa Values( 'Y_08','治済','はるさだ',NULL,'Y_06',NULL);
Insert Into tokugawa Values( 'Y_09','家斉','いえなり',11,'Y_08','Y_07');
Insert Into tokugawa Values( 'Y_10','家慶','いえのぶ',12,'Y_09',NULL);
Insert Into tokugawa Values( 'Y_11','斉順','なりゆき',NULL,'Y_09',NULL);
Insert Into tokugawa Values( 'Y_12','家定','いえさだ',13,'Y_10',NULL);
Insert Into tokugawa Values( 'Y_13','家茂','いえもち',14,'Y_11','Y_12');
Insert Into tokugawa Values( 'F_02','頼房','よりふさ',NULL,'T_01',NULL);
Insert Into tokugawa Values( 'F_03','光圀','みつくに',NULL,'F_02',NULL);
Insert Into tokugawa Values( 'F_04','綱條','つなえだ',NULL,'F_03',NULL);
Insert Into tokugawa Values( 'M_04','松平頼豊','まつだいらよりとよ',NULL,NULL,NULL);
Insert Into tokugawa Values( 'F_05','宗堯','むねかた',NULL,'M_04','F_04');
Insert Into tokugawa Values( 'F_06','宗翰','むねもと',NULL,'F_05',NULL);
Insert Into tokugawa Values( 'F_07','治保','はるもり',NULL,'F_06',NULL);
Insert Into tokugawa Values( 'F_08','治紀','はるとし',NULL,'F_07',NULL);
Insert Into tokugawa Values( 'F_09','斉昭','なりあき',NULL,'F_08',NULL);
Insert Into tokugawa Values( 'F_10','慶喜','よしのぶ',15,'F_09','Y_13');

commit;
