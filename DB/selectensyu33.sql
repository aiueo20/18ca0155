演習33
1.SELECT did,deptname,location_id,city FROM locations LEFT OUTER JOIN department USING(location_id);

2.SELECT location_id,city,country_id,country_name FROM locations JOIN countries USING(country_id);

3.SELECT location_id,city,country_id,country_name FROM locations LEFT OUTER JOIN countries USING(country_id);

4.SELECT location_id,city,country_id,country_name FROM locations RIGHT OUTER JOIN countries USING(country_id);

5.SELECT location_id,city,country_id,country_name FROM locations FULL OUTER JOIN countries USING(country_id);