SELECT * FROM emp JOIN dept
ON emp.deptno = dept.deptno;

SELECT * FROM emp JOIN dept deptUSING(deptno);