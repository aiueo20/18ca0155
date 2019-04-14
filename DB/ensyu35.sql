	1.SELECT * FROM emp WHERE ename = 'ALLEN';
	SELECT * FROM emp WHERE job = 'SALESMAN';
answer:
SELECT ename,sal,job,deptno 
FROM emp 
WHERE job = (SELECT job FROM emp WHERE ename = 'ALLEN') 
AND ename <> 'ALLEN';

	2.SELECT ename,sal,hiredate 
	FROM emp 
	WHERE hiredate < (SELECT hiredate FROM emp WHERE ename = 'MILLER') 
	AND sal > (SELECT sal FROM emp WHERE ename = 'ALLEN');
	answer:
	SELECT ename,sal,hiredate 
	FROM emp 
	WHERE hiredate < (SELECT hiredate FROM emp WHERE ename = 'MILLER') 
	AND sal > (SELECT sal FROM emp WHERE ename = 'ALLEN');

	3.SELECT ename,sal 
	FROM emp 
	WHERE sal = (SELECT MAX(sal) FROM emp);
	answer:
	SELECT ename,sal 
	FROM emp 
	WHERE sal = (SELECT MAX(sal) FROM emp);

	4.SELECT ename,job,sal,hiredate 
	FROM emp 
	WHERE hiredate = (SELECT MIN(hiredate) FROM emp);
	answer:
	SELECT ename,job,sal,hiredate 
	FROM emp 
	WHERE hiredate = (SELECT MIN(hiredate) FROM emp);

	5.SELECT ename,job,sal 
	FROM emp 
	WHERE sal > (SELECT AVG(sal) FROM emp);
	answer:
	SELECT ename,job,sal 
	FROM emp 
	WHERE sal > (SELECT AVG(sal) FROM emp);