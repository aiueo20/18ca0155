1.SELECT did,deptname,location_id,city,country_id 
FROM department JOIN locations USING(location_id);

2.SELECT did,deptname,d.location_id,city,c.country_id 
FROM department d JOIN locations l ON d.location_id = l.location_id 
JOIN countries c ON l.country_id = c.country_id;
メモ：departmentとlocationsを結合する（一致してるのはlocation_id←結合条件作る）
次にlocationsとcountriesを結合する（一致しているのはcountry_id←結合条件作る）
#SELECT did,deptname,d.location_id,city,l.country_id,country_name FROM department d JOIN locations l ON d.locatoin_id = l.location_id JOIN countries c ON l.country_id = c.country_id;

3.SELECT location_id,city,country_id,country_name,region_id,region_name 
FROM locations JOIN countries USING(country_id)
JOIN regions USING(REGION_ID);

4.SELECT personname,country_id,country_name,city 
FROM personVW JOIN department USING(did)
JOIN locations USING(location_id)
JOIN countries USING(country_id);