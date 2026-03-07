show search_path;


CREATE TABLE customers  (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10));

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id));


CREATE TABLE inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id));


INSERT INTO customers
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');


INSERT INTO products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);


INSERT INTO sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);


INSERT INTO inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);


select*from customers;
select*from products;
select*from sales;
select*from inventory;




--1)Select all data from customers
select*from customers;


--2).select total number of products from the products table
select sum(stock_quantity)as total_stock
from products;

--3)select the product name and price where price is > 500.
select product_id,product_name,price
from products
where price > 500
order by price desc;

--4)find the average price of all products
select avg(price)
from products;

--5)find total sales amount 
select sum(total_amount)
from sales;

--6)select distinct memership statuses (bronze)
select customer_id,first_name,registration_date ,membership_status
from customers
where membership_status = 'Bronze';

--7)Concantenate first and last name of all customers 
select concat(first_name,' ',last_name) as full_name
from customers;

--8). Find all products where category is Electronics
select product_id,product_name,category,price
from products
where category = 'Electronics'
order by price desc;

--9). Find the highest price 
select max(price) as highest_price
from products;

--(10). Count the number of sales for each product 
select sale_id,product_id, count(sale_id) as sale_count
from sales
group by sale_id ;

--11) total quantity sold for each product 

select s.sale_id, s.product_id,p. product_name,(s.quantity_sold)as total_sold
from sales s
join products p
on s.product_id=p.product_id
group by s.sale_id,p.product_name;

--12)Find the lowest price of products 
select product_id,product_name,category,min(price) as cheapest_productprice
from products
where price = 49.99
group by product_id;

--13). Find customers who purchased products with price > 1000
select c.customer_id,c.first_name,c.last_name,p.product_name,p.price,s.product_id 
from customers c
join sales s
on c.customer_id = s.customer_id
join products p 
on s.product_id = p.product_id
where price>1000
group by c.customer_id ,p.product_name,p.price,s.product_id;

--14)  Find product name and total sales amount

select p.product_id,p.product_name,s.total_amount
from products p
join sales s
on p.product_id=s.product_id;

--15). Find total amount spent by each customer
select c.customer_id,c.first_name,c.last_name,s.product_id,s.quantity_sold,s.total_amount
from customers c
join sales s
on c.customer_id = s.customer_id
group by c.customer_id ,s.product_id,s.total_amount,s.quantity_sold
order by customer_id asc;

--16).Show each customers first ,last name, productname,and quantity sold

select c.customer_id,c.first_name,c.last_name,s.product_id,p.product_name,s.quantity_sold,s.total_amount
from customers c
join sales s
on c.customer_id = s.customer_id
join products p 
on s.product_id = p.product_id
group by c.customer_id ,s.product_id,s.total_amount,s.quantity_sold,p.product_name
order by c.customer_id asc;

--17). Perform a self join on the customers table and find all pairs of customers who have the same membership status

SELECT 
    c1.customer_id as status_category,
    c1.first_name  ,
    c1.last_name  ,
    c2.customer_id ,
    c2.first_name ,
    c2.last_name ,
    c1.membership_status
FROM customers c1
JOIN customers c2
ON c1.membership_status = c2.membership_status
AND c1.customer_id < c2.customer_id;

--18). calculate the total number of sales for each product
select s.sale_id,s.product_id,p.product_name,count(s.sale_id) as totalsale_count
from sales s
join products p
on s.product_id=p.product_id
group by sale_id,p.product_name;

--19). Find products where the stock quantity is less than 10 (there is no product so i looked for less than 30)
select product_id,product_name,category,stock_quantity
from products
where stock_quantity < 30;

--20). Find products with sales grater then 5(there is no so i did > 2)
select p.product_id,p.product_name,s.quantity_sold,s.total_amount
from products p
join sales s
on p.product_id=s.product_id
where quantity_sold > 2;

