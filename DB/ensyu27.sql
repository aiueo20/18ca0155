1.SELECT empno,ename,emp.deptno,dname,loc FROM emp JOIN dept ON emp.deptno = dept.deptno;

2.SELECT empno, ename, deptno, deptname, location_id 
FROM emp JOIN department ON deptno = did;

3.SELECT did, deptname, department.location_id, state_province, city 
FROM department JOIN locations ON department.location_id = locations.location_id ORDER BY did;