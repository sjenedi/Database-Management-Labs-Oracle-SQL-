--Answer 2--
SELECT * 
FROM student.employee;

--Answer 3--
SELECT last_name, first_name
FROM student.student;

--Answer 4--
SELECT last_name AS "LN", first_name AS "FN"
FROM student.student;

--Answer 5--
SELECT DISTINCT zip
FROM student.student;

--Answer 6--
SELECT DISTINCT employer
FROM student.student
ORDER BY employer asc;

--Answer 7--
SELECT last_name, LOWER(last_name) AS "no capitalization"
FROM student.student;

--Answer 8--
SELECT description,  SUBSTR(description, 1, 3) AS "First Three"
FROM student.course;

--Answer 9--
SELECT description,  SUBSTR(description, -3,3) AS "Last Three"
FROM student.course;

--Answer 10--
SELECT * 
FROM DUAL;

--Answer 11--
SELECT 2+4
FROM DUAL;

--Answer 12--
SELECT 5*3 AS"5 times 3", 5-3 AS "5 minus 3", 5/3 AS "5 divided by 3"
FROM DUAL;

--Answer 13--
SELECT 5/3 AS "Not Rounded",(CEIL((5/3) * 100) / 100) AS "Rounded"
FROM DUAL;

--Answer 14--
SELECT SYSDATE
FROM DUAL;

--Answer 15--
SELECT SYSDATE-1 AS "Yesterday"
FROM DUAL;


