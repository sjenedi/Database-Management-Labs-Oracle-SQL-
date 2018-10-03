--Lab9

--Answer 1
SELECT DISTINCT cost
FROM student.course
WHERE cost = 
    (SELECT MIN(cost) 
    FROM student.course);
    
--Answer 2
SELECT DISTINCT cost
FROM student.course
WHERE cost > all
    (SELECT AVG(cost)
    FROM student.course);

--Answer 3
SELECT cost
FROM student.course
WHERE cost > 
    (SELECT AVG(cost) 
    FROM student.course);
    
--Answer 4
SELECT MIN(enroll_date) AS "Earliest Enrollment Date"
FROM student.enrollment;

--Answer 5
SELECT MIN(enroll_date+30) AS "Earliest Date Plus 30"
FROM student.enrollment;

--Answer 6
SELECT v.vendor_name, invoice_number, invoice_total
FROM ap.vendors v JOIN ap.invoices i USING (vendor_id)
WHERE invoice_total < 
    (SELECT MAX(invoice_total) FROM ap.invoices WHERE vendor_id = 123)
ORDER BY 1;
                              


--Answer 7--
SELECT v.vendor_name, invoice_total, vendor_state
FROM ap.vendors v JOIN ap.invoices i USING (vendor_id)
WHERE invoice_total < 
    (SELECT MAX(invoice_total) FROM ap.invoices WHERE vendor_id = 123)
ORDER BY 1;
                     
--Answer 8
SELECT last_name, first_name
FROM student.student
WHERE first_name LIKE '&&ID%' AND last_name LIKE '&&ID%'
ORDER BY last_name;

--Answer 9
SELECT cost
FROM student.course
WHERE cost > 
    (SELECT MIN(cost) 
    FROM student.course);

--Answer 10
SELECT vendor_id, invoice_number, invoice_total
FROM ap.invoices i
WHERE invoice_total  >  (
    SELECT AVG(invoice_total) 
    FROM ap.invoices v
    where v.vendor_id = i.vendor_id
)
ORDER BY vendor_id;

--Answer 11
SELECT i.vendor_id, vendor_name, invoice_id
FROM ap.invoices i JOIN ap.vendors v
ON i.vendor_id= v.vendor_id;

--Answer 12
SELECT vendor_name, COUNT(invoice_id)
FROM ap.invoices i JOIN ap.vendors v
ON i.vendor_id= v.vendor_id
GROUP BY i.vendor_id, vendor_name
ORDER BY 1;

--Answer 13
SELECT vendor_contact_last_name, vendor_contact_first_name, vendor_state
FROM ap.vendors
WHERE vendor_state IN('CA','NJ') AND LENGTH(vendor_contact_last_name) > LENGTH(vendor_contact_first_name)
ORDER BY 1;

--Answer 14
SELECT vendor_id, vendor_name
FROM ap.vendors
WHERE INSTR(vendor_name, '''') > 0;

--Answer 15
SELECT vendor_id, vendor_name
FROM ap.vendors
WHERE INSTR(vendor_name, ' ') > 0;
