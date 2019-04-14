演習23
1.SELECT 商品名,CASE 単価
				WHEN 500  THEN '安い'
				WHEN 1000 THEN '普通'
				WHEN 5000 THEN '高い'
				ELSE '-'
				END 評価
FROM 商品;

2.SELECT first_name,salary, CASE
							WHEN salary < 3000 THEN '低給'
							WHEN salary < 7000 THEN 'やや安'
							WHEN salary < 12000 THEN 'やや高'
							ELSE '高級'
							END 給与ランク
FROM person;

3.SELECT first_name,job_id, CASE
							WHEN job_id LIKE 'AC%' THEN 'Accountant'
							WHEN job_id LIKE 'AD%' THEN 'Administration'
							WHEN job_id LIKE 'FI%' THEN 'Finance'
							ELSE 'else'
							END job
FROM person;