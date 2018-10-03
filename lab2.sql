/*--Answer1--
to specify a condition while fetching the data from single table 
*/
--Answer2--
SELECT  *
 FROM ap.invoices
 WHERE vendor_id = 34;

--Answer3--
SELECT  invoice_id
 FROM ap.invoices
 WHERE invoice_total = 356.48;

--Answer4--
SELECT  invoice_id, invoice_number, invoice_date
 FROM ap.invoices
 WHERE invoice_id IN (81,82,90);

--Answer5--
 SELECT  invoice_id, vendor_id
 FROM ap.invoices
 WHERE vendor_id <= 44;

--Answer6--
 SELECT  invoice_id, vendor_id, credit_total
 FROM ap.invoices
 WHERE credit_total <> 0;

--Answer7--
 SELECT  invoice_id, invoice_date
 FROM ap.invoices
 WHERE invoice_date = '01-MAY-08';

--Answer8--
SELECT  invoice_id, invoice_date, payment_total
 FROM ap.invoices
 WHERE payment_total BETWEEN 100 AND 115;


--Answer9--
SELECT  invoice_id, invoice_date
 FROM ap.invoices
 WHERE invoice_date BETWEEN '01-May-14' AND '08-May-14';

--Answer10--
SELECT  invoice_id, invoice_number 
FROM ap.invoices
WHERE invoice_number  LIKE 'P%';

--Answer11--
SELECT  invoice_id, invoice_number 
FROM ap.invoices
WHERE invoice_number  LIKE 'P-3%';




--Answer12--
SELECT  invoice_id, invoice_number 
FROM ap.invoices
WHERE invoice_number  LIKE '%-X';

--Answer13--
SELECT  invoice_id, invoice_number 
FROM ap.invoices
WHERE invoice_number LIKE '%11%' AND SUBSTR(invoice_number, 1, 1) <> '1' AND SUBSTR(invoice_number, -1) <> 1;

--Answer14--
SELECT  invoice_id, invoice_number 
FROM ap.invoices
WHERE invoice_number LIKE '_0%___3';


--Answer15--
SELECT  invoice_id, payment_date 
FROM ap.invoices
WHERE payment_date IS null ;

--Answer16--
SELECT  invoice_id, payment_date 
FROM ap.invoices
WHERE payment_date IS NOT null ;



--Answer17--
SELECT  invoice_id, payment_total, invoice_total
FROM ap.invoices
WHERE payment_total = 0 AND invoice_total > 100;

--Answer18--
SELECT  invoice_id, payment_total, invoice_total
FROM ap.invoices
WHERE (payment_total BETWEEN 0 AND 25) OR (invoice_total > 100);

--Answer19--
SELECT  invoice_id, terms_id
FROM ap.invoices
WHERE NOT terms_id IN (1,2,3,4);


--Answer20--
SELECT  invoice_id, invoice_date, payment_total
FROM ap.invoices
WHERE (invoice_date= '01-May-14' OR invoice_date= '17-May-14') AND (payment_total = 0);
