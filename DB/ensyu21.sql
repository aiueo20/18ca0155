演習21
1.SELECT TO_DATE('2004/11/2','YYYY/MM/DD') FROM dual;
SELECT TO_DATE('2004年11月2日','YYY"年"MM"月"DD"日"') FROM dual;

2.SELECT TO_CHAR(TO_DATE('99-11-2','YY-MM-DD'),'YYYY-MM-DD') FROM dual;
SELECT TO_CHAR(TO_DATE('99-11-2','RR-MM-DD'),'YYYY-MM-DD') FROM dual;
SELECT TO_CHAR(TO_DATE('49-11-2','RR-MM-DD'),'YYYY-MM-DD') FROM dual;