--21). Select customers who have purchased products that are  in the 'Electronics' or 'Appliances' category(used or but can also use in)
select  c.customer_id,c.first_name,c.last_name,s.product_id,p.product_name,p.category
from customers c
join sales s
on c.customer_id = s.customer_id
join products p
on p.product_id = s.product_id
where p.category = 'Electronics' 
or   p.category ='Appliances';

--22) Calculate Total sales amount per product and group the result by product name 
select p.product_id,p.product_name,s.total_amount 
from products p
join sales s 
on p.product_id=s.product_id
group by p.product_name,p.product_id,s.total_amount;

--23) Select customers who made a purchase in the year 2023
select c.customer_id,c.first_name,c.last_name,p.product_id,p.product_name,s.sale_date
from customers c
join sales s
on c.customer_id=s.customer_id
join products p
on p.product_id=s.product_id
where extract(year from s.sale_date)=2023
order by sale_date asc;

--24) find customers with the highest total sales in 2023 
select c.customer_id,c.first_name,c.last_name,s.total_amount,s.sale_date
from customers c
join sales s 
on c.customer_id=s.customer_id
where extract(year from s.sale_date)=2023
order by s.total_amount desc;

--25) Select the most expensive product sold
select max(price)
from products;

select p.product_id,p.product_name,p.category,p.price ,s.quantity_sold,s.total_amount
from products p
join sales s 
on p.product_id=s.product_id
order by total_amount desc;

--26 ) Find the total number of customers who have purchased products worth more than 500

select count(total_amount) as totalcost_over
from sales 
where total_amount > 500;
--27) Find the total number of sales made by customers who are in the 'Gold'membership tier (error)

select c.first_name,c.last_name, c.membership_status,c.customer_id,s.sale_id 
from customers c
join sales  s
on s.customer_id=c.customer_id
where c.membership_status = 'Gold';

--28) Find all products that have low stock(less then 10)
select  product_id,product_name,category,stock_quantity
from products
where stock_quantity <30;

--29) Find customers who have purchased more than 5 products and show the total quantity of products bought
select c.customer_id,c.first_name,c.last_name,s.quantity_sold
from customers c 
join sales s 
on c.customer_id = s.customer_id
where s.quantity_sold >2;


--30) Find the average quantity sold per product
select avg(quantity_sold) as ave_sale
from sales;

--31) Find the number of sales made in the month of december 2023
select count(s.sale_id) as number_of sales
from sales s
where  sale_date between '2023-12-01' and '2023-12-31';

--32) Total amount spent by each customer in 2023 (descending)
SELECT c.customer_id,c.first_name,c.last_name,s.total_amount,s.sale_date,p.product_name
FROM customers c
JOIN sales s 
ON c.customer_id = s.customer_id
JOIN products p 
ON p.product_id = s.product_id
WHERE s.sale_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY c.customer_id, c.first_name, c.last_name,s.total_amount,s.sale_date,p.product_name
ORDER BY s.total_amount DESC;


--33. Products sold but with less than 5 units left in stock(did with less than 50)
SELECT DISTINCT p.product_id, p.product_name, p.stock_quantity
FROM products p
JOIN sales s 
ON p.product_id = s.product_id
WHERE p.stock_quantity < 50;


--34. Total sales for each product and order by highest sales
SELECT  p.product_id, p.product_name,SUM(s.quantity_sold * p.price) AS total_sales
FROM products p
JOIN sales s 
ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_sales DESC;

--35. Customers who bought within 7 days of registration
SELECT c.customer_id,c.first_name,c.last_name,s.sale_date,c.registration_date
FROM customers c
JOIN sales s
ON c.customer_id = s.customer_id
WHERE s.sale_date <= c.registration_date + INTERVAL '7 days';



--36. Join Sales and Products (price between 100 and 500)

SELECT 
    s.sale_id,
    p.product_name,
    p.price
FROM sales s
JOIN products p 
ON p.product_id = s.product_id
WHERE p.price BETWEEN 100 AND 500;

--37. Most frequent customer (most purchases)
SELECT 
    customer_id,
    COUNT(*) AS total_purchases
