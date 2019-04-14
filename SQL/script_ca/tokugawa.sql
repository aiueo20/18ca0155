/** ÉeÅ[ÉuÉãÇ™Ç–Ç∆Ç¬Ç≈Ç‡ë∂ç›ÇµÇƒÇ¢ÇÈèÍçáÅAçÌèúÇ∑ÇÈ **/

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

Insert Into tokugawa Values( 'T_01','â∆çN','Ç¢Ç¶Ç‚Ç∑',1,NULL,NULL);
Insert Into tokugawa Values( 'H_02','èGíâ','Ç–Ç≈ÇΩÇæ',2,'T_01',NULL);
Insert Into tokugawa Values( 'H_03','â∆åı','Ç¢Ç¶Ç›Ç¬',3,'H_02',NULL);
Insert Into tokugawa Values( 'H_04','â∆çj','Ç¢Ç¶Ç¬Ç»',4,'H_03',NULL);
Insert Into tokugawa Values( 'H_05','çjèd','Ç¬Ç»ÇµÇ∞',NULL,'H_03',NULL);
Insert Into tokugawa Values( 'H_06','çjãg','Ç¬Ç»ÇÊÇµ',5,'H_03','H_04');
Insert Into tokugawa Values( 'H_07','â∆êÈ','Ç¢Ç¶ÇÃÇ‘',6,'H_05','H_06');
Insert Into tokugawa Values( 'H_08','â∆åp','Ç¢Ç¶Ç¬ÇÆ',7,'H_07',NULL);
Insert Into tokugawa Values( 'Y_02','óäêÈ','ÇÊÇËÇÃÇ‘',NULL,'T_01',NULL);
Insert Into tokugawa Values( 'Y_03','åıíÂ','Ç›Ç¬Ç≥Çæ',NULL,'Y_02',NULL);
Insert Into tokugawa Values( 'Y_04','ãgè@','ÇÊÇµÇﬁÇÀ',8,'Y_03','H_08');
Insert Into tokugawa Values( 'Y_05','â∆èd','Ç¢Ç¶ÇµÇ∞',9,'Y_04',NULL);
Insert Into tokugawa Values( 'Y_06','è@õö','ÇﬁÇÀÇΩÇæ',NULL,'Y_04',NULL);
Insert Into tokugawa Values( 'Y_07','â∆é°','Ç¢Ç¶ÇÕÇÈ',10,'Y_05',NULL);
Insert Into tokugawa Values( 'Y_08','é°çœ','ÇÕÇÈÇ≥Çæ',NULL,'Y_06',NULL);
Insert Into tokugawa Values( 'Y_09','â∆êƒ','Ç¢Ç¶Ç»ÇË',11,'Y_08','Y_07');
Insert Into tokugawa Values( 'Y_10','â∆åc','Ç¢Ç¶ÇÃÇ‘',12,'Y_09',NULL);
Insert Into tokugawa Values( 'Y_11','êƒèá','Ç»ÇËÇ‰Ç´',NULL,'Y_09',NULL);
Insert Into tokugawa Values( 'Y_12','â∆íË','Ç¢Ç¶Ç≥Çæ',13,'Y_10',NULL);
Insert Into tokugawa Values( 'Y_13','â∆ñŒ','Ç¢Ç¶Ç‡Çø',14,'Y_11','Y_12');
Insert Into tokugawa Values( 'F_02','óäñ[','ÇÊÇËÇ”Ç≥',NULL,'T_01',NULL);
Insert Into tokugawa Values( 'F_03','åıöõ','Ç›Ç¬Ç≠Ç…',NULL,'F_02',NULL);
Insert Into tokugawa Values( 'F_04','çjûä','Ç¬Ç»Ç¶Çæ',NULL,'F_03',NULL);
Insert Into tokugawa Values( 'M_04','èºïΩóäñL','Ç‹Ç¬ÇæÇ¢ÇÁÇÊÇËÇ∆ÇÊ',NULL,NULL,NULL);
Insert Into tokugawa Values( 'F_05','è@Íü','ÇﬁÇÀÇ©ÇΩ',NULL,'M_04','F_04');
Insert Into tokugawa Values( 'F_06','è@äÀ','ÇﬁÇÀÇ‡Ç∆',NULL,'F_05',NULL);
Insert Into tokugawa Values( 'F_07','é°ï€','ÇÕÇÈÇ‡ÇË',NULL,'F_06',NULL);
Insert Into tokugawa Values( 'F_08','é°ãI','ÇÕÇÈÇ∆Çµ',NULL,'F_07',NULL);
Insert Into tokugawa Values( 'F_09','êƒè∫','Ç»ÇËÇ†Ç´',NULL,'F_08',NULL);
Insert Into tokugawa Values( 'F_10','åcäÏ','ÇÊÇµÇÃÇ‘',15,'F_09','Y_13');

commit;
