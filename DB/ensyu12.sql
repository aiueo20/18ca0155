演習12
3.SELECT ROUND(254.567,2) AS "四捨五入(少数2位まで表示)" FROM dual;

4.SELECT ROUND(254.567,0) AS "四捨五入(整数部表示)" FROM dual;

5.SELECT ROUND(254.567,-2) AS "四捨五入(10の位で四捨五入)" FROM dual;

6.SELECT TRUNC(254.567,2) AS "切捨て(少数2位まで表示)",TRUNC(254.567,0) AS "切捨て(整数部表示)",TRUNC(254.567,-2) AS "切捨て(10の位で切捨て)"
FROM dual;

7.SELECT ename, sal, TRUNC(sal / 6) AS 基準額 FROM emp;

8.SELECT ename, sal, ROUND(sal / 6,-2) AS 基準額 FROM emp;

9.SELECT ename, sal, CEIL(sal / 1000)*1000 AS 切り上げ FROM emp;
SELECT ename, sal, ROUND(sal + 400, -3) AS 基準額 FROM emp;
SELECT ename, sal, TRUNC(sal + 900, -3) AS 基準額 FROM emp;