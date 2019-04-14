1.SELECT 商品名,単価,最低単価,最高単価,等級 FROM 商品 JOIN 商品等級 ON
単価 BETWEEN 最低単価 AND 最高単価;

2.SELECT personname,salary,losal,hisal,grade FROM personVW JOIN salgrade 
ON salary >= losal AND salary <= hisal;

3.SELECT personname,salary,losal,hisal,grade FROM personVW JOIN salgrade ON
salary BETWEEN losal AND hisal;
#SELECT personname,salary,losal,hisal,grade FROM personVW JOIN salgrade ON salary BETWEEN losal AND hisal;
losalとhisalの順番を逆にするとレコードが選択されないエラーが起きる

5.SELECT personid,first_name,j.job_id FROM person JOIN jobhistory j USING(personid);

6.SELECT p.personid, first_name, j.job_id 
FROM person p jOIN jobhistory j 
ON p.personid = j.personid 
AND p.job_id <> j.job_id;
メモ：FROMで表に別名つけたら、SELECTでもその名前を使わないといけない