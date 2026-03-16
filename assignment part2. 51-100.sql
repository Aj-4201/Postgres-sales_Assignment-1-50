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

-- 51. Which customers have spent more than the average spending of all customers?

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(s.total_amount) AS total_spent
FROM customers c
JOIN sales s
ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(s.total_amount) > (
    SELECT AVG(customer_total)
    FROM (
        SELECT SUM(total_amount) AS customer_total
        FROM sales
        GROUP BY customer_id
    ) AS avg_spending
);


-- 52. Which products are priced higher than the average price of all products?
SELECT 
    p.product_id,
    p.product_name,
    p.category,
    p.price
FROM products p
WHERE p.price > (
    SELECT AVG(price)
    FROM products
);

-- 53. Which customers have never made a purchase?
select c.customer_id, c.first_name,c.last_name,s.sale_id
from customers c
left join sales s
on c.customer_id=s.customer_id
where s.sale_id  is null;

-- 54. Which products have never been sold?
INSERT INTO products (product_id, product_name, category, price, supplier, stock_quantity)
VALUES (16, 'Laptop', 'Electronics', 1200, 'Dell', 15);

select p.product_id, p.product_name,s.sale_id
from products p
left join sales s
on p.product_id=s.product_id
where s.sale_id  is null;

-- 55. Which customer made the single most expensive purchase?
select s.customer_id,c.first_name,c.last_name,s.total_amount
from sales s
join customers c
on s.customer_id=c.customer_id
order by s.total_amount desc
limit 1 ;
    
-- 56. Which products have total sales greater than the average total sales across all products?
SELECT 
    p.product_name,
    SUM(s.quantity_sold) AS total_sales
FROM products p
JOIN sales s ON p.product_id = s.product_id
GROUP BY p.product_name
HAVING SUM(s.quantity_sold) > (
    SELECT AVG(product_totals.total)
    FROM (
        SELECT SUM(quantity_sold) AS total
        FROM sales
        GROUP BY product_id
    ) AS product_totals
);

-- 57. Which customers registered earlier than the average registration date? (i copied the dates then went to excel and changed them into number format so as to get the avg date)
--avg date being 30-11-22


SELECT c.registration_date, COUNT(*)
FROM customers c
GROUP BY c.registration_date 
HAVING COUNT(*) > 0
order by c.registration_date desc;

select c.first_name,c.last_name,c.registration_date
from customers c 
where c.registration_date < '2022-11-30';



-- 58. Which products have a price higher than the average price within their own category?
SELECT 
    p.product_id,
    p.product_name,
    p.category,
    p.price
FROM products p
WHERE p.price > (
    SELECT AVG(price)
    FROM products
    WHERE category = p.category
);

-- 59. Which customers have spent more than the customer with ID = 10?
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(s.total_amount) AS total_spent
FROM customers c
JOIN sales s
ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(s.total_amount) > (
    SELECT SUM(total_amount)
    FROM sales
    WHERE customer_id = 10
);

-- 60. Which products have total quantity sold greater than the overall average quantity sold?
SELECT AVG(quantity_sold)
    FROM sales;


SELECT 
    p.product_id,
    p.product_name,
    SUM(s.quantity_sold ) AS total_quantity_sold
FROM products p
JOIN sales s
ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(s.quantity_sold) > (
    SELECT AVG(quantity_sold)
    FROM sales
);

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     then determine which customers are the top 5 highest spenders.

    SELECT c.customer_id,c.first_name, c.last_name,s.total_amount
    FROM customers c
    JOIN sales s 
    ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name,s.total_amount
ORDER BY s.total_amount DESC
LIMIT 5;

-- 62. Create an intermediate result that calculates total quantity sold per product,
--     then determine which products are the top 3 most sold.

select p.product_id,p.product_name,p.category,s.quantity_sold
from products p
join sales s
on p.product_id = s.product_id
group by s.quantity_sold, p.product_id
order by s.quantity_sold desc 
limit 3;


