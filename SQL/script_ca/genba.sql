/*
 * ����Ŏg����SQL�Q�e�[�u���쐬�X�N���v�g(Oracle ��)
 */

/** �e�[�u�����ЂƂł����݂��Ă���ꍇ�A�폜���� **/

DECLARE
  v_cnt NUMBER;
BEGIN
  SELECT count(table_name)  INTO v_cnt
  FROM user_tables
  WHERE table_name IN ('�x�X�S���҃}�X�^','����f�[�^','���i�}�X�^','�S���҃}�X�^','�ڋq�}�X�^');

  IF v_cnt > 0 THEN
    EXECUTE IMMEDIATE 'DROP TABLE �x�X�S���҃}�X�^ purge';
    EXECUTE IMMEDIATE 'DROP TABLE ����f�[�^ purge';
    EXECUTE IMMEDIATE 'DROP TABLE ���i�}�X�^ purge';
    EXECUTE IMMEDIATE 'DROP TABLE �S���҃}�X�^ purge';
    EXECUTE IMMEDIATE 'DROP TABLE �ڋq�}�X�^ purge';
  END IF;
END;
/


-- �e�[�u���쐬�F���i�}�X�^
CREATE TABLE ���i�}�X�^ (
    ���iID     NUMBER NOT NULL,
    ���i��     VARCHAR2(30) NOT NULL,
    �O���[�v�� VARCHAR2(20) NOT NULL,
    �d���P��   NUMBER,
    ���P��     NUMBER,
    CONSTRAINT pk_shohin PRIMARY KEY (���iID)
);

-- �e�[�u���쐬�F�S���҃}�X�^
CREATE TABLE �S���҃}�X�^ (
    �S����ID   NUMBER NOT NULL,
    �S���Җ�   VARCHAR2(20) NOT NULL,
    �ӂ肪��   VARCHAR2(20) NOT NULL,
    MGR_ID     NUMBER,
    ���N����   DATE NOT NULL,
    ����       NUMBER NOT NULL,
    CONSTRAINT pk_tanto PRIMARY KEY (�S����ID),
    CONSTRAINT fk_mgr FOREIGN KEY (MGR_ID) REFERENCES �S���҃}�X�^(�S����ID),
    CONSTRAINT ck_gender CHECK (����=0 OR ����=1)
);

-- �e�[�u���쐬�F�ڋq�}�X�^
CREATE TABLE �ڋq�}�X�^ (
    �ڋqID     NUMBER NOT NULL,
    �ڋq��     VARCHAR2(20) NOT NULL,
    �A����     VARCHAR2(20) NOT NULL,
    CONSTRAINT pk_kokyaku PRIMARY KEY (�ڋqID)
);

-- �e�[�u���쐬�F����f�[�^
CREATE TABLE ����f�[�^ (
    �`�[�ԍ�   NUMBER NOT NULL,
    �s�ԍ�     NUMBER NOT NULL,
    ������     DATE NOT NULL,
    ���iID     NUMBER NOT NULL,
    �S����ID   NUMBER NOT NULL,
    �ڋqID     NUMBER NOT NULL,
    ����       NUMBER NOT NULL,
    CONSTRAINT pk_uriage PRIMARY KEY (�`�[�ԍ�, �s�ԍ�),
    CONSTRAINT fk_shohin FOREIGN KEY (���iID) REFERENCES ���i�}�X�^(���iID),
    CONSTRAINT fk_tanto FOREIGN KEY (�S����ID) REFERENCES �S���҃}�X�^(�S����ID),
    CONSTRAINT fk_kokyaku FOREIGN KEY (�ڋqID) REFERENCES �ڋq�}�X�^(�ڋqID)
);

-- �e�[�u���쐬�F�x�X�S���҃}�X�^
CREATE TABLE �x�X�S���҃}�X�^ (
    �x�X�S����ID   NUMBER NOT NULL,
    �x�X�S���Җ�   VARCHAR2(20) NOT NULL,
    �ӂ肪��   VARCHAR2(20) NOT NULL,
    MGR_ID     NUMBER,
    ���N����   DATE NOT NULL,
    ����       NUMBER NOT NULL,
    CONSTRAINT pk_siten_tanto PRIMARY KEY (�x�X�S����ID),
    CONSTRAINT fk_siten_mgr FOREIGN KEY (MGR_ID) REFERENCES �x�X�S���҃}�X�^(�x�X�S����ID),
    CONSTRAINT ck_siten_gender CHECK (����=0 OR ����=1)
);

