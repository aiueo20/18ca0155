1.SELECT first_name,last_name,job_id from person WHERE job_id LIKE 'A%';

2.SELECT first_name,last_name,job_id from person WHERE job_id LIKE '%CLERK';

3.SELECT first_name,last_name,job_id from person WHERE job_id LIKE 'AD___';

4.SELECT first_name,last_name,job_id from person WHERE job_id LIKE 'S% %N';

5.SELECT first_name,last_name,job_id from person WHERE job_id LIKE '%#_R' ESCAPE '#';

6.SELECT personname,salary from personVW WHERE salary LIKE '2%';

7.SELECT first_name,last_name,hire_date from person WHERE hire_date LIKE '08%';