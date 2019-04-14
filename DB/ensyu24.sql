1.SELECT SUM(salary) AS 給与合計, AVG(salary) AS 給与平均, COUNT(salary) AS 給与桁数 FROM person;

2.SELECT MAX(first_name) AS F最大, MIN(first_name) AS F最小, MAX(last_name) AS L最大, MIN(last_name) AS L最小 FROM person;

3.SELECT MAX(hire_date) AS 入社最大, MIN(hire_date) AS 入社最小 FROM person;

4.SELECT COUNT(*) AS 全桁数, COUNT(commission_pct) AS COMM行数, COUNT(job_id) AS JOB行数, COUNT(DISTINCT job_id) AS 種類行数 FROM person;w