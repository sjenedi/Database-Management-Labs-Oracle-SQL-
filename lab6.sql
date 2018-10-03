--Lab 6

--Answer 1
SELECT count (*) AS "Number of Invoices"
FROM ap.invoices;

--Answer 2
SELECT COUNT(payment_date) AS "Number of Valid Payment Dates"
FROM ap.invoices;

--Answer 3
SELECT COUNT(*) - COUNT(payment_date) AS "Number of Null Payment Dates"
FROM ap.invoices;

--Answer 4
SELECT DISTINCT payment_date AS "Different Payment Dates"
FROM ap.invoices;

--Answer 5
SELECT DISTINCT COUNT(*) - COUNT(payment_date) AS "Number of Diff. Payment Dates"
FROM ap.invoices;

--Answer 6
SELECT TO_CHAR(SUM(invoice_total), '$999,999.99') AS "Total Invoice Amount"
FROM ap.invoices;

--Answer 7
SELECT TO_CHAR(AVG(invoice_total), '999999.999') AS "Average Invoice Amount"
FROM ap.invoices;

--Answer 8
SELECT TRUNC(TO_CHAR(AVG(invoice_total), '99999.9')) AS "Average Invoice Amount"
FROM ap.invoices;

--Answer 9
SELECT MIN(invoice_total) AS "Lowest Invoice Total",
       MAX(invoice_total) AS "Highest Invoice Total"
FROM ap.invoices;

--Answer 10--
SELECT TO_CHAR(MIN(invoice_total), '$9999999.99') AS "Lowest Invoice Total",
       TO_CHAR(MAX(invoice_total), '$99,999.99') AS "Highest Invoice Total"
FROM ap.invoices;

--Answer 11
SELECT max(vendor_name) AS "Last Vendor"
FROM ap.vendors;

--Answer 12
SELECT MIN(invoice_date) AS "Earliest Invoice Date"
FROM ap.invoices;

--Answer 13
SELECT DISTINCT invoice_date AS "Invoice Date",  COUNT(invoice_date)  AS "Invoices Per Date"
FROM ap.invoices GROUP BY  invoice_date
ORDER BY invoice_date asc;

--Answer 14
SELECT invoice_total, COUNT(invoice_date)  AS "Invoices Less Than $10.00"
FROM ap.invoices GROUP BY invoice_total
ORDER BY invoice_total;

--Answer 15
SELECT vendor_state, COUNT(vendor_state)  AS "Vendors Per State"
FROM ap.vendors GROUP BY vendor_state
ORDER BY vendor_state;

--Answer 16
SELECT vendor_state, COUNT(vendor_state)  AS "Vendors Per State"
FROM ap.vendors GROUP BY vendor_state
HAVING COUNT(vendor_state) >= 3
ORDER BY vendor_state;

--Answer 17
SELECT terms_id, COUNT(terms_id)  AS "Numbers of Terms Id Category"
FROM ap.invoices  GROUP BY terms_id
ORDER BY terms_id;

--Answer 18
SELECT DISTINCT invoice_date, COUNT(invoice_date) AS "Invoices in June,2008"
FROM ap.invoices
WHERE invoice_date BETWEEN '01-JUN-14' AND '30-JUN-14' GROUP BY invoice_date
ORDER BY invoice_date;

--Answer 19
SELECT DISTINCT invoice_date, COUNT(invoice_date) AS "Invoices in June,2008"
FROM ap.invoices
HAVING invoice_date BETWEEN '01-JUN-14' AND '30-JUN-14' GROUP BY invoice_date
ORDER BY invoice_date;

--Answer 20
SELECT DISTINCT invoice_due_date - invoice_date AS "Difference in Days", COUNT(invoice_due_date - invoice_date) AS "How Many?"
FROM ap.invoices
GROUP BY invoice_due_date - invoice_date
ORDER BY invoice_due_date - invoice_date DESC;