-- 63. Create an intermediate result showing total sales per product category,
--     then determine which category generates the highest revenue.
with totalsales_percategoryy
as(select sum(s.quantity_sold) as total_saless,sum(s.total_amount) as total_reve,p.category
from sales s 
join products p
on s.product_id = p.product_id
group by p.category)
select t.category,t.total_saless,t.total_reve
from totalsales_percategoryy t
order by t.total_reve desc;

-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     then identify customers who purchased more than twice.
INSERT INTO sales (sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount)
VALUES
(16, 3, 2, 2, '2024-01-10', 2400),
(17, 3, 3, 1, '2024-01-12', 800),
(18, 2, 2, 4, '2024-01-15', 600),
(19, 7, 4, 3, '2024-01-18', 135),
(20, 4, 5, 5, '2024-01-20', 125);


with customer_purchase as(
select c.first_name,c.last_name, s.customer_id ,count(s.customer_id) as total_orders
from customers c
left join sales s
on c.customer_id = s.customer_id 
group by c.first_name,c.last_name,s.customer_id )
select cu.first_name,cu.last_name,cu.total_orders 
from customer_purchase cu
where cu.total_orders > 2
order by cu.total_orders desc;

-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     then determine which products sold more than the average quantity sold.
WITH product_quantity
AS (select p.product_name,SUM(s.quantity_sold) AS total_quantity
    FROM sales s
    left join products p
    on s.product_id=p.product_id
    GROUP BY p.product_name
)
SELECT *FROM product_quantity
WHERE total_quantity > (SELECT AVG(total_quantity)
 FROM product_quantity)
 order by total_quantity desc;

-- 66. Create an intermediate result that calculates total spending per customer,
--     then determine which customers spent more than the average spending.
WITH customer_spending
AS ( SELECT c.first_name,c.last_Name,s.customer_id,s.total_amount
    FROM sales s
    left join customers c
    on s.customer_id = c.customer_id
    GROUP BY s.customer_id,c.first_name,c.last_name,s.total_amount
)
SELECT *
FROM customer_spending 
where total_amount > (
    SELECT AVG(total_amount)
    FROM customer_spending)
order by total_amount desc;


-- 67. Create an intermediate result that calculates total revenue per product,
--     then list the products ordered from highest revenue to lowest.
WITH product_revenue 
AS (SELECT p.product_name,SUM(total_amount) AS revenue
    FROM sales s
    left join products p
    on s.product_id=p.product_id
    GROUP BY s.product_id,p.product_name)
SELECT *FROM product_revenue
ORDER BY revenue DESC;

-- 68. Create an intermediate result showing monthly sales totals,
--     then determine which month had the highest revenue.
WITH monthly_sales 
AS ( SELECT  extract(month from sale_date) AS month,SUM(total_amount) AS revenue
    FROM sales s
    GROUP BY month)
SELECT *FROM monthly_sales
ORDER BY revenue DESC
;

-- 69. Create an intermediate result that calculates the number of sales per product,
--     then determine which products were purchased by more than three customers.
INSERT INTO sales (sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount)
VALUES
(21, 4, 2, 5, '2024-01-20', 125);


WITH product_sales_count 
AS (SELECT  product_id,COUNT(*) AS sales_count
    FROM sales
    GROUP BY product_id
)
SELECT *
FROM product_sales_count
WHERE sales_count > 3;
-- 70. Create an intermediate result showing total quantity sold per product,
--     then identify products that sold less than the average quantity sold.
WITH product_quantity 
AS (SELECT  product_id,SUM(quantity_sold) AS total_quantity
    FROM sales
    GROUP BY product_id
)
SELECT *
FROM product_quantity
WHERE total_quantity < (
    SELECT AVG(total_quantity)
    FROM product_quantity
);

-- 71. Rank customers based on the total amount they have spent.
SELECT c.customer_id,c.first_name,c.last_name, SUM(s.total_amount) AS total_spent, RANK() 
OVER (ORDER BY SUM(s.total_amount) DESC) AS spending_rank
FROM customers c
JOIN sales s 
ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;


