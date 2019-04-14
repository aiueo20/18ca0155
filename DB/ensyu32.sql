演習32
1.SELECT personid,first_name,last_name,department_id,deptname 
FROM person p JOIN department d ON department_id = did WHERE personid >= 200;

2.SELECT pid,personname,did,deptname,salary 
FROM personVW JOIN department USING(did)
WHERE salary >= 10000 ORDER BY salary desc,did asc;