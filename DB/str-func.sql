演習9
1.SELECT LOWER(ename) AS 小文字 FROM emp;

2.SELECT LOWER(dname) AS DNAME,UPPER(dname) AS DNAME,INITCAP(LOC) AS LOC FROM dept;

3.SELECT INITCAP('AA AA_AA:AA') FROM dual;
SELECT INITCAP('taro@k-tera.ac.jp') FROM dual;

4.SELECT LOWER(first_name) AS FIRST_NAME, UPPER(last_name) AS LAST_NAME,INITCAP(JOB_ID) AS JOB_ID FROM person;

5.SELECT LOWER( UPPER( INITCAP(job_id))) FROM person;

演習10
4.SELECT ename,REPLACE(ename,'A','U') AS AをUに置換,REPLACE(ename,'AR','UR') AS ARをURに置換 FROM emp;

5.SELECT ename, TRIM('S' FROM ename) AS AをTRIM FROM emp;

6.SELECT ename, REPLACE(ename,'A') AS 途中のAも除く FROM emp;#REPLACEの第3引数を書かなければ置き換えずに取り除ける

演習11
1.SELECT 商品名,LENGTH(商品名) AS 商品名文字数,LENGTHB(商品名)　AS 商品名バイト数 FROM 商品;

3.SELECT ename, INSTR(ename, 'A', 1, 1)AS Aは何文字目 FROM emp WHERE ename LIKE '%A%';

4.SELECT 商品名 AS 商品名,SUBSTR(商品名, 1,INSTR(商品名,'ビ')-1) AS 部分文字列 FROM 商品 WHERE 商品名 LIKE '%ビール%';
#SUBSTRで1文字目から検索、INSTR(商品名,'ビール')、でビールの文字の「ビ」から始まるところまでの字数が表示されるから、INSTR(商品名,'ビ')-1とする

5.SELECT ename, INSTR(ename,'A') name FROM emp WHERE INSTR(ename,'A') >= 1;
SELECT ename, INSTR(ename,'A') name FROM emp WHERE ename LIKE '%A%';
SELECT ename, INSTR(ename,'A') name FROM emp WHERE SUBSTR(ename,1,1) = 'A';