-- 72. Rank products based on total quantity sold.
SELECT  p.product_id, p.product_name, SUM(s.quantity_sold)AS total_quantity,RANK() 
OVER (ORDER BY SUM(s.quantity_sold) DESC)  AS quantity_rank
FROM products p
JOIN sales s 
ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name;


-- 73. Identify the 3rd highest spending customer.
WITH ranked_customers as
( SELECT  c.customer_id,c.first_name,c.last_name, SUM(s.total_amount)                              AS total_spent,
        DENSE_RANK() OVER (ORDER BY SUM(s.total_amount) DESC) AS spending_rank
    FROM customers c
    JOIN sales s 
    ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT * FROM ranked_customers
WHERE spending_rank = 3;



-- 74. Identify the 2nd most expensive product.
with second_highest as(select p.product_id,p.product_name,p.price,
dense_rank() over 
(order by p.price desc)as price_rank
from products p
group by p.product_name,p.product_id)
select*from second_highest
where price_rank = '2';

-- 75. Show the ranking of products within each category based on price.
SELECT  product_id, product_name, category, price, RANK() over
(PARTITION BY category ORDER BY price DESC) AS price_rank_in_category
FROM products;

-- 76. Show the ranking of customers based on the number of purchases they made.
SELECT c.customer_id,c.first_name,c.last_name,COUNT(s.sale_id)AS purchase_count,dense_rank() OVER (ORDER BY COUNT(s.sale_id) DESC)  AS purchase_rank
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;


-- 77. Show the running total of sales amounts ordered by sale_date.
SELECT sale_id,sale_date,total_amount,SUM(total_amount) over
(ORDER BY sale_date ) AS running_total
FROM sales;


-- 78. Show the previous sale amount for each sale ordered by sale_date.
SELECT sale_id,sale_date,total_amount, LAG(total_amount) OVER 
(ORDER BY sale_date desc) AS previous_sale_amount
FROM sales;


-- 79. Show the next sale amount for each sale ordered by sale_date.
SELECT sale_id,sale_date,total_amount, LEAD(total_amount) over
(ORDER BY sale_date) AS next_sale_amount
FROM sales;

-- 80. Divide customers into 4 groups based on total spending.
WITH customer_spending as
(SELECT  c.customer_id, c.first_name,c.last_name,SUM(s.total_amount) AS total_spent
    FROM customers c
    JOIN sales s 
    ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT customer_id,first_name,last_name,total_spent,NTILE(4)
OVER (ORDER BY total_spent DESC) AS spending_group
FROM customer_spending;

-- 81. Which customers bought products in more than one category?
SELECT  c.customer_id,c.first_name, c.last_name,COUNT(DISTINCT p.category) AS categories_purchased
FROM customers c
JOIN sales s    
ON c.customer_id = s.customer_id
JOIN products p  
ON s.product_id  = p.product_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(DISTINCT p.category) > 1;

-- 82. Which customers purchased products within 7 days of registering?
SELECT  c.customer_id, c.first_name, c.last_name,c.registration_date, s.sale_date
FROM customers c
JOIN sales s
ON c.customer_id = s.customer_id
WHERE s.sale_date 
BETWEEN c.registration_date 
AND c.registration_date + INTERVAL '7 days';


-- 83. Which products have lower stock remaining than the average stock quantity?
SELECT  product_id, product_name, stock_quantity
FROM products
WHERE stock_quantity < (SELECT AVG(stock_quantity) FROM products
);


-- 84. Which customers purchased the same product more than once?
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    p.product_name,
    COUNT(s.sale_id) AS times_purchased
FROM customers c
JOIN sales s    ON c.customer_id = s.customer_id
JOIN products p ON s.product_id  = p.product_id
GROUP BY c.customer_id, c.first_name, c.last_name, p.product_name
HAVING COUNT(s.sale_id) > 1;

-- 85. Which product categories generated the highest total revenue?
with category_totalrev as (
select p.category,sum(s.total_amount)as total_rev
from products p
join sales s
on p.product_id = s.product_id
group by p.category)
select*from category_totalrev 
order by total_rev desc;

-- 86. Which products are among the top 3 most sold products?
WITH ranked_products AS (
    SELECT 
        p.product_id,
        p.product_name,
        SUM(s.quantity_sold)                             AS total_sold,
        DENSE_RANK() OVER (ORDER BY SUM(s.quantity_sold) DESC) AS sales_rank
    FROM products p
    JOIN sales s ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT * FROM ranked_products
WHERE sales_rank <= 3;


-- 87. Which customers purchased the most expensive product?
SELECT distinct c.customer_id, c.first_name, c.last_name,p.price
FROM customers c
JOIN sales s    
ON c.customer_id = s.customer_id
JOIN products p
ON s.product_id  = p.product_id
WHERE p.price = (SELECT MAX(price) FROM products);


-- 88. Which products were purchased by the highest number of unique customers?
SELECT p.product_id,p.product_name,COUNT(DISTINCT s.customer_id) AS unique_customers, dense_rank() OVER (ORDER BY COUNT(DISTINCT s.customer_id) DESC)  AS customer_reach_rank
FROM products p
JOIN sales s 
ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name;


-- 89. Which customers made purchases above the average sale amount?
select  c.customer_id,c.first_name,c.last_name,s.quantity_sold 
from customers c
join sales s
on c.customer_id=s.customer_id
where s.quantity_sold >(select
avg(s.quantity_sold) from sales s
group by c.customer_id );


SELECT distinct  c.customer_id, c.first_name, c.last_name
FROM customers c
JOIN sales s 
ON c.customer_id = s.customer_id
WHERE s.quantity_sold > (
    SELECT AVG(quantity_sold) FROM sales
);


-- 90. Which customers purchased more products than the average quantity purchased per customer?
select avg(s.quantity_sold )from sales s;
select c.customer_id,c.first_name,c.last_name,s.quantity_sold,(s.quantity_sold - 2) as difference
from customers c
left join sales s
on c.customer_id = s.customer_id
where s.quantity_sold >(select avg(quantity_sold) from sales s
group by c.customer_id)
order by quantity_sold desc;



-- 91. Which customers rank in the top 10% of spending?
with top_ten as
( select c.customer_id,c.first_name,c.last_name,s.total_amount,NTILE(10) OVER (ORDER BY SUM(s.total_amount) DESC) as ten_highest
from customers c
 join sales s
on c.customer_id = s.customer_id
group by c.customer_id,s.total_amount)
select*from top_ten 
where ten_highest =' 1';



-- 92. Which products contribute to the top 50% of total revenue?
WITH product_revenue as
(  SELECT   p.product_id, p.product_name,SUM(s.total_amount) AS total_revenue
    FROM products p
    JOIN sales s 
    ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
),
revenue_with_cumulative AS (
    SELECT *,
        SUM(total_revenue) OVER (ORDER BY total_revenue DESC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS cumulative_revenue,
        SUM(total_revenue) OVER () AS grand_total
    FROM product_revenue
)
SELECT  product_id, product_name, total_revenue, ROUND((cumulative_revenue / grand_total) * 100, 2) AS cumulative_pct
FROM revenue_with_cumulative
WHERE (cumulative_revenue - total_revenue) / grand_total < 0.50;

-- 93. Which customers made purchases in consecutive months?
INSERT INTO sales (sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount)
values
(22, 4, 2, 5, '2024-01-20', 1200),
(23, 4, 3, 3, '2024-02-20', 1200);

WITH customer_months AS (
    SELECT DISTINCT
        customer_id,
        DATE_TRUNC('month', sale_date)                          AS purchase_month
    FROM sales
),
with_next_month AS (
    SELECT *,
        LEAD(purchase_month) OVER (PARTITION BY customer_id 
                                   ORDER BY purchase_month)     AS next_month
    FROM customer_months
)
SELECT DISTINCT customer_id
FROM with_next_month
WHERE next_month = purchase_month + INTERVAL '1 month';


-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?
SELECT  p.product_id,  p.product_name,p.stock_quantity, SUM(s.quantity_sold)AS total_sold, p.stock_quantity - SUM(s.quantity_sold)AS stock_gap
FROM products p
JOIN sales s
ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name, p.stock_quantity
ORDER BY stock_gap DESC;

-- 95. Which customers have spending above the average spending of their membership tier?
WITH tier_spending as 
(SELECT  c.customer_id, c.first_name, c.last_name, c.membership_status, SUM(s.total_amount) AS total_spent
    FROM customers c
    JOIN sales s 
    ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name, c.membership_status
),
tier_averages AS 
( SELECT membership_status, AVG(total_spent) AS avg_tier_spending
    FROM tier_spending
    GROUP BY membership_status
)
SELECT  ts.customer_id, ts.first_name, ts.last_name, ts.membership_status, ts.total_spent, ta.avg_tier_spending
FROM tier_spending ts
JOIN tier_averages ta 
ON ts.membership_status = ta.membership_status
WHERE ts.total_spent > ta.avg_tier_spending;


-- 96. Which products have higher sales than the average sales within their category?
with sale_dataa as 
(select p.product_id,p.product_name,p.category,sum(s.quantity_sold) as total_sales
from products p
join sales s
on p.product_id = s.product_id 
group by p.category,p.product_id
),
category_ave as 
(select sd.category,avg(sd.total_sales) as avgsale_category
from sale_dataa  sd
group by sd.category)
select sd.product_name,sd.category,sd.total_sales,ca.avgsale_category
from sale_dataa sd
join category_ave ca
on sd.category = ca.category
where sd.total_sales > ca.avgsale_category 
order by total_sales desc ;





-- 97. Which customer made the largest single purchase relative to their total spending?
WITH customer_totals AS 
(SELECT  customer_id,SUM(total_amount) AS total_spent
    FROM sales
    GROUP BY customer_id
),
single_purchases AS (
    SELECT 
        s.customer_id,
        s.sale_id,
        s.total_amount                                      AS single_purchase,
        ct.total_spent,
        ROUND((s.total_amount / ct.total_spent) * 100, 2)  AS purchase_pct
    FROM sales s
    JOIN customer_totals ct ON s.customer_id = ct.customer_id
)
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    sp.sale_id,
    sp.single_purchase,
    sp.total_spent,
    sp.purchase_pct
FROM single_purchases sp
JOIN customers c ON sp.customer_id = c.customer_id
ORDER BY sp.purchase_pct DESC
LIMIT 1;

-- 98. Which products rank among the top 3 most sold products within each category?
WITH category_product_sales AS (
    SELECT 
        p.category,
        p.product_id,
        p.product_name,
        SUM(s.quantity_sold)AS total_sold,
        DENSE_RANK() OVER (PARTITION BY p.category 
                           ORDER BY SUM(s.quantity_sold) DESC) AS category_rank
    FROM products p
    JOIN sales s ON p.product_id = s.product_id
    GROUP BY p.category, p.product_id, p.product_name
)
SELECT * FROM category_product_sales
WHERE category_rank <= 3;

-- 99. Which customers are tied for the highest total spending?
WITH customer_spending AS (
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        SUM(s.total_amount) AS total_spent
    FROM customers c
    JOIN sales s ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT * FROM customer_spending
WHERE total_spent = (SELECT MAX(total_spent) FROM customer_spending);

-- 100. Which products generated sales every year present in the dataset?
WITH yearly_sales AS (
    SELECT DISTINCT
        product_id,
        EXTRACT(YEAR FROM sale_date) AS sale_year
    FROM sales
),
total_years AS (
    SELECT COUNT(DISTINCT EXTRACT(YEAR FROM sale_date)) AS year_count
    FROM sales
)
SELECT 
    p.product_id,
    p.product_name,
    COUNT(DISTINCT ys.sale_year) AS years_active
FROM products p
JOIN yearly_sales ys     ON p.product_id = ys.product_id
CROSS JOIN total_years ty
GROUP BY p.product_id, p.product_name, ty.year_count
HAVING COUNT(DISTINCT ys.sale_year) = ty.year_count;
