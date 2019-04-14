演習33
1.SELECT did,deptname,location_id,city FROM locations LEFT OUTER JOIN department USING(location_id);

2.SELECT location_id,city,country_id,country_name FROM locations JOIN countries USING(country_id);

3.SELECT location_id,city,country_id,country_name FROM locations LEFT OUTER JOIN countries USING(country_id);

4.SELECT location_id,city,country_id,country_name FROM locations RIGHT OUTER JOIN countries USING(country_id);

5.SELECT location_id,city,country_id,country_name FROM locations FULL OUTER JOIN countries USING(country_id);

演習34
1.SELECT 部下.empno,部下.ename,部下.deptno,上司.empno,上司.ename,上司.deptno 
FROM emp 部下 
JOIN emp 上司 ON 部下.mgr = 上司.empno;

2.SELECT 部下.personid,部下.first_name,部下.job_id,上司.personid,上司.first_name,上司.job_id 
FROM person 部下 
JOIN person 上司 ON 部下.manager_id = 上司.personid;

3.SELECT nt.task_id,nt.task_mgr_id,kt.task_id AS kiso_task,kt.task_mgr_id AS kiso_mgr_id 
FROM task nt 
JOIN task kt ON nt.base_on = kt.task_id;

4.SELECT nt.task_id,nt.task_mgr_id,kt.task_id AS kiso_task,kt.task_mgr_id AS kiso_mgr_id 
FROM task nt 
LEFT OUTER JOIN task kt ON nt.base_on = kt.task_id;

5.SELECT nt.task_id,nt.task_mgr_id,p.first_name,kt.task_id AS kiso_task,kt.task_mgr_id AS kiso_mgr_id 
FROM task nt 
LEFT OUTER JOIN task kt ON nt.base_on = kt.task_id 
LEFT OUTER JOIN person p ON p.personid = nt.task_mgr_id
ORDER BY kt.task_id DESC;

6.SELECT nt.task_id,nt.task_mgr_id,p.first_name,kt.task_id AS kiso_task,kt.task_mgr_id AS kiso_mgr_id,p2.first_name AS kiso_first_name 
FROM task nt 
LEFT OUTER JOIN task kt ON nt.base_on = kt.task_id 
LEFT OUTER JOIN person p ON p.personid = nt.task_mgr_id
LEFT OUTER JOIN person p2 ON p2.personid = kt.task_mgr_id
KAI:
SELECT t.task_id,t.task_mgr_id,p.first_name,b.task_id,b.task_mgr_id,pb.first_name
FROM task t LEFT OUTER JOIN task b
ON t.base_on = b.task_id
JOIN person p
ON t.task_mgr_id = p.personid
LEFT OUTER JOIN person pb
ON b.task_mgr_id = ...

SELECT nt.task_id,nt.task_mgr_id,p.first_name,kt.task_id AS kiso_task,kt.task_mgr_id AS kiso_mgr_id 
FROM task nt 
LEFT OUTER JOIN task kt ON nt.base_on = kt.task_id 
LEFT OUTER JOIN person p ON p.personid = nt.task_mgr_id

ORDER BY kt.task_id DESC;

7.SELECT worker.ename 部下, manager.ename 上司 
FROM emp worker 
JOIN emp manager ON worker.mgr = manager.empno;
Bが正解