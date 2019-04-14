1.SELECT * FROM personVW WHERE salary < 10000;

2.SELECT * FROM personVW WHERE salary >= 10000;

3.SELECT PID, PersonName, SALARY FROM personVW WHERE salary > 1000 AND salary < 10000;

4.SELECT PersonID, First_Name, Last_Name, Job_ID FROM person WHERE Job_ID = 'FI_ACCOUNT' OR Job_ID = 'AC_ACCOUNT';

5.SELECT PersonID,First_Name,Last_Name,Job_ID,Salary FROM person WHERE (Job_ID = 'SA_REP' OR Job_ID = 'MK_REP') AND Salary < 7000;

6.SELECT * FROM person WHERE NOT salary <= 10000;

7.含まれない