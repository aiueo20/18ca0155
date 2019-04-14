演習16
1.SELECT sysdate - TO_DATE('97-12-01') FROM dual;

2.SELECT TRUNC(TO_NUMBER(sysdate - TO_DATE('97-12-01')) / 365) AS 経過年数 FROM dual;

3.SELECT ename,hiredate,sysdate - TO_DATE(hiredate) AS 入社日からの経過日数,ROUND(TO_NUMBER(sysdate - TO_DATE(hiredate)) / 365) FROM emp;