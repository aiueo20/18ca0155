演習13
1.SELECT SQRT(100) AS ルート100,SQRT(1000) AS ルート1000, SQRT(10000) AS ルート10000 FROM dual;

2.SELECT POWER(2,2) AS "2の2乗",POWER(2,4) AS "2の4乗", POWER(2,8) AS "2の8乗" FROM dual;

3.SELECT 商品名, 単価, MOD(単価,1000) AS "百円部分の端数" FROM 商品;