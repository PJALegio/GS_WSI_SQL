-- DQL
-- 1
SELECT * FROM emp, dept WHERE emp.deptno = dept.deptno;

-- 2
SELECT * FROM emp INNER JOIN dept ON emp.deptno = dept.deptno;

-- 3
SELECT emp.ename, dept.dname FROM emp
INNER JOIN dept ON emp.deptno = dept.deptno
ORDER BY emp.ename;

-- 4
SELECT emp.deptno FROM emp;
SELECT dept.deptno FROM dept;

SELECT DISTINCT emp.deptno FROM emp;
SELECT dept.deptno FROM dept;

-- 5
SELECT emp.ename, dept.loc, dept.dname 
FROM emp INNER JOIN dept ON emp.deptno = dept.deptno
WHERE emp.sal > 1500;

-- 6
SELECT * 
FROM emp INNER JOIN dept ON emp.deptno = dept.deptno
WHERE dept.loc = 'Dallas';

SELECT emp.*
FROM emp INNER JOIN dept ON emp.deptno = dept.deptno
WHERE dept.loc = 'Dallas';

-- DML
-- 7
INSERT INTO emp
VALUES (8000, 'GARCIA', 'CLERK', 7782, '1982-03-14', 1500, NULL, 10);

-- 8
UPDATE emp
SET sal = 2000
WHERE ename = 'GARCIA';

-- 9
DELETE FROM emp
WHERE ename = 'GARCIA';

-- DDL
-- 10
CREATE TABLE gamer
(
    id      INTEGER PRIMARY KEY,
    gname   VARCHAR(20) NOT NULL, -- MySQL
    glevel  INTEGER,
    game    INTEGER
);

CREATE TABLE game
(
    id          INTEGER PRIMARY KEY,
    gamename    VARCHAR(20) NOT NULL,
    gametype    VARCHAR(20)
);

-- 11
ALTER TABLE gamer
ADD CONSTRAINT gamer_game
FOREIGN KEY(game)
REFERENCES game(id);

-- 12
INSERT INTO game
VALUES
(1, 'Tetris', 'Puzzle'),
(2, 'Super Mario', 'Platform'),
(3, 'Minecraft', 'Sandbox');

INSERT INTO gamer
VALUES
(1, 'Adrian', 15, 3),
(2, 'Bartek', 10, 1),
(3, 'Cezary', 12, 2),
(4, 'Daniel', 14, 2),
(5, 'Edward', 18, 1),
(6, 'Franciszek', 16, 3);

SELECT gamer.gname, gamer.glevel, game.gamename, game.gametype
FROM gamer INNER JOIN game ON gamer.game = game.id; 

SELECT gamer.gname, game.gamename
FROM gamer INNER JOIN game ON gamer.game = game.id
WHERE game.gametype = 'SANDBOX';

SELECT gamer.gname, gamer.glevel, game.gamename
FROM gamer INNER JOIN game ON gamer.game = game.id
WHERE gamer.glevel >= 15;

-- 13
ALTER TABLE gamer
DROP CONSTRAINT gamer_game;

DROP TABLE gamer, game;