-- 1
SELECT deptno, ename, mgr FROM emp;

-- 2
SELECT * FROM emp;

-- 3
SELECT sal * 12 FROM emp;

-- 4
SELECT (sal + 250) * 12 FROM emp;

-- 5
SELECT sal * 12 AS ROCZNA FROM emp;

-- 6
SELECT sal * 12 AS [R PENSJA] FROM emp;

-- 7
-- https://support.microsoft.com/en-us/office/type-conversion-functions-8ebb0e94-2d43-4975-bb13-87ac8d1a2202
SELECT CStr(empno) + ' ' + ename AS EMPLOYEE FROM emp;

-- 8
SELECT ename + ' pracuje w dziale ' + CStr(deptno) FROM emp;

-- 9
SELECT sal*12 + NVL(comm, 0) FROM emp;
-- Access
SELECT sal*12 + Nz(comm, 0) FROM emp;

-- 10
SELECT deptno FROM emp;

-- 11
SELECT DISTINCT deptno FROM emp;

-- 12
SELECT DISTINCT deptno, job FROM emp;

-- 13
SELECT * FROM emp ORDER BY ename;

-- 14
SELECT * FROM emp ORDER BY hiredate DESC;

-- 15
SELECT empno, ename, job, hiredate, comm, mgr, deptno FROM emp ORDER BY deptno ASC, sal DESC;

-- 16
SELECT ename, empno, job, deptno FROM emp WHERE job = 'CLERK';

-- 17
SELECT dname, deptno FROM dept WHERE deptno > 20;

-- 18
SELECT * FROM emp WHERE comm > sal;

-- 19
SELECT * FROM emp WHERE sal BETWEEN 1000 AND 2000;

-- 20
SELECT * FROM emp WHERE mgr IN (7902, 7566, 7788);

-- 21
SELECT * FROM emp WHERE ename LIKE "S%";
-- Access
-- https://learn.microsoft.com/en-us/office/vba/access/concepts/structured-query-language/like-operator-microsoft-access-sql
SELECT * FROM emp WHERE ename LIKE "S*";

-- 22
SELECT * FROM emp WHERE ename LIKE "____";
-- Access
SELECT * FROM emp WHERE ename LIKE "????";

-- 23
SELECT * FROM emp WHERE mgr IS NULL;

-- 24
SELECT * FROM emp WHERE NOT sal BETWEEN 1000 AND 2000;

-- 25
SELECT * FROM emp WHERE NOT ename LIKE 'M*';

-- 26
SELECT * FROM emp WHERE NOT mgr IS NULL;

-- 27
SELECT * FROM emp
WHERE job = 'CLERK' AND sal >= 1000 AND sal < 2000;

-- 28 
SELECT * FROM emp
WHERE job = 'CLERK' OR (sal >= 1000 AND sal < 2000);

-- 29
SELECT * FROM emp
WHERE job = 'MANAGER' AND sal > 1500
OR job = 'SALESMAN';

-- 30
SELECT * FROM emp
WHERE job = 'MANAGER'
OR job = 'SALESMAN' AND sal > 1500;

-- 31
SELECT *
FROM emp
WHERE job = 'MANAGER'
OR job = 'CLERK' AND deptno = 10;

-- 32 ???
SELECT * FROM salgrade;

-- 33
SELECT * FROM dept;

-- 34
SELECT deptno, dname FROM dept ORDER BY deptno;

-- 35
SELECT DISTINCT job FROM emp;

-- 36
SELECT *
FROM emp
WHERE deptno IN (10, 20)
ORDER BY ename ASC;

-- 37
SELECT *
FROM emp
WHERE ename LIKE '*TH*' OR ename LIKE '*LL*';

-- 38
SELECT ename, deptno, hiredate
FROM emp
WHERE EXTRACT (YEAR FROM hiredate) = 1980;
-- Access
-- https://support.microsoft.com/en-us/office/examples-of-using-dates-as-criteria-in-access-queries-aea83b3b-46eb-43dd-8689-5fc961f21762
SELECT ename, deptno, hiredate
FROM emp
WHERE Year(hiredate) = 1980;

-- 39
SELECT ename, sal, comm
FROM emp
WHERE job = 'SALESMAN' AND sal > comm
ORDER BY sal DESC, ename ASC;