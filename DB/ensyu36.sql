1.SELECT ename,job,deptno 
FROM emp 
WHERE job 
answer:
SELECT ename,job,deptno 
FROM emp 
WHERE job IN (SELECT job FROM emp WHERE deptno = 10) 
AND deptno <> 10;

2.SELECT deptno,ename,hiredate FROM emp 
WHERE hiredate <= ANY (SELECT hiredate FROM emp );
answer:
SELECT deptno,ename,hiredate FROM emp 
WHERE hiredate IN (SELECT MIN(hiredate) FROM emp GROUP BY deptno)
ORDER BY deptno;

3.SELECT ename,sal,job 
FROM emp
WHERE sal < ANY (SELECT sal FROM emp GROUP BY job);
answer:
SELECT ename,sal,job 
FROM emp
WHERE sal < ANY (SELECT sal FROM emp WHERE job = 'SALESMAN');

4.
answer:SELECT ename,sal,job 
FROM emp
WHERE sal < ALL (SELECT sal FROM emp WHERE job = 'SALESMAN');

5.SELECT mgr FROM emp WHERE deptno = 10;

6.
answer:
SELECT ename,deptno, mgr FROM emp 
WHERE mgr IN (SELECT mgr FROM emp WHERE deptno = 10)
ORDER BY deptno;

7.
answer:
SELECT ename,deptno, mgr FROM emp 
WHERE mgr NOT IN (SELECT mgr FROM emp WHERE deptno = 10 AND mgr IS NOT NULL)
ORDER BY deptno;

8.
answer:
SELECT ename,deptno, mgr FROM emp 
WHERE mgr NOT IN (SELECT mgr FROM emp WHERE deptno = 10 AND mgr IS NOT NULL)
ORDER BY deptno;