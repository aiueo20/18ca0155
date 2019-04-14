1.SELECT personname,salary FROM personVW WHERE salary BETWEEN 10000 AND 19999;

2.SELECT personname,salary FROM personVW WHERE salary >= 10000 AND salary <= 19999;

3.SELECT personname,salary FROM personVW WHERE salary NOT BETWEEN salary 3000 AND 3999;

4.SELECT personname,salary FROM personVW WHERE NOT(salary >= 3000 AND salary < 3999);

5.SELECT personname,mid,did FROM personVW WHERE mid IN(100,120,121);

6.SELECT personname,mid,did FROM personVW WHERE mid = 100 OR mid = 120 OR mid = 121;

7.SELECT personname,mid,did FROM personVW WHERE mid NOT IN(100, 108, 114);

8.SELECT personname,mid,did FROM personVW WHERE NOT(mid = 100 OR mid = 108 OR mid = 114);

9.SELECT personname,salary,did FROM personVW WHERE (salary BETWEEN 10000 AND 19999) AND (did IN(60,80));

10.SELECT personname,salary,did FROM personVW WHERE (salary >= 10000 AND salary <= 19999) AND (did = 60 OR did = 80);