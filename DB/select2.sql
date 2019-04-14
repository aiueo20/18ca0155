#SQL基礎35P
1.SELECT DISTINCT job_id FROM jobHistory;

2.SELECT DISTINCT mgr FROM emp;

3.SELECT DISTINCT deptno,mgr FROM emp;

4.SELECT ename,sal * 3 bonus FROM emp;

5.SELECT ename,sal + comm newsal FROM emp;

6.NULL同士の計算がされているから

7.SELECT ename || 'の部署は' || deptno || 'です' FROM emp;

8.SELECT ename || 'の部署は' || deptno || 'です' as 従業員名と部署 FROM emp;

9.SELECT q'AIt''s wonderful!!A' AS MESSAGE FROM dual;

10.SELECT 'It''s wonderful!!' AS MESSAGE FROM dual;