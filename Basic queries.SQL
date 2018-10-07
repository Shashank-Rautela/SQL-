/* Postgresql database |DB Name - Parch and Posey | Attributes(Rows) and Tuples(Columns) |*/

/*Tables in Database are |accounts|orders|sales_reps|web_events|

Basic Queries for Database*/

--Write a query to show accounts tables with only 10 earliest entries 
Select * 
FROM accounts
LIMIT 10;
-- * is used to show entire accounts table | LIMIT is used to restrict the entire display of accounts to only 10 entries.    

--Write a query to return first 10 orders having highest standard quality. 
SELECT * 
FROM orders
ORDER BY standard_qty DESC
LIMIT 10;

--Write a query to return orders where the gloss_qty is greater than 50 with earliest order at top.
SELECT * 
FROM  orders 
WHERE gloss_qty > 50
ORDER BY occurred_at
LIMIT 10;

--Write a query to show all accounts with name walmart.
SELECT *
FROM accounts
WHERE name = 'Walmart';

-- Write a query to find percentage of standard amount usd.
SELECT   standard_amt_usd, total_amt_usd, (standard_amt_usd/total_amt_usd)*100 as percentage_std_amt
FROM orders
LIMIT 10;

-- Write a query to show accounts name where 
--1. 2nd letter is a.
--2. have ter in name
SELECT *
FROM accounts
WHERE name Like '_a%';

SELECT *
FROM accounts
WHERE name Like '%ter%'; 

#IN clause

 /*Use the accounts table to find the account name, primary_poc, and sales_rep_id 
for Walmart, Target, and Nordstrom.*/

SELECT name, primary_poc ,sales_rep_id
FROM accounts
WHERE name
IN ('Walmart','Target','Nordstrom' );

#NOT IN 
 /*Use the accounts table to find the account name, primary_poc, and sales_rep_id 
for not in Walmart, Target, and Nordstrom.*/
SELECT name, primary_poc ,sales_rep_id
FROM accounts
WHERE name
NOT IN ('Walmart','Target','Nordstrom' );

#And , Between and Or clause.
-- Write a query to find orders having standard quality of 100,150 with gloss qty 0.

SELECT * 
FROM orders
WHERE standard_qty IN('150','100') And gloss_qty = 0 ;

--Find all the company names that start with a 'C' or 'W', and the primary contact contains 
--'ana' or 'Ana', but it doesn't contain 'eana'.

SELECT *
FROM accounts
WHERE (name LIKE 'C%' OR name LIKE 'W%')
    AND ((primary_poc LIKE '%ana%' OR primary_poc LIKE '%Ana%')
    AND primary_poc NOT LIKE '%eana%');









 