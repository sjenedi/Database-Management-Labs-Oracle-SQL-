--Lab 7

--Answer 1
SELECT student_id, state
FROM student.student 
JOIN student.zipcode ON student.zip=zipcode.zip
ORDER BY student_id;

--Answer 2
SELECT student_id, state
FROM student.student, student.zipcode
WHERE student.zip=zipcode.zip
ORDER BY student_id;

--Answer 3
SELECT student_id, city ||', '|| state AS "City, State"
FROM student.student 
JOIN student.zipcode ON student.zip=zipcode.zip
ORDER BY student_id;

--Answer 4
SELECT Instructor_id FROM student.instructor 
MINUS
SELECT Instructor_id  FROM student.section
ORDER BY Instructor_id desc;

--Answer 5--
SELECT description, TO_CHAR(revenue, '$99,999') AS "Total Revenue", TO_CHAR(revenue * num_of_sections, '$9999,999.99') AS "Revenue Per Section Taught"
FROM student.course 
JOIN student.course_revenue ON course.course_no=course_revenue.course_no;

--Answer 6
SELECT i.instructor_id, first_name, last_name, num_of_classes, num_of_students
FROM student.instructor i   
JOIN student.instructor_summary s ON i.instructor_id= s.instructor_id;

--Answer 7???
SELECT i.instructor_id, last_name, TO_CHAR(nullif(revenue,0)/num_of_students,'$99,999.99') AS "Revenue Per Student"
FROM student.instructor i   
JOIN student.instructor_summary s ON i.instructor_id= s.instructor_id;

--Answer 8
SELECT invoice_id,vendor_name
FROM ap.invoices i
JOIN ap.vendors v ON i.vendor_id=v.vendor_id
ORDER BY 1;

--Answer 9
SELECT DISTINCT vendor_name
FROM ap.invoices i
FULL JOIN ap.vendors v ON i.vendor_id=v.vendor_id
ORDER BY 1;

--Answer 10
SELECT invoice_id,vendor_name
FROM ap.invoices i
JOIN ap.vendors v ON i.vendor_id=v.vendor_id
where vendor_name between 'H' AND 'M'
ORDER BY 1;

--Answer 11--
SELECT MIN(payment_date) AS "Earliest Payment Date", MAX(payment_date) AS "Latest Payment Date"
FROM ap.invoices;

--Answer 12
SELECT invoice_number, REPLACE(invoice_number, '-', '') AS "No Dashes"
FROM ap.invoices
ORDER BY 1;

--Answer 13?
SELECT vendor_name
FROM ap.vendors
WHERE vendor_name LIKE '%Inc%' OR vendor_name LIKE '%Inc.%'
ORDER BY vendor_name;

--Answer 14
SELECT vendor_name, 
    NVL2(REPLACE(vendor_address1, 'NULL', NULL), vendor_address1 || ' ', '') || 
    NVL2(REPLACE(vendor_address2, 'NULL', NULL), vendor_address2 || ' ', '') || 
    vendor_city || ', ' || vendor_state || ' ' || vendor_zip_code 
    AS "Complete Address"
FROM ap.vendors
WHERE vendor_name BETWEEN 'P%' AND 'S%'
ORDER BY 1;