/*
 * �T���v���f�[�^
 */

-- �f�[�^�}���F���i�}�X�^
INSERT INTO ���i�}�X�^ (���iID, ���i��, �O���[�v��, �d���P��, ���P��) VALUES (1, '�f�X�N�g�b�v�^�p�\�R��', '�p�\�R���{��', 150000, 180000);
INSERT INTO ���i�}�X�^ (���iID, ���i��, �O���[�v��, �d���P��, ���P��) VALUES (2, '�m�[�g�^�p�\�R��', '�p�\�R���{��', 230000, 270000);
INSERT INTO ���i�}�X�^ (���iID, ���i��, �O���[�v��, �d���P��, ���P��) VALUES (3, '17�^_�f�B�X�v���C', '���Ӌ@��', 40000, 50000);
INSERT INTO ���i�}�X�^ (���iID, ���i��, �O���[�v��, �d���P��, ���P��) VALUES (4, '19�^_�f�B�X�v���C', '���Ӌ@��', 80000, 95000);
INSERT INTO ���i�}�X�^ (���iID, ���i��, �O���[�v��, �d���P��, ���P��) VALUES (5, '15�^_�t���f�B�X�v���C', '���Ӌ@��', 100000, 120000);
INSERT INTO ���i�}�X�^ (���iID, ���i��, �O���[�v��, �d���P��, ���P��) VALUES (6, '�f�W�^���J����', '���Ӌ@��', NULL, NULL);
INSERT INTO ���i�}�X�^ (���iID, ���i��, �O���[�v��, �d���P��, ���P��) VALUES (7, '�v�����^', '���Ӌ@��', 20000, 25000);
INSERT INTO ���i�}�X�^ (���iID, ���i��, �O���[�v��, �d���P��, ���P��) VALUES (8, '�X�L���i', '���Ӌ@��', 25000, 30000);
INSERT INTO ���i�}�X�^ (���iID, ���i��, �O���[�v��, �d���P��, ���P��) VALUES (9, 'HUB', '�l�b�g���[�N�@��', 5000, 7000);
INSERT INTO ���i�}�X�^ (���iID, ���i��, �O���[�v��, �d���P��, ���P��) VALUES (10, '�^�[�~�i���A�_�v�^', '�l�b�g���[�N�@��', 15000, 20000);

-- �f�[�^�}���F�S���҃}�X�^
INSERT INTO �S���҃}�X�^ (�S����ID, �S���Җ�, �ӂ肪��, ���N����, ����) VALUES (1, '���', '������', '1960-01-23', 1);
INSERT INTO �S���҃}�X�^ (�S����ID, �S���Җ�, �ӂ肪��, ���N����, ����) VALUES (2, '����', '����', '1960-08-02', 1);
INSERT INTO �S���҃}�X�^ (�S����ID, �S���Җ�, �ӂ肪��, ���N����, ����) VALUES (3, '�֓�', '�����Ƃ�', '1963-10-15', 1);
INSERT INTO �S���҃}�X�^ (�S����ID, �S���Җ�, �ӂ肪��, ���N����, ����, MGR_ID) VALUES (4, '���{', '�ӂ�����', '1972-07-18', 1, 3);
INSERT INTO �S���҃}�X�^ (�S����ID, �S���Җ�, �ӂ肪��, ���N����, ����, MGR_ID) VALUES (5, '����', '���΂₵', '1971-02-11', 0, 3);
INSERT INTO �S���҃}�X�^ (�S����ID, �S���Җ�, �ӂ肪��, ���N����, ����, MGR_ID) VALUES (6, '�ɓ�', '���Ƃ�', '1972-04-01', 0, 2);
INSERT INTO �S���҃}�X�^ (�S����ID, �S���Җ�, �ӂ肪��, ���N����, ����, MGR_ID) VALUES (7, '����', '����', '1975-02-21', 1, 2);
INSERT INTO �S���҃}�X�^ (�S����ID, �S���Җ�, �ӂ肪��, ���N����, ����, MGR_ID) VALUES (8, '�F��_', '��������', '1975-12-22', 1, 1);
INSERT INTO �S���҃}�X�^ (�S����ID, �S���Җ�, �ӂ肪��, ���N����, ����, MGR_ID) VALUES (9, '���c', '������', '1972-03-18', 1, 4);

