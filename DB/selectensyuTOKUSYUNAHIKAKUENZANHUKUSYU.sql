1.SELECT pokemon_name,weight,habitat FROM pokemon_zukann WHERE weight BETWEEN 50.0 AND 59.9;

2.SELECT pname,tname,evo_seq FROM zukann WHERE tname IN('くさ','ひこう','じめん');

3.SELECT pname,tname,height FROM zukann WHERE (height BETWEEN 1.0 AND 1.99) AND (tname IN('ほのお','はがね'));

4.SELECT pname,eggname,weight FROM zukann WHERE (weight >= 10.0 AND weight < 50.0) AND (eggname = 'すいちゅう1' OR eggname ='すいちゅう2');

5.SELECT pname,eggname FROM zukann WHERE eggname LIKE 'すいちゅう%';

6.SELECT pokemon_name,habitat FROM zuk WHERE habitat LIKE '%ばんどうろ';

7.SELECT pname,gname FROM zukann WHERE gname LIKE '___ポケモン';

8.SELECT pokemon_name,habitat FROM zuk WHERE habitat LIKE '%スロットの景品%';

9.SELECT pokemon_name,habitat FROM zuk WHERE habitat LIKE '%スロットの景品%' AND NOT(habitat LIKE '%サファリゾーン%');