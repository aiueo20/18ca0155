演習14
1.SELECT ename, TO_CHAR(sal,'L999999') AS "通貨記号付き SAL", TO_CHAR(sal,'$999999') AS "本当は$" FROM emp;
#答え：SELECT ename, TO_CHAR(sal,'L999G999G999') AS "通貨記号付き SAL", TO_CHAR(sal,'$999999') AS "本当は$" FROM emp;
#SELECT ename, TO_CHAR(sal,'$999,999,999') AS "通貨記号付き SAL", TO_CHAR(sal,'$999999') AS "本当は$" FROM emp;

2.SELECT ename, TO_CHAR(sal,'$00G9999') AS 先頭0 FROM emp;
#SELECT ename, TO_CHAR(sal,'$09G999') AS 先頭0 FROM emp;

3.SELECT ename, TO_CHAR(sal,'$9G999D0') AS 少数第1位まで FROM emp;
#SELECT ename, TO_CHAR(sal,'$9G999D0') AS 少数第1位まで FROM emp;
#(↑最後が0でも9でも少数第一位までちゃんと出る)

4.SELECT ename, sal, TO_CHAR(sal,'999') "999", TO_CHAR(sal,'000') "000" FROM emp;

5.SELECT TO_CHAR(0.012,'99') AS あふれ,TO_CHAR(0.012,'00') AS あふれ,TO_CHAR(0.012, '9.9999') AS たらず,TO_CHAR(0.012, '0.0000') AS たらず FROM emp;
																				#↑9.9999だと、整数部に0が表示されない