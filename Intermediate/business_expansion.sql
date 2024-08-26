/*
Enter your query below.
Please append a semicolon ";" at the end of the query
*/

SELECT 
    ua.id,
    ua.first_name,
    ua.last_name,
    cu.id AS customer_id,
    cu.customer_name,
    COUNT(cu.id) AS customer_count
FROM 
    customer as cu
JOIN 
    contact as c ON cu.id = c.customer_id
JOIN 
    user_account as ua ON c.user_account_id = ua.id
GROUP BY 
    ua.id,
    ua.first_name,
    ua.last_name,
    cu.id,
    cu.customer_name
HAVING 
    COUNT(cu.id) > 1;