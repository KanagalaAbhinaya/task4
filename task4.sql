CREATE TABLE sales (
  order_id INT,
  product_line VARCHAR(50),
  units INT,
  unit_price DECIMAL(10,2),
  total DECIMAL(10,2)
);

INSERT INTO sales VALUES
(1, 'Electronics', 5, 99.99, 499.95),
(2, 'Electronics', 3, 129.99, 389.97),
(3, 'Furniture', 10, 299.50, 2995.00),
(4, 'Furniture', 2, 499.00, 998.00),
(5, 'Clothing', 20, 19.99, 399.80);

SELECT
  product_line,
  SUM(units) AS total_units,
  SUM(total) AS total_sales,
  AVG(unit_price) AS avg_price
FROM sales
GROUP BY product_line;

SELECT
  product_line,
  SUM(units) AS total_units,
  SUM(total) AS total_sales,
  AVG(unit_price) AS avg_price
FROM sales
GROUP BY product_line
HAVING SUM(total) >= 1000;

SELECT
  product_line,
  COUNT(order_id) AS num_orders
FROM sales
GROUP BY product_line
HAVING COUNT(order_id) > 1;

SELECT 
  product_line,
  SUM(units) AS total_units
FROM sales
WHERE units >= 5
GROUP BY product_line
HAVING SUM(units) > 10; 