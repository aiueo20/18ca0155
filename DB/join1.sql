演習31
問3と問4提出。

3.SELECT location_id,city,country_id,country_name,region_id,region_name 
FROM locations JOIN countries USING(country_id)
JOIN regions r USING(REGION_ID);

4.SELECT personname,country_id,country_name,city 
FROM personVW JOIN department USING(did)
JOIN locations USING(location_id)
JOIN countries USING(country_id);