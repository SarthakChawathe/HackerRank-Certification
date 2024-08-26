/*
Enter your query below.
Please append a semicolon ";" at the end of the query
*/


SELECT p.sku, p.product_name
FROM PRODUCT p
LEFT JOIN INVOICE_ITEM i ON p.id = i.product_id
WHERE i.invoice_id IS NULL
ORDER BY p.sku ASC;

