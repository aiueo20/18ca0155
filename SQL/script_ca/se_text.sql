/** �e�[�u�����ЂƂł����݂��Ă���ꍇ�A�폜���� **/

DECLARE
  v_cnt NUMBER;
BEGIN
  SELECT count(table_name)  INTO v_cnt
  FROM user_tables
  WHERE table_name IN ('���i','�ڋq','����','����','�]�ƈ�','���i����');

  IF v_cnt > 0 THEN
    EXECUTE IMMEDIATE 'DROP TABLE ���i purge';
    EXECUTE IMMEDIATE 'DROP TABLE �ڋq purge';
    EXECUTE IMMEDIATE 'DROP TABLE ���� purge';
    EXECUTE IMMEDIATE 'DROP TABLE �������� purge';
    EXECUTE IMMEDIATE 'DROP TABLE �]�ƈ� purge';
    EXECUTE IMMEDIATE 'DROP TABLE ���i���� purge';
  END IF;
END;
/


-- �e�[�u���쐬

CREATE TABLE ���i (
���i�R�[�h  NUMBER(6) Constraint pk_icode primary key,
���i��      VARCHAR2(30),
�P��         NUMBER(6),
����         NUMBER(8,2),
������      VARCHAR2(20) );


CREATE TABLE �ڋq (
�ڋq�R�[�h  NUMBER(6) Constraint pk_kcode primary key,
�ڋq��      VARCHAR2(30),
�Z��      VARCHAR2(20) );


CREATE TABLE ���� (
�����R�[�h  NUMBER(6) Constraint pk_scode primary key,
�ڋq�R�[�h  NUMBER(6) ,
������      DATE );


CREATE TABLE �������� (
�����R�[�h  NUMBER(6),
���הԍ� NUMBER(3),
���i�R�[�h  NUMBER(6) ,
����     NUMBER(4) ,
Constraint pk_sicode primary key(�����R�[�h,���הԍ�));


CREATE TABLE �]�ƈ� (
�Ј��R�[�h  NUMBER(6) Constraint pk_emcode primary key,
�Ј���      VARCHAR2(20),
�ӂ肪��    VARCHAR2(20),
��i�R�[�h  NUMBER(6));


CREATE TABLE ���i���� (
����  VARCHAR2(2) Constraint pk_itemgrade primary key,
�Œ�P�� NUMBER(5),
�ō��P�� NUMBER(5));


-- �f�[�^�̑}��

INSERT INTO ���i VALUES(99001,'�I�[�K�j�b�N���C��',2000,NULL,'�J���g���[');
INSERT INTO ���i VALUES(99002,'�V���Ē�',1000,NULL,'�L�����W');
INSERT INTO ���i VALUES(99003,'�ɏ�E�B�X�L�[',5000,NULL,'�L�����W');
INSERT INTO ���i VALUES(99004,'�X�p�[�N�����O���C��',2500,NULL,'�J���g���[');
INSERT INTO ���i VALUES(99005,'���A��',150,0.8,'���E�q');
INSERT INTO ���i VALUES(99006,'�ʃr�[��',250,0.9,'���E�q');
INSERT INTO ���i VALUES(99007,'�r�r�[��',350,0.8,'���E�q');
INSERT INTO ���i VALUES(99008,'�n�r�[��',500,NULL,'���E�q');
INSERT INTO ���i VALUES(99009,'��蒬�J�N�e��',1000,NULL,'�n�R�_�e');
INSERT INTO ���i VALUES(99010,'�O���j���[���~��',1500,NULL,'�n�R�_�e');
INSERT INTO ���i VALUES(99011,'�m���A���R�[���r�[��',130,NULL,'�L�����W');
INSERT INTO ���i VALUES(99012,'�g�}�g�r�[��',500,NULL,'�L�����W');
INSERT INTO ���i VALUES(99013,'����J�N�e��',1000,NULL,'�n�R�_�e');
INSERT INTO ���i VALUES(99014,'�Z�{�؏Ē�',1000,NULL,'�L�����W');
INSERT INTO ���i VALUES(99015,'�V���g�[�}���S�[',50000,NULL,'�J���g���[');





INSERT INTO �ڋq VALUES(22001,'����������','�`��');
INSERT INTO �ڋq VALUES(22002,'���X�g����ABC','������');
INSERT INTO �ڋq VALUES(22003,'����̓o�[','�a�J��');
INSERT INTO �ڋq VALUES(22004,'�A�J�T�J�t�F','�V�h��');
INSERT INTO �ڋq VALUES(22005,'����������','���c��');
INSERT INTO �ڋq VALUES(22006,'�����i��','�i���');




INSERT INTO ���� VALUES(33001,22001,'07-01-10');
INSERT INTO ���� VALUES(33002,22001,'07-02-03');
INSERT INTO ���� VALUES(33003,22003,'07-05-03');
INSERT INTO ���� VALUES(33004,22002,'07-08-10');
INSERT INTO ���� VALUES(33005,22003,'07-08-10');
INSERT INTO ���� VALUES(33006,22005,'07-08-10');
INSERT INTO ���� VALUES(33007,22001,'07-09-10');
INSERT INTO ���� VALUES(33008,22001,'07-10-10');
INSERT INTO ���� VALUES(33009,22004,'07-12-10');
INSERT INTO ���� VALUES(33010,22004,'07-12-20');




INSERT INTO �������� VALUES(33001,1,99001,24);
INSERT INTO �������� VALUES(33001,2,99002,12);
INSERT INTO �������� VALUES(33001,3,99004,6);
INSERT INTO �������� VALUES(33002,1,99010,12);
INSERT INTO �������� VALUES(33002,2,99011,60);
INSERT INTO �������� VALUES(33003,1,99003,60);
INSERT INTO �������� VALUES(33004,1,99001,6);
INSERT INTO �������� VALUES(33004,2,99005,12);
INSERT INTO �������� VALUES(33005,1,99006,24);
INSERT INTO �������� VALUES(33005,2,99007,12);
INSERT INTO �������� VALUES(33006,1,99008,6);
INSERT INTO �������� VALUES(33007,1,99009,60);
INSERT INTO �������� VALUES(33007,2,99010,12);
INSERT INTO �������� VALUES(33008,1,99006,36);
INSERT INTO �������� VALUES(33008,2,99007,6);
INSERT INTO �������� VALUES(33009,1,99006,12);
INSERT INTO �������� VALUES(33009,2,99008,24);
INSERT INTO �������� VALUES(33009,3,99007,60);
INSERT INTO �������� VALUES(33010,1,99001,24);
INSERT INTO �������� VALUES(33010,2,99003,24);





INSERT INTO �]�ƈ� VALUES(101,'����','���Ƃ�',NULL);
INSERT INTO �]�ƈ� VALUES(102,'���','������',101);
INSERT INTO �]�ƈ� VALUES(103,'����','�����͂�',101);
INSERT INTO �]�ƈ� VALUES(104,'�c��','���Ȃ�',102);
INSERT INTO �]�ƈ� VALUES(105,'�n��','�킽�Ȃ�',102);
INSERT INTO �]�ƈ� VALUES(106,'�ɓ�','���Ƃ�',103);




INSERT INTO ���i���� VALUES('A',1,1000);
INSERT INTO ���i���� VALUES('B',1001,2000);
INSERT INTO ���i���� VALUES('C',2001,5000);
INSERT INTO ���i���� VALUES('D',5001,50000);



commit;
