-- CUSTOMER
CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20) NOT NULL
);

-- COOK
CREATE TABLE Cook (
    cook_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    kitchen_location VARCHAR(150) NOT NULL
);

-- ADMIN
CREATE TABLE Admin (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- DELIVERY PERSON
CREATE TABLE Delivery_Person (
    delivery_person_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20)
);

-- MENU ITEM
CREATE TABLE Menu_Item (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    cook_id INT NOT NULL,
    FOREIGN KEY (cook_id) REFERENCES Cook(cook_id)
);

-- ORDERS
CREATE TABLE Orders_Table (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

-- ORDER ITEM
CREATE TABLE Order_Item (
    order_id INT,
    item_id INT,
    quantity INT,
    price_at_purchase DECIMAL(10,2),
    PRIMARY KEY (order_id, item_id),
    FOREIGN KEY (order_id) REFERENCES Orders_Table(order_id),
    FOREIGN KEY (item_id) REFERENCES Menu_Item(item_id)
);

-- REVIEW
CREATE TABLE Review (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    cook_id INT,
    rating INT,
    comment TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (cook_id) REFERENCES Cook(cook_id)
);

-- PAYMENT
CREATE TABLE Payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT UNIQUE,
    payment_method VARCHAR(50),
    amount DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders_Table(order_id)
);

-- DELIVERY
CREATE TABLE Delivery (
    delivery_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT UNIQUE,
    delivery_person_id INT,
    delivery_time DATETIME,
    FOREIGN KEY (order_id) REFERENCES Orders_Table(order_id),
    FOREIGN KEY (delivery_person_id) REFERENCES Delivery_Person(delivery_person_id)
);
