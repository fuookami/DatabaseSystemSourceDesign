--1
UPDATE FUOOKAMI.SC SET SC.GRADE = SC.GRADE * 1.1
  WHERE SC.CNO = '1';

--2
DELETE FROM FUOOKAMI.SC
  WHERE SC.CNO = (
    SELECT C.CNO FROM FUOOKAMI.C
    WHERE C.CNAME = '数据结构'
  );

--3
DELETE FROM FUOOKAMI.SC
  WHERE SC.SNO = '95002';
DELETE FROM FUOOKAMI.S
  WHERE S.SNO = '95002';