INSERT INTO Customer (name, email, phone) VALUES
('Mariem Mrabet', 'mariem1@gmail.com', '555111111'),
('Ahmed Ben Ali', 'ahmed@gmail.com', '555111112'),
('Sara Yilmaz', 'sara@gmail.com', '555111113'),
('Omar Hassan', 'omar@gmail.com', '555111114'),
('Leyla Demir', 'leyla@gmail.com', '555111115'),
('Khaled Trabelsi', 'khaled@gmail.com', '555111116'),
('Yasmine Haddad', 'yasmine@gmail.com', '555111117'),
('Ali Korkmaz', 'ali@gmail.com', '555111118');

INSERT INTO Cook (name, kitchen_location) VALUES
('Chef Amina', 'Istanbul - Kadikoy'),
('Chef Youssef', 'Istanbul - Besiktas'),
('Chef Lina', 'Istanbul - Sisli'),
('Chef Karim', 'Istanbul - Fatih'),
('Chef Selin', 'Istanbul - Uskudar'),
('Chef Hakan', 'Istanbul - Taksim'),
('Chef Nadia', 'Istanbul - Avcilar'),
('Chef Emre', 'Istanbul - Maltepe');


INSERT INTO Admin (name, email) VALUES
('Admin One', 'admin1@system.com'),
('Admin Two', 'admin2@system.com'),
('Admin Three', 'admin3@system.com'),
('Admin Four', 'admin4@system.com'),
('Admin Five', 'admin5@system.com'),
('Admin Six', 'admin6@system.com'),
('Admin Seven', 'admin7@system.com'),
('Admin Eight', 'admin8@system.com');

INSERT INTO Delivery_Person (name, phone) VALUES
('Mehmet Kaya', '500111001'),
('John Smith', '500111002'),
('Fatma Nur', '500111003'),
('Carlos Diaz', '500111004'),
('Elif Yildiz', '500111005'),
('Sami Ben', '500111006'),
('Zeynep Acar', '500111007'),
('Lucas Martin', '500111008');



INSERT INTO Menu_Item (name, price, cook_id) VALUES
('Kebab', 150.00, 1),
('Lahmacun', 80.00, 2),
('Baklava', 120.00, 3),
('Manti', 100.00, 4),
('Pide', 90.00, 5),
('Sarma', 70.00, 6),
('Kofte', 110.00, 7),
('Kunefe', 130.00, 8);


INSERT INTO Orders_Table (customer_id, order_date, status) VALUES
(1, '2026-05-01', 'Delivered'),
(2, '2026-05-01', 'Pending'),
(3, '2026-05-02', 'Delivered'),
(4, '2026-05-02', 'Cancelled'),
(5, '2026-05-03', 'Delivered'),
(6, '2026-05-03', 'Pending'),
(7, '2026-05-04', 'Delivered'),
(8, '2026-05-04', 'Processing');



INSERT INTO Order_Item (order_id, item_id, quantity, price_at_purchase) VALUES
(1, 1, 2, 150.00),
(2, 2, 1, 80.00),
(3, 3, 3, 120.00),
(4, 4, 1, 100.00),
(5, 5, 2, 90.00),
(6, 6, 1, 70.00),
(7, 7, 2, 110.00),
(8, 8, 1, 130.00);

INSERT INTO Review (customer_id, cook_id, rating, comment) VALUES
(1, 1, 5, 'Amazing food!'),
(2, 2, 4, 'Very tasty'),
(3, 3, 5, 'Best dessert ever'),
(4, 4, 3, 'Good but slow'),
(5, 5, 5, 'Perfect quality'),
(6, 6, 4, 'Nice flavor'),
(7, 7, 5, 'Excellent'),
(8, 8, 5, 'Outstanding Kunefe');


INSERT INTO Payment (order_id, payment_method, amount) VALUES
(1, 'Card', 300.00),
(2, 'Cash', 80.00),
(3, 'Card', 360.00),
(4, 'Cash', 100.00),
(5, 'Card', 180.00),
(6, 'Card', 70.00),
(7, 'Cash', 220.00),
(8, 'Card', 130.00);

INSERT INTO Delivery (order_id, delivery_person_id, delivery_time) VALUES
(1, 1, '2026-05-01 13:00:00'),
(2, 2, '2026-05-01 14:00:00'),
(3, 3, '2026-05-02 12:30:00'),
(4, 4, '2026-05-02 15:00:00'),
(5, 5, '2026-05-03 13:45:00'),
(6, 6, '2026-05-03 16:10:00'),
(7, 7, '2026-05-04 18:00:00'),
(8, 8, '2026-05-04 19:30:00');
