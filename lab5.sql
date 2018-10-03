--Answer 1
SELECT  TRUNC(7/3) AS "Integer Div", (7/3) AS "Full Div", MOD(7,3) AS "Mod"
FROM dual;

--Answer 2
SELECT  CEIL(5.768) AS "Ceil Value of 5.768", FLOOR(5.768) AS "Floor Value of 5.768", 
        CEIL(-2.35) AS "Ceil Value of -2.35", FLOOR(-2.35) AS "Floor Value of -2.35"
FROM dual;

--Answer 3
SELECT ABS(-3.4) AS "Absolute Value of -3.4", ABS(0) AS "Absolute Value of 0", ABS(4.01) AS "Absolute Value of 4.01"
FROM dual;

--Answer 4
SELECT ROUND(9.58348) AS "Answer 1", ROUND(9.58348,1) AS "Answer 1_1",ROUND(9.58348,4) AS "Answer 3",ROUND(9.58348,10) AS "Answer 2"
FROM dual;

--Answer 5
SELECT TRUNC(MONTHS_BETWEEN('15-AUG-2011', '04-DEC-1865')/12) AS "Number of Years"
FROM dual;

--Answer 6
SELECT TO_CHAR(systimestamp -1/24, 'MM-DD-YYYY HH24.MI.SS') AS "One Hour Ago"
FROM dual;

--Answer 7
SELECT TO_CHAR(sysdate, 'YYYY') AS "Current Year"
FROM dual;

--Answer 8--

--Answer 9
SELECT (sysdate - 90) AS "Three Months Ago"
FROM dual;

--Asnwer 10
SELECT LAST_DAY(sysdate) AS "Last Day of Month"
FROM dual;

--Answer 11
SELECT dbtimezone AS "Time Zone for DB Server"
FROM DUAL;

--Answer 12
SELECT sysdate AS "Current Date" , LAST_DAY(sysdate) AS "Last Day of Current Month", LAST_DAY(sysdate)- sysdate AS "Days Left in Current Month"
FROM dual;

--Answer 13
SELECT POWER(7,8)  AS "7 Raised to 8th Power"
FROM dual;

--Answer 14
SELECT *
FROM student.enrollment
WHERE enroll_date BETWEEN '01-JAN-2007' AND '31-JAN-2007';

--Answer 15
SELECT course_no, description,
(CASE 
    WHEN cost < 1100 THEN 'Low'
    WHEN cost < 1500 THEN 'Medium'
    WHEN cost > 1500 THEN 'High'
    ELSE 'N/A'
END)
FROM student.course;