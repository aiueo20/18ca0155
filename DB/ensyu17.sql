演習17
1.SELECT empno,ename,hiredate,sysdate,MONTHS_BETWEEN(sysdate,hiredate) FROM emp;

2.SELECT empno,ename,hiredate,sysdate,ADD_MONTHS(hiredate,8) AS "8か月後" FROM emp;

3.SELECT empno,ename,hiredate,sysdate,ADD_MONTHS(hiredate,-8) AS "8か月前" FROM emp;

6.SELECT ename,hiredate,ROUND(TO_CHAR(hiredate,'YYYY-MM-DD HH24:MI:SS'),'DD') AS 日で四捨五入,ROUND(TO_DATE(hiredate,'MM')) AS 月で四捨五入,ROUND(TO_DATE(hiredate,'YY')) AS 年で四捨五入 FROM emp;
#SELECT ename,TO_CHAR(hiredate,'YYYY-MM-DD HH24:MI:SS') AS hiredate,
TO_CHAR((hiredate,'DD'),'YYYY-MM-DD H24:MI:SS') AS 日で四捨五入,ROUND(hiredate,'MM') AS 月で四捨五入,ROUND(hiredate, 'YY') AS 年で四捨五入,TRUNC(MONTHS_BETWEEN(sysdate,hiredate) / 12) 勤続年数 FROM emp;