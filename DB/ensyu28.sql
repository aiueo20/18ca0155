2.SELECT first_name, last_name, job_id ,job_title
FROM person JOIN jobs USING(job_id);
#SELECT first_name, last_name, job_id ,job_title FROM person JOIN jobs USING(job_id);

3.SELECT first_name, last_name, person.job_id, person.job_id FROM person JOIN jobs ON person.job_id = jobs.job_id;
#SELECT first_name, last_name, job_id ,job_title FROM person p JOIN jobs j ON p.job_id  j.job_id;

4.SELECT ename, deptno, deptname FROM emp JOIN department ON deptno = did;

5.SELECT deptname, location_id, state_province, city FROM department JOIN locations USING(location_id);

6.SELECT deptname, department, location_id, state_province, city FROM department JOIN locations ON department.location_id = locations.location_id;
