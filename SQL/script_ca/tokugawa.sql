/** �e�[�u�����ЂƂł����݂��Ă���ꍇ�A�폜���� **/

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

Insert Into tokugawa Values( 'T_01','�ƍN','�����₷',1,NULL,NULL);
Insert Into tokugawa Values( 'H_02','�G��','�Ђł���',2,'T_01',NULL);
Insert Into tokugawa Values( 'H_03','�ƌ�','�����݂�',3,'H_02',NULL);
Insert Into tokugawa Values( 'H_04','�ƍj','������',4,'H_03',NULL);
Insert Into tokugawa Values( 'H_05','�j�d','�Ȃ���',NULL,'H_03',NULL);
Insert Into tokugawa Values( 'H_06','�j�g','�Ȃ悵',5,'H_03','H_04');
Insert Into tokugawa Values( 'H_07','�Ɛ�','�����̂�',6,'H_05','H_06');
Insert Into tokugawa Values( 'H_08','�ƌp','������',7,'H_07',NULL);
Insert Into tokugawa Values( 'Y_02','����','���̂�',NULL,'T_01',NULL);
Insert Into tokugawa Values( 'Y_03','����','�݂���',NULL,'Y_02',NULL);
Insert Into tokugawa Values( 'Y_04','�g�@','�悵�ނ�',8,'Y_03','H_08');
Insert Into tokugawa Values( 'Y_05','�Əd','��������',9,'Y_04',NULL);
Insert Into tokugawa Values( 'Y_06','�@��','�ނ˂���',NULL,'Y_04',NULL);
Insert Into tokugawa Values( 'Y_07','�Ǝ�','�����͂�',10,'Y_05',NULL);
Insert Into tokugawa Values( 'Y_08','����','�͂邳��',NULL,'Y_06',NULL);
Insert Into tokugawa Values( 'Y_09','�Ɛ�','�����Ȃ�',11,'Y_08','Y_07');
Insert Into tokugawa Values( 'Y_10','�ƌc','�����̂�',12,'Y_09',NULL);
Insert Into tokugawa Values( 'Y_11','�ď�','�Ȃ�䂫',NULL,'Y_09',NULL);
Insert Into tokugawa Values( 'Y_12','�ƒ�','��������',13,'Y_10',NULL);
Insert Into tokugawa Values( 'Y_13','�Ɩ�','��������',14,'Y_11','Y_12');
Insert Into tokugawa Values( 'F_02','���[','���ӂ�',NULL,'T_01',NULL);
Insert Into tokugawa Values( 'F_03','����','�݂���',NULL,'F_02',NULL);
Insert Into tokugawa Values( 'F_04','�j��','�Ȃ���',NULL,'F_03',NULL);
Insert Into tokugawa Values( 'M_04','�������L','�܂�������Ƃ�',NULL,NULL,NULL);
Insert Into tokugawa Values( 'F_05','�@�','�ނ˂���',NULL,'M_04','F_04');
Insert Into tokugawa Values( 'F_06','�@��','�ނ˂���',NULL,'F_05',NULL);
Insert Into tokugawa Values( 'F_07','����','�͂����',NULL,'F_06',NULL);
Insert Into tokugawa Values( 'F_08','���I','�͂�Ƃ�',NULL,'F_07',NULL);
Insert Into tokugawa Values( 'F_09','�ď�','�Ȃ肠��',NULL,'F_08',NULL);
Insert Into tokugawa Values( 'F_10','�c��','�悵�̂�',15,'F_09','Y_13');

commit;
