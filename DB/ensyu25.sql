1.SELECT deptno,AVG(sal) AS 給与平均,MAX(sal) AS 給与最大 FROM emp GROUP BY deptno;

2.SELECT job, COUNT(job) AS JOB人数 FROM emp GROUP BY job HAVING COUNT(job) >= 2;
#SELECT job, COUNT(*) AS JOB 人数 FROM emp GROUP BY job HAVING COUNT(*) >= 2;

3.SELECT SUBSTR(hire_date,1,2) AS 入社年, TO_CHAR(AVG(salary),'99999D00') AS 給与平均, MAX(salary) AS 給与最大 
FROM person GROUP BY SUBSTR(hire_date,1,2) ORDER BY SUBSTR(hire_date,1,2) ASC;
#SELECT substr(hire_date, 1, 2) AS 入社年, TO_CHAR(AVG(salary),'999G999D99') AS 給与平均, MAX(salary) AS 給与最大 
#FROM person GROUP BY SUBSTR(hire_date,1,2) ORDER BY 入社年;
#SUBSTRで年の最初の2文字を切り取っている

4.SELECT SUBSTR(hire_date,1,2) AS 入社年, TO_CHAR(AVG(salary),'99999D00') AS 給与平均, MAX(salary) AS 給与最大
 FROM person GROUP BY SUBSTR(hire_date,1,2) HAVING MAX(salary) >= 15000 ORDER BY SUBSTR(hire_date,1,2) ASC;
#SELECT substr(hire_date, 1, 2) AS 入社年, TO_CHAR(AVG(salary),'999G999D99') AS 給与平均, MAX(salary) AS 給与最大 
#FROM person GROUP BY SUBSTR(hire_date,1,2) HAVING MAX(salary) >= 15000 ORDER BY 入社年;

5.SELECT job_id, manager_id, COUNT(*) AS 従業員数, TO_CHAR(AVG(salary), '999G999D99') AS 給与平均 
FROM person WHERE job_id LIKE 'S%' GROUP BY job_id, manager_id ORDER BY job_id, manager_id;

6.SELECT department_id,job_id,COUNT(*) AS 従業員数, TO_CHAR(AVG(salary),'999G999D99') AS 給与平均 FROM person GROUP BY department_id,job_id
HAVING AVG(salary) >= 10000 ORDER BY 給与平均 DESC, department_id;

7.SELECT MIN(MAX(salary)) AS 最大の最小,MAX(MAX(salary)) AS 最大の最大 FROM person GROUP BY department_id;

8.SELECT MIN(SUM(salary)) AS 合計の最小,MAX(SUM(salary)) AS 合計の最大 FROM person GROUP BY job_id HAVING SUM(salary) < 100000;