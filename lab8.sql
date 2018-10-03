--Lab8


--Answer 1
SELECT c.course_no, c.description, nvl(r.revenue,0) AS "Total Revenue Per Course"
FROM student.course c LEFT OUTER JOIN student.course_revenue r
ON c.course_no = r.course_no
ORDER BY revenue DESC;

--Answer 2
SELECT c.course_no, c.description, nvl(r.revenue,0) AS "Total Revenue Per Course"
FROM student.course c FULL OUTER JOIN student.course_revenue r
ON c.course_no = r.course_no
ORDER BY revenue;

--Answer 3
SELECT c.course_no, c.description, r.revenue AS "Revenue"
FROM student.course c RIGHT OUTER JOIN student.course_revenue r
ON c.course_no = r.course_no
ORDER BY revenue DESC;

--Answer 4
SELECT TO_CHAR(AVG(course_fee),'$99,999.99') AS "Average Cost Per Course"
FROM student.course_revenue;

--Answer 5
SELECT description, cost, prerequisite
FROM student.course
WHERE cost > 1100 AND prerequisite BETWEEN 25 AND 80 AND description LIKE '%s';

--Answer 6?
SELECT cost, COUNT(cost) AS "Total Courses"
FROM student.course
GROUP BY cost
ORDER BY count(cost) DESC;

--Answer 7
SELECT  course_no, description
FROM student.course
GROUP BY description, course_no
HAVING LENGTH(description) >10 and LENGTH(description) <16
ORDER BY course_no;

--Answer 8
SELECT TO_CHAR(sysdate,'MM/DD/YYYY') AS "Formatted Today's Date"
FROM dual;

--Answer 9
SELECT TO_CHAR(sysdate,'DD-MON-YYYY hh:mm:ss') AS "Formatted Today's Date"
FROM dual;

--Answer 10
SELECT TO_CHAR(sysdate,'DAY MON DD, YYYY') AS "Formatted Today's Date"
FROM dual;  

--Answer 11
SELECT MAX(cost) AS "Highest Cost"
FROM student.course;

--Answer 12
SELECT TO_CHAR(MAX(cost),'$9,999') AS "Highest Cost"
FROM student.course;

--Answer 13
SELECT MIN(salary) AS "Mininum", MAX(salary) AS "Maximum", AVG(salary) AS "Average", MEDIAN(salary) AS "Median"
FROM student.employee;

--Answer 14
SELECT MIN(salary) + MAX(salary) AS "Min Plus Max"
FROM student.employee;

--Answer 15
SELECT employee_id, name, title
FROM student.employee
WHERE title IN('Manager', 'Analyst')
ORDER BY title DESC;

--Answer 16
SELECT last_name AS "Sounds Like Archer"
FROM student.student
WHERE last_name LIKE '%Archar%' OR last_name LIKE '%Archer%' OR last_name LIKE '%Archor%';

--Answer 17
SELECT employer, COUNT(*) AS "Number of Students Employed by"
FROM student.student
GROUP BY employer
ORDER BY 2 DESC ;

--Answer 18
SELECT employer, COUNT(*) AS "Number of Students Employed by"
FROM student.student
GROUP BY employer
HAVING COUNT(*) > 7;

--Answer 19
SELECT student_id, last_name || ', ' || first_name As "Last, Fist"
FROM student.student
ORDER BY student_id
FETCH FIRST 10 ROWS ONLY;

--Answer 20
SELECT  midterm_grade, finalexam_grade, quiz_grade, COALESCE(midterm_grade,finalexam_grade,quiz_grade,0)
FROM student.grade_summary;

