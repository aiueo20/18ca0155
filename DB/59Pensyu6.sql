1.SELECT ename,sal FROM emp WHERE sal BETWEEN 3000 AND 3999;

2.SELECT ename,sal FROM emp WHERE sal >= 3000 AND sal < 4000;

3.SELECT ename,sal FROM emp WHERE sal NOT BETWEEN 3000 AND 3999;

4.SELECT ename,sal FROM emp WHERE NOT(sal >= 3000 AND sal < 4000);

5.SELECT ename,sal FROM emp WHERE sal <= 2999 OR sal >= 4000;

6.SELECT ename,job FROM emp WHERE job IN('SALESMAN','CLERK');

7.SELECT ename,job FROM emp WHERE sal = 'SALESMAN' OR sal = 'CLERK';

8.SELECT ename,deptno FROM emp WHERE deptno NOT IN(10, 20);

9.SELECT ename,deptno FROM emp WHERE NOT(deptno = 10 OR deptno = 20);

10.SELECT ename,deptno FROM emp WHERE NOT(deptno = 10) AND NOT(deptno = 20);

11.SELECT ename FROM emp WHERE ename LIKE 'S%';

12.SELECT ename FROM emp WHERE ename LIKE '%E%';

13.SELECT ename FROM emp WHERE ename LIKE '%S';

14.SELECT salary FROM person WHERE salary LIKE '2%';

15.SELECT salary FROM person WHERE salary BETWEEN 2000 AND 2999;

16.SELECT hiredate FROM emp WHERE hiredate LIKE '%81%';

17.SELECT table_name FROM user_tables;

18.SELECT table_name FROM user_tables WHERE table_name LIKE '%#_%' ESCAPE '#';