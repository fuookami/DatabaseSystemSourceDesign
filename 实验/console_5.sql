--1
SELECT S.SNAME, S.SNO, GRADE_TABLE.GRADE_NUM, GRADE_TABLE.AVG_GRADE
  FROM FUOOKAMI.S RIGHT OUTER JOIN (
    SELECT SC.SNO, COUNT(*) AS GRADE_NUM, AVG(SC.GRADE) AS AVG_GRADE
    FROM FUOOKAMI.SC GROUP BY SC.SNO) GRADE_TABLE
  ON FUOOKAMI.S.SNO  = GRADE_TABLE.SNO

--2
GRANT ALL PRIVILEGES ON TABLE FUOOKAMI.S, FUOOKAMI.C, FUOOKAMI.SC TO fuookami;

--3
DROP VIEW MALE_STUDENT;
DELETE FROM FUOOKAMI.SC;
DROP TABLE FUOOKAMI.SC;
DELETE FROM FUOOKAMI.C;
DROP TABLE FUOOKAMI.C;
DELETE FROM FUOOKAMI.S;
DROP TABLE FUOOKAMI.S;