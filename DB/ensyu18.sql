演習18
1.SELECT ename,TO_CHAR(hiredate, 'YYYY-MM-DD DAY')FROM emp;

2.SELECT TO_CHAR(sysdate, 'YYYY-MM-DD DY') AS 今日の曜日 FROM dual;

3.SELECT TO_CHAR(sysdate,'Year-Mon-DD') AS 書式 FROM dual;

4.SELECT TO_CHAR(sysdate,'HH24:MI:SS') AS 時間 FROM dual;

5.SELECT TO_CHAR(sysdate,'A.M. HH12:MI:SS') FROM dual;
SELECT TO_CHAR(sysdate,'PM HH:MI:SS') FROM dual;

6.SELECT ename, TO_CHAR(hiredate, 'YY"年"MM"月"DD"日"DAY HH24:MI:SS') AS 入社日 FROM emp;