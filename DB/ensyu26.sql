演習26
1.SELECT sales_id,unit_price * quantity AS total FROM sales_items GROUP BY sales_id,unit_price,quantity ORDER BY total desc;
SELECT sales_id,SUM(unit_price * quantity) AS total FROM sales_items GROUP BY sales_id ORDER BY total desc;
#l3が答え

2.SELECT sales_id,SUM(unit_price * quantity) AS total FROM sales_items GROUP BY sales_id ORDER BY total desc
FETCH FIRST 10 ROWS ONLY;


3.SELECT sales_id,SUM(unit_price * quantity) AS total,LISTAGG(prod_id, ' , ') WITHIN GROUP (ORDER BY prod_id) AS prod_id
FROM sales_items GROUP BY sales_id ORDER BY total DESC FETCH FIRST 10 ROWS ONLY;