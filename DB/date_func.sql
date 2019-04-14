演習16
1.SELECT sysdate - TO_DATE('97-12-01') FROM dual;

2.SELECT TRUNC(TO_NUMBER(sysdate - TO_DATE('97-12-01')) / 365) AS 経過年数 FROM dual;

3.SELECT ename,hiredate,sysdate - TO_DATE(hiredate) AS 入社日からの経過日数,ROUND(TO_NUMBER(sysdate - TO_DATE(hiredate)) / 365) FROM emp;

演習17
1.SELECT empno,ename,hiredate,sysdate,MONTHS_BETWEEN(sysdate,hiredate) FROM emp;

2.SELECT empno,ename,hiredate,sysdate,ADD_MONTHS(hiredate,8) AS "8か月後" FROM emp;

3.SELECT empno,ename,hiredate,sysdate,ADD_MONTHS(hiredate,-8) AS "8か月前" FROM emp;

6.SELECT ename,hiredate,ROUND(TO_CHAR(hiredate,'YYYY-MM-DD HH24:MI:SS'),'DD') AS 日で四捨五入,ROUND(TO_DATE(hiredate,'MM')) AS 月で四捨五入,ROUND(TO_DATE(hiredate,'YY')) AS 年で四捨五入 FROM emp;
#SELECT ename,TO_CHAR(hiredate,'YYYY-MM-DD HH24:MI:SS') AS hiredate,
TO_CHAR((hiredate,'DD'),'YYYY-MM-DD H24:MI:SS') AS 日で四捨五入,ROUND(hiredate,'MM') AS 月で四捨五入,ROUND(hiredate, 'YY') AS 年で四捨五入,TRUNC(MONTHS_BETWEEN(sysdate,hiredate) / 12) 勤続年数 FROM emp;

演習18
1.SELECT ename,TO_CHAR(hiredate, 'YYYY-MM-DD DAY')FROM emp;

2.SELECT TO_CHAR(sysdate, 'YYYY-MM-DD DY') AS 今日の曜日 FROM dual;

3.SELECT TO_CHAR(sysdate,'Year-Mon-DD') AS 書式 FROM dual;

4.SELECT TO_CHAR(sysdate,'HH24:MI:SS') AS 時間 FROM dual;

5.SELECT TO_CHAR(sysdate,'A.M. HH12:MI:SS') FROM dual;
SELECT TO_CHAR(sysdate,'PM HH:MI:SS') FROM dual;

6.SELECT ename, TO_CHAR(hiredate, 'YY"年"MM"月"DD"日"DAY HH24:MI:SS') AS 入社日 FROM emp;

演習21
1.SELECT TO_DATE('2004/11/2','YYYY/MM/DD') FROM dual;
SELECT TO_DATE('2004年11月2日','YYY"年"MM"月"DD"日"') FROM dual;

2.SELECT TO_CHAR(TO_DATE('99-11-2','YY-MM-DD'),'YYYY-MM-DD') FROM dual;
SELECT TO_CHAR(TO_DATE('99-11-2','RR-MM-DD'),'YYYY-MM-DD') FROM dual;
SELECT TO_CHAR(TO_DATE('49-11-2','RR-MM-DD'),'YYYY-MM-DD') FROM dual;