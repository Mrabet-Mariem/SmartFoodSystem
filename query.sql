-- Show all customers
SELECT * FROM Customer;

-- Show orders with customer names
SELECT c.name, o.order_id, o.status
FROM Customer c
JOIN Orders_Table o ON c.customer_id = o.customer_id;

-- Show total amount per order
SELECT order_id, SUM(quantity * price_at_purchase) AS total
FROM Order_Item
GROUP BY order_id;

-- Show menu items with cooks
SELECT m.name, m.price, c.name AS cook_name
FROM Menu_Item m
JOIN Cook c ON m.cook_id = c.cook_id;

-- Update order status
UPDATE Orders_Table
SET status = 'Delivered'
WHERE order_id = 2;

-- Delete a review (example)
DELETE FROM Review
WHERE review_id = 1;
