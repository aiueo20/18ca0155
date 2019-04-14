/** テーブルがひとつでも存在している場合、削除する **/

DECLARE
  v_cnt NUMBER;
BEGIN
  SELECT count(table_name)  INTO v_cnt
  FROM user_tables
  WHERE table_name IN ('LOCATIONS','COUNTRIES','REGIONS');

  IF v_cnt > 0 THEN
    EXECUTE IMMEDIATE 'DROP TABLE locations purge';
    EXECUTE IMMEDIATE 'DROP TABLE countries purge';
    EXECUTE IMMEDIATE 'DROP TABLE regions purge';
  END IF;
END;
/


CREATE TABLE locations (
LOCATION_ID         NUMBER(4)  Constraint pk_locs primary key,
STREET_ADDRESS      VARCHAR2(40),
POSTAL_CODE         VARCHAR2(12),
CITY                VARCHAR2(30)   NOT NULL,
STATE_PROVINCE      VARCHAR2(25) ,
COUNTRY_ID          CHAR(2) );

CREATE TABLE countries(
COUNTRY_ID          CHAR(2)  Constraint pk_countrys primary key,
COUNTRY_NAME        VARCHAR2(40),
REGION_ID           NUMBER );

CREATE TABLE regions(
REGION_ID          NUMBER  Constraint pk_regions primary key,
REGION_NAME        VARCHAR2(25));



INSERT INTO locations VALUES(1000,'1297 Via Cola di Rie','00989','Roma','','IT');
INSERT INTO locations VALUES(1100,'93091 Calle della Testa','10934','Venice','','IT');
INSERT INTO locations VALUES(1200,'2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP');
INSERT INTO locations VALUES(1300,'9450 Kamiya-cho','6823','Hiroshima','','JP');
INSERT INTO locations VALUES(1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
INSERT INTO locations VALUES(1500,'2011 Interiors Blvd','99236','South San Francisco','California','US');
INSERT INTO locations VALUES(1600,'2007 Zagora St','50090','South Brunswick','New Jersey','US');
INSERT INTO locations VALUES(1700,'2004 Charade Rd','98199','Seattle','Washington','US');
INSERT INTO locations VALUES(1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA');
INSERT INTO locations VALUES(1900,'6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA');
INSERT INTO locations VALUES(2000,'40-5-12 Laogianggen','190518','Beijing','','CN');
INSERT INTO locations VALUES(2100,'1298 Vileparle (E)','490231','Bombay','Maharashtra','IN');
INSERT INTO locations VALUES(2200,'12-98 Victoria Street','2901','Sydney','New South Wales','AU');
INSERT INTO locations VALUES(2300,'198 Clementi North','540198','Singapore','','SG');
INSERT INTO locations VALUES(2400,'8204 Arthur St','','London','','UK');
INSERT INTO locations VALUES(2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK');
INSERT INTO locations VALUES(2600,'9702 Chester Road','09629850293','Stretford','Manchester','UK');
INSERT INTO locations VALUES(2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');
INSERT INTO locations VALUES(2800,'Rua Frei Caneca 1360','01307-002','Sao Paulo','Sao Paulo','BR');


INSERT INTO countries VALUES('AR','Argentina',2);
INSERT INTO countries VALUES('AU','Australia',3);
INSERT INTO countries VALUES('BE','Belgium',1);
INSERT INTO countries VALUES('BR','Brazil',2);
INSERT INTO countries VALUES('CA','Canada',2);
INSERT INTO countries VALUES('CH','Switzerland',1);
INSERT INTO countries VALUES('CN','China',3);
INSERT INTO countries VALUES('DE','Germany',1);
INSERT INTO countries VALUES('DK','Denmark',1);
INSERT INTO countries VALUES('EG','Egypt',4);
INSERT INTO countries VALUES('FR','France',1);
INSERT INTO countries VALUES('HK','HongKong',3);
INSERT INTO countries VALUES('IL','Israel',4);
INSERT INTO countries VALUES('IN','India',3);
INSERT INTO countries VALUES('IT','Italy',1);
INSERT INTO countries VALUES('JP','Japan',3);
INSERT INTO countries VALUES('KW','Kuwait',4);
INSERT INTO countries VALUES('MX','Mexico',2);
INSERT INTO countries VALUES('NG','Nigeria',4);



INSERT INTO regions VALUES(1,'Europe');
INSERT INTO regions VALUES(2,'Americas');
INSERT INTO regions VALUES(3,'Asia');
INSERT INTO regions VALUES(4,'Middle East and Africa');

commit;

