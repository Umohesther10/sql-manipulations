USE `sql_store`;
SELECT  * from order_items;
ALTER TABLE order_items
ADD COLUMN total_price DECIMAL (10,2) NOT NULL;
UPDATE order_items SET total_price= unit_price*quantity WHERE order_id =6;
SELECT * FROM order_items WHERE order_id = 6 and total_price > 30;

SELECT order_id, name, quantity, total_price FROM order_items JOIN products ON order_items.product_id=products.product_id WHERE order_id = 6 AND total_price > 30;
SELECT * FROM products;
SELECT name, quantity_in_stock FROM products WHERE quantity_in_stock = 49 OR quantity_in_stock = 38 OR quantity_in_stock = 72;