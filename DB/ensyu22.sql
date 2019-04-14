演習22
1.SELECT ename, comm, NVL(comm / 2,300) AS 報奨金 FROM emp;

2.SELECT ename, comm, NVL2(comm, 2000, 1000) AS 報奨金 FROM emp;

3.SELECT ename, sal, comm, COALESCE(SAL + COMM,SAL + 500, COMM + 3000, 4000) AS COALESCE FROM emp;
#SELECT ename, sal, comm, COALESCE(sal + COMM, sal + 500, COMM + 3000, 4000) AS COALESCE FROM emp;

4.SELECT personid, first_name, salary, commission_pct,NVL(salary + salary * commission_pct,0) AS 歩合込み給与 FROM person;
#SELECT personid, first_name, salary, commission_pct,salary + salary * NVL(commission_pct, 0) AS 歩合込み給与 FROM person;

5.SELECT personid, first_name, salary, commission_pct,salary + salary * COALESCE(commission_pct,0) AS 歩合込み給与 FROM person;