-- 1
SELECT * FROM emp, dept WHERE emp.deptno = dept.deptno;

-- 2
SELECT * FROM emp INNER JOIN dept ON emp.deptno = dept.deptno;

-- 3
SELECT emp.ename, dept.dname FROM emp INNER JOIN dept ON emp.deptno = dept.deptno
ORDER BY emp.ename ASC, dept.dname ASC;

-- 4
SELECT emp.deptno FROM emp;
SELECT dept.deptno FROM dept;
SELECT DISTINCT emp.deptno FROM emp;

-- 5
SELECT emp.ename, dept.loc, dept.dname
FROM emp INNER JOIN dept ON emp.deptno = dept.deptno
WHERE sal > 1500;

-- 6
SELECT * FROM emp INNER JOIN dept ON emp.deptno = dept.deptno WHERE dept.loc = 'Dallas';

-- 7
CREATE TABLE building
(
    buildno     INTEGER PRIMARY KEY,
    loc         VARCHAR(20)
);

-- 8
INSERT INTO building
VALUES (1, 'Dallas');
INSERT INTO building
VALUES (2, 'Houston');
INSERT INTO building
VALUES (3, 'Denver');

-- 9
SELECT building.*, dept.dname FROM building, dept 
WHERE dept.deptno = 20 AND dept.loc = building.loc;
