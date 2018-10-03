--Answer 1
SELECT invoice_id
FROM ap.invoices;

--Answer 2
SELECT invoice_id
FROM ap.invoices;

--Answer 3
SELECT invoice_id
FROM ap.invoices
WHERE invoice_id = 1;

--Answer 4
SELECT invoice_id
FROM ap.invoices
WHERE invoice_id = 1;

--Answer 5
SELECT TO_CHAR(invoice_total, '$999,999.99') AS "Formatted"
FROM ap.invoices;

--Answer 6
SELECT TO_CHAR(invoice_total, '9.99EEEE') AS "Scientific Notation"
FROM ap.invoices;

--Answer 7
SELECT TO_CHAR(invoice_date,'MM/DD/YYYY') AS "Formatted Invoice Date"
FROM ap.invoices;

--Answer 8
SELECT *
FROM ap.invoices
WHERE invoice_date= '07-MAY-14';

--Answer 9--
SELECT to_char(enroll_date, 'MM-DD-YYYY HH24:MI')
FROM student.enrollment
WHERE enroll_date >= '30-JAN-07' AND enroll_date < '01-FEB-07';

--Answer 10
SELECT (CONCAT(CONCAT(CONCAT(city, ','), CONCAT(state, ' ' )), zip )) AS "All Together With Concat"
FROM student.zipcode;

--Answer 11
SELECT city || ', '||state|| ', ' ||zip AS "All Together With ||"
FROM student.zipcode;

--Asnwer 12
SELECT city , UPPER(city) AS "Upper", LOWER(city) AS"Lower", INITCAP(city) AS "Mixed"
FROM student.zipcode;

--Answer 13
SELECT city
FROM student.zipcode
WHERE LENGTH(city) > = 5 AND LENGTH(city) < = 9;

--Answer 14
SELECT city, SUBSTR(city, 2,3) AS "Two Through Four"
FROM student.zipcode;

--Answer 15
SELECT city, SUBSTR(city, -3,3) AS "Last Three"
FROM student.zipcode;

--Answer 16
SELECT student_id, NVL(midterm_grade, 0) AS "No Grade Found" ,finalexam_grade, quiz_grade
FROM student.grade_summary;

--Answer 17
SELECT student_id, salutation, REPLACE(salutation, 'Dr.', 'Doctor') AS "New Salutation"
FROM student.student
WHERE salutation = 'Dr.' ;

--Answer 18
SELECT street_address, TRIM(street_address) AS "Trimmed Address"
FROM student.student
ORDER BY street_address ASC;

--Answer 19
SELECT  TO_NUMBER('123.45', '9G999D99') AS "String to a number"
FROM dual;

--Answer 20
SELECT sqrt(4) AS"SQRT of 4", sqrt(0) AS "SQRT of 0", sqrt(to_binary_double(-1)) AS "SQRT of -1"
FROM dual;
