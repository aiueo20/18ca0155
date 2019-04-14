1.SELECT zno,pname,weight FROM zukann WHERE weight >= 300;

2.SELECT zno,pname,tname FROM zukann WHERE tname = 'ほのお';

3.DESC person;

4.SELECT personid,first_name FROM person WHERE hire_date < '03-12-31'; 

5.SELECT personid,first_name,hire_date FROM person WHERE hire_date > '81-06-30';

6.DESC 商品;

7.SELECT 商品名,単価,製造者 FROM 商品 WHERE 製造者 = 'キリンジ';

8.SELECT 商品名,単価*1.2 FROM 商品 WHERE 単価 < 1000;

9.SELECT 商品名,単価*1.2 AS 新単価 FROM 商品 WHERE 単価 < 1000;

10.SELECT ename,sal,comm,(sal + comm)*2 AS "夏 ボーナス" FROM emp; 

11.COMM列がNULLのため、NULLとの演算はNULLになるから