FROM sales
GROUP BY customer_id
ORDER BY total_purchases DESC
LIMIT 1;

--38. Total quantity sold per customer
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(s.quantity_sold) AS total_quantity
FROM customers c
JOIN sales s 
ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;

--39. Products with highest and lowest stock
(
SELECT product_id, product_name, stock_quantity
FROM products
ORDER BY stock_quantity DESC
LIMIT 1
)
UNION
(
SELECT product_id, product_name, stock_quantity
FROM products
ORDER BY stock_quantity ASC
LIMIT 1
);

--40. Products containing "Phone" and their total sales
SELECT 
    p.product_name,
    SUM(s.quantity_sold * p.price) AS total_sales
FROM products p
JOIN sales s 
ON p.product_id = s.product_id
WHERE p.product_name ILIKE '%phone%'
GROUP BY p.product_name;

--41. Gold customers with product names and total sales(innerjoin)
SELECT 
    c.first_name,
    c.last_name,
    p.product_name,
    c.membership_status,
    SUM(s.quantity_sold * p.price) AS total_sales
FROM customers c
JOIN sales s
ON c.customer_id = s.customer_id
JOIN products p 
ON p.product_id = s.product_id
WHERE c.membership_status = 'Gold'
GROUP BY c.first_name, c.last_name, p.product_name,c.membership_status;


--42. Total sales by category
SELECT 
    p.category,
    SUM(s.quantity_sold * p.price) AS total_sales
FROM products p
JOIN sales s 
on p.product_id = s.product_id
GROUP BY p.category;

--43. Total sales per product grouped by month and year
SELECT 
    p.product_name,
    EXTRACT(YEAR FROM s.sale_date) AS year,
    EXTRACT(MONTH FROM s.sale_date) AS month,
    SUM(s.quantity_sold * p.price) AS total_sales
FROM sales s
JOIN products p
ON p.product_id = s.product_id
GROUP BY p.product_name, year, month
ORDER BY year, month;

--44. Products sold but still in stock
SELECT 
    p.product_id,
    p.product_name,
    i.stock_quantity
FROM sales s
JOIN inventory i 
ON s.product_id = i.product_id
JOIN products p 
ON p.product_id = s.product_id
WHERE i.stock_quantity > 0;

--45. Top 5 customers with highest purchases
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(s.quantity_sold * p.price) AS total_spent
FROM customers c
JOIN sales s 
ON c.customer_id = s.customer_id
JOIN products p
ON p.product_id = s.product_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC
LIMIT 5;

--46. Total number of unique products sold in 2023
SELECT COUNT(DISTINCT product_id) AS unique_products
FROM sales
WHERE sale_date BETWEEN '2023-01-01' AND '2023-12-31';

--47. Products not sold in the last 6 months
SELECT product_id, product_name
FROM products
WHERE product_id NOT IN (
    SELECT product_id
    FROM sales
    WHERE sale_date >= CURRENT_DATE - INTERVAL '6 months'
);

--48. Products priced 200–800 with total quantity sold
SELECT 
    p.product_name,
    SUM(s.quantity_sold) AS total_quantity
FROM products p
JOIN sales s 
ON p.product_id = s.product_id
WHERE p.price BETWEEN 200 AND 800
GROUP BY p.product_name;

--49. Customers who spent the most in 2023
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(s.quantity_sold * p.price) AS total_spent
FROM customers c
JOIN sales s 
ON c.customer_id = s.customer_id
JOIN products p
ON p.product_id = s.product_id
WHERE s.sale_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC;

--50. Products sold more than 100 times and price > 200 (Lets try sold more than 2,price >200)
SELECT 
    p.product_id,
    p.product_name,
    SUM(s.quantity_sold) AS total_sold
FROM products p
JOIN sales s 
ON p.product_id = s.product_id
WHERE p.price > 200
GROUP BY p.product_id, p.product_name
HAVING SUM(s.quantity_sold) > 1;













































