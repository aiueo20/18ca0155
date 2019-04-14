1. SELECT ename, sal, deptno FROM emp WHERE sal >= 2000 AND sal < 3000 AND (deptno = 20 OR deptno = 30);

2. SELECT ename, job, sal FROM emp WHERE NOT (job = 'MANAGER') AND NOT (job = 'SALESMAN');

3. SELECT ename, job, sal FROM emp WHERE NOT (job = 'MANAGER' OR job = 'SALESMAN');

4. SELECT ename, job, hiredate FROM emp WHERE NOT (hiredate >= '1981-01-01' AND hiredate <= '1981-12-31') AND (job = 'MANAGER' OR job = 'ANALYST');
↑NOT (hiredate = '81-01-01' AND hiredate <= '81-12-31')でもおｋ