-- �f�[�^�}���F�ڋq�}�X�^
INSERT INTO �ڋq�}�X�^ (�ڋqID, �ڋq��, �A����) VALUES (1, '(��)���C�L�L�\�t�g', '090-AAAA-AAAA');
INSERT INTO �ڋq�}�X�^ (�ڋqID, �ڋq��, �A����) VALUES (2, '��؏���', '090-BBBB-BBBB');
INSERT INTO �ڋq�}�X�^ (�ڋqID, �ڋq��, �A����) VALUES (3, '�֓��͌^�X', '090-CCCC-CCCC');
INSERT INTO �ڋq�}�X�^ (�ڋqID, �ڋq��, �A����) VALUES (4, '�}�N���n�[�h', '090-DDDD-DDDD');
INSERT INTO �ڋq�}�X�^ (�ڋqID, �ڋq��, �A����) VALUES (5, '(��)�����k', '090-EEEE-EEEE');

-- �f�[�^�}���F����f�[�^
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (1, 1, '2000-04-06', 2, 1, 1, 3);
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (1, 2, '2000-04-06', 2, 1, 4, 3);
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (2, 1, '2000-04-12', 1, 2, 1, 1);
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (3, 1, '2000-04-18', 2, 2, 1, 1);
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (4, 1, '2000-04-26', 4, 3, 2, 1);
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (4, 2, '2000-04-26', 4, 3, 7, 1);
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (4, 3, '2000-04-26', 4, 3, 8, 1);
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (5, 1, '2000-05-08', 1, 6, 3, 3);
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (6, 1, '2000-05-12', 5, 2, 1, 1);
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (6, 2, '2000-05-12', 5, 2, 3, 2);
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (7, 1, '2000-05-19', 4, 5, 2, 1);
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (8, 1, '2000-05-22', 1, 6, 2, 1);
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (9, 1, '2000-05-25', 2, 8, 5, 5);
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (10, 1, '2000-06-02', 1, 2, 5, 1);
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (11, 1, '2000-06-06', 3, 3, 2, 2);
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (11, 2, '2000-06-06', 3, 3, 10, 1);
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (12, 1, '2000-06-12', 2, 6, 2, 1);
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (13, 1, '2000-06-15', 5, 7, 9, 5);
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (13, 2, '2000-06-15', 5, 7, 2, 2);
INSERT INTO ����f�[�^ (�`�[�ԍ�, �s�ԍ�, ������, �ڋqID, �S����ID, ���iID, ����) VALUES (13, 3, '2000-06-15', 5, 7, 10, 1);

-- �f�[�^�}���F�x�X�S���҃}�X�^
INSERT INTO �x�X�S���҃}�X�^ (�x�X�S����ID, �x�X�S���Җ�, �ӂ肪��, ���N����, ����) VALUES (4, '���{', '�ӂ�����', '1972-07-18', 1);
INSERT INTO �x�X�S���҃}�X�^ (�x�X�S����ID, �x�X�S���Җ�, �ӂ肪��, ���N����, ����, MGR_ID) VALUES (9, '���c', '������', '1972-03-18', 1, 4);
INSERT INTO �x�X�S���҃}�X�^ (�x�X�S����ID, �x�X�S���Җ�, �ӂ肪��, ���N����, ����, MGR_ID) VALUES (10, '�c��', '���Ȃ�', '1975-05-23', 1, 9);
INSERT INTO �x�X�S���҃}�X�^ (�x�X�S����ID, �x�X�S���Җ�, �ӂ肪��, ���N����, ����, MGR_ID) VALUES (11, '���', '���̂���', '1980-02-18', 1, 9);
INSERT INTO �x�X�S���҃}�X�^ (�x�X�S����ID, �x�X�S���Җ�, �ӂ肪��, ���N����, ����, MGR_ID) VALUES (12, '���X��', '������', '1968-10-10', 1, 9);


