-- 1. which shippers do we have .alter have a table called Shippers. Return all the fields from all the shippers

SELECT 
Company_name,
Shipper_id,
Phone
FROM northwind_db.shippers;


-- 2. Certain fields from Categories.In the Categories table, selecting all the fields using this SQL.We only want to see two columns, CategoryName and Description.
 
 Select 	 
 category_name,
 description
 FROM northwind_db.categories;
 
  -- 3. Sales Representatives We’d like to see just the FirstName, LastName, and HireDate of all the employees with the Title of Sales Representative. Write a SQL statement that returns only those employees.

Select 	 
first_name,
last_name,
hire_date,
title
  FROM northwind_db.employees
  where title ='sales representative';	
  
  -- 4.  Sales Representatives in the United States . Now we’d like to see the same columns as above, but only for those employees that both have the title of Sales Representative, and also are in the United States
 
 SELECT 
 first_name,
 last_name,
 hire_date,
 title  
 Country
 FROM northwind_db.employees
 where country ="USA"	
 And title = 'sales representative'; 	
 
 
 -- 5. Orders placed by specific EmployeeID . Show all the orders placed by a specific employee. The EmployeeID for this Employee (Steven Buchanan) is 5.
  
SELECT 
order_id, 
Customer_id, 
order_date,
employee_id	
FROM northwind_db.orders	
where employee_id = 5; 
	
    
-- 6. Suppliers and Contact Titles. In the Suppliers table, show the SupplierID, ContactName, and ContactTitle for those Suppliers whose ContactTitle is not Marketing Manager.

SELECT 
supplier_id,
contact_name,
contact_title
FROM northwind_db.suppliers
where contact_title != 'Marketing Manager'; 

-- 7. Products with “queso” in ProductName In the products table, we’d like to see the ProductID and ProductName for those products where the ProductName includes the string “queso”.

SELECT 	
product_name,
product_id 
FROM northwind_db.products
where product_name like'%queso%';

 -- 8. Orders shipping to France or Belgium. Looking at the Orders table, there’s a field called ShipCountry. Write a query that shows the OrderID, CustomerID, and ShipCountry for the orders where the ShipCountry is either France or Belgium. 

SELECT 
Order_id,
customer_id,
Ship_country
FROM northwind_db.orders
where Ship_country ='france'
or Ship_country ='Belgium';  


-- 9. Orders shipping to any country in Latin America Now, instead of just wanting to return all the orders from France of Belgium, we want to show all the orders from any Latin American
-- country. But we don’t have a list of Latin American countries in a table in the Northwind database. So, we’re going to just use this list of Latin
-- American countries that happen to be in the Orders table Brazil , Mexico , Argentina , Venezuela It doesn’t make sense to use multiple Or statements anymore, it would get too convoluted. Use the In statement.

SELECT 
Order_id,
customer_id,
Ship_country
FROM northwind_db.orders
where Ship_country in ('Brazil','Mexico','Argentina','Venezuela');

-- 10. Employees, in order of age . For all the employees in the Employees table, show the FirstName, LastName, Title, and BirthDate. Order the results by BirthDate, so we
-- have the oldest employees first.

SELECT 
first_name, 
last_name,
title, 
Birth_date
FROM northwind_db.employees
order by Birth_date asc; 

-- 11. Showing only the Date with a DateTime field . In the output of the query above, showing the Employees in order of
-- BirthDate, we see the time of the BirthDate field, which we don’t want. Show only the date portion of the BirthDate field.

SELECT 
first_name, 
last_name,
title, 
Birth_date
FROM northwind_db.employees
order by Birth_date; 

-- 12. Show the FirstName and LastName columns from the Employees table, and then create a new column called FullName
-- showing FirstName and LastName joined together in one column, with a space in-between.

SELECT 
first_name,
last_name,
concat ( first_name , last_name)	
FROM northwind_db.employees;

-- 13. OrderDetails amount per line item . In the OrderDetails table, we have the fields UnitPrice and Quantity. 
-- Create a new field, TotalPrice, that multiplies these two together. We’ll ignore the Discount field for now.
-- In addition, show the OrderID, ProductID, UnitPrice, and Quantity. Order by OrderID and ProductID.
 
 
 SELECT 
 order_id,
 unit_price,
 quantity, ( unit_price * quantity) as total_price 
 FROM northwind_db.order_details;
 
  -- 14. How many customers do we have in the Customers table? Show one value only, and don’t rely on getting the recordcount at the end of a resultset. 
 
 Select 
 count(customer_id) 
 from northwind_db.customers;
 
 -- 15. When was the first order. Show the date of the first order ever made in the Orders table. 
 
 SELECT 
min(order_date)	as firstorder 
from northwind_db.orders;

-- 

Select 
order_id,
order_date
from northwind_db.orders
order by order_date
limit 1;
 
 -- 16 Countries where there are customers Show a list of countries where the Northwind company has customers
 
 SELECT 
 distinct country 
 From northwind_db.customers
 order by Country; 
 
 
 -- 17. Contact titles for customers Show a list of all the different values in the Customers table for ContactTitles. Also include a count for each ContactTitle. 
 -- This is similar in concept to the previous question “Countries where there are customers”, except we now want a count for each ContactTitle. 
 
 SELECT 
contact_title,
count(contact_title)
from northwind_db.customers
group by contact_title
order by contact_title desc; 


-- 18 Products with associated supplier names We’d like to show, for each product, the associated Supplier. Show the
-- ProductID, ProductName, and the CompanyName of the Supplier. Sort by ProductID. This question will introduce what may be a new concept, the Join clause
-- in SQL. The Join clause is used to join two or more relational database tables together in a logical way. 



 


	


 
 
 
 
 
 
