-- ���K�p���[�U���쐬���܂�(���[�U���Fca�@�p�X���[�h�Fpro)

CREATE USER ca
IDENTIFIED BY pro
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE temp
QUOTA UNLIMITED ON users;


-- �e�[�u���쐬���̌�����^���܂�

GRANT CREATE SESSION,
      CREATE TABLE,
      CREATE VIEW,
      CREATE SEQUENCE,
      CREATE SYNONYM,
      CREATE PUBLIC SYNONYM,
      DROP PUBLIC SYNONYM,
      RESOURCE
TO ca;

