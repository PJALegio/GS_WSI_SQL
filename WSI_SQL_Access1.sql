-- 1
SELECT empno, ename, mgr FROM emp;

-- 2
SELECT * FROM emp;

-- 3
SELECT sal * 12 FROM emp;

-- 4
SELECT (sal + 250) * 12 FROM emp;

-- 5
SELECT deptno FROM emp;

-- 6
SELECT DISTINCT deptno FROM emp;

-- 7
SELECT * FROM emp ORDER BY ename;

-- 8
SELECT * FROM emp ORDER BY hiredate DESC;

-- 9
SELECT ename, empno, job, deptno FROM emp WHERE job = 'CLERK';

-- 10
SELECT dname, deptno FROM dept WHERE deptno > 20;

-- 11
SELECT * FROM emp WHERE comm > sal;

-- 12
SELECT * FROM emp WHERE sal BETWEEN 1000 AND 2000;

-- 13
SELECT * FROM emp WHERE ename LIKE 'S%';
SELECT * FROM emp WHERE ename LIKE 'S*';

-- 14
SELECT * FROM emp WHERE job = 'CLERK' AND sal BETWEEN 1000 AND 2000;

-- 15
SELECT * FROM emp WHERE job = 'MANAGER' AND sal > 1500 OR job = 'SALESMAN';

-- 16
SELECT * FROM emp WHERE job = 'MANAGER' OR (job = 'CLERK' AND deptno = 10);

-- 17
SELECT deptno, dname FROM dept ORDER BY deptno;

-- 18
INSERT INTO emp
VALUES (8000, 'Fernandez', 'SALESMAN', '17.06.1984', 1000, 400, 7782, 10);

-- 19
UPDATE emp
SET sal = 1300
WHERE ename = 'Fernandez';

-- 20
DELETE FROM emp
WHERE ename = 'Fernandez';