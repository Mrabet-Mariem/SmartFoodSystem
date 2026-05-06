INSERT INTO Customer (name, email, phone) VALUES
('Ali', 'ali@email.com', '123456'),
('Sara', 'sara@email.com', '987654');

INSERT INTO Cook (name, kitchen_location) VALUES
('Chef Ahmed', 'Istanbul'),
('Chef Lina', 'Ankara');

INSERT INTO Menu_Item (name, price, cook_id) VALUES
('Pizza', 50, 1),
('Burger', 40, 2);

INSERT INTO Orders_Table (customer_id, order_date, status) VALUES
(1, '2026-05-01', 'Delivered'),
(2, '2026-05-02', 'Pending');

INSERT INTO Order_Item (order_id, item_id, quantity, price_at_purchase) VALUES
(1, 1, 2, 50),
(2, 2, 1, 40);

INSERT INTO Delivery_Person (name, phone) VALUES
('John', '55555');

INSERT INTO Delivery (order_id, delivery_person_id, delivery_time) VALUES
(1, 1, '2026-05-01 18:00:00');

INSERT INTO Payment (order_id, payment_method, amount) VALUES
(1, 'Credit Card', 100);
