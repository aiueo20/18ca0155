1.SELECT JOB_ID FROM person;

2.SELECT person.JOB_ID ON person.DEPARTMENT_ID FROM person;

3.SELECT DISTINCT zno,pname,eggname FROM zukann;

4.SELECT DISTINCT zno,pname,tname FROM zukann WHERE weight >= 100;

5.SELECT q'{Merry X''mas}' AS MESSAGE FROM dual;

6.SELECT 'Merry X''masA' AS MESSAGE FROM dual;

7.SELECT personid, first_name || last_name AS PERSONNAME FROM person;

8.SELECT personid, firstname ||' '|| last_name AS PERSONNAME FROM person;

9.SELECT first_name || q'<'' salary : >' AS salary FROM person

10.SELECT zno AS 図鑑NO,pname ||'のタイプは「'||tname||'」です' AS ポケモンタイプ FROM zukann WHERE tname = 'ほのお';