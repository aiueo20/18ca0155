#5/16SQL基礎41P演習③選択
1.SELECT location_id, city, state_province FROM locations;

2.SELECT city, state_province FROM locations WHERE location_id = 1200;

3.SELECT country_name, region_id FROM countries WHERE country_id = 'JP';

4.SELECT ename, hiredate FROM emp WHERE hiredate >= '82-01-01';

5.SELECT ename, sal FROM emp WHERE sal >= 3000;

6.SELECT empno, ename FROM emp WHERE ename < 'SCOTT';

7.SELECT empno, ename FROM emp WHERE ename > 'SCOTT';

8.SELECT empno, ename FROM emp WHERE ename > 'S';

9.SELECT ename,sal,sal*12 AS totalsal FROM emp;

10.SELECT first_name,salary,commission_pct,salary * commission_pct as rate,salary / commission_pct as bonus  FROM person;

11.NULLになった

12.SELECT first_name, salary, commission_pct FROM person WHERE commission_pct IS NOT NULL;

13.SELECT ename, sal, comm, job FROM emp WHERE comm IS NULL;

14.SELECT ename, sal, comm, job FROM emp WHERE comm = NULL;
レコードは選択されませんでしたと表示される

15.SELECT ename, sal, comm, job FROM emp WHERE comm <> NULL;
レコードは選択されませんでしたと表示される