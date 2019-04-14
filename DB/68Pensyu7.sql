1.SELECT ename,mgr FROM emp ORDER BY mgr;

2.SELECT ename,sal,job FROM emp ORDER BY sal DESC;

3.SELECT ename,sal,job FROM emp WHERE  job IN('SALESMAN','MANAGER','PRESIDENT') ORDER BY sal DESC;

4.SELECT deptno,mgr,ename FROM emp WHERE sal >= 2000 ORDER BY deptno DESC,mgr ASC;