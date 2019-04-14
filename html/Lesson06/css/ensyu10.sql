1.

2.

3.

4.SELECT ename,REPLACE(ename,'A','U') AS AをUに置換,REPLACE(ename,'AR','UR') AS ARをURに置換 FROM emp;

5.SELECT ename, TRIM('S' FROM ename) AS AをTRIM FROM emp;

6.SELECT ename, REPLACE(ename,'A') AS 途中のAも除く FROM emp;

7.

8.