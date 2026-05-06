

## 📌 Project Overview

SmartFoodSystem is a relational database project designed to simulate a smart food ordering and delivery platform. The system manages customers, cooks, menu items, orders, payments, delivery, and reviews in a structured and normalized database.

This project was built using **MySQL** and demonstrates key database concepts such as:

* Entity Relationship Modeling (ERD)
* Primary & Foreign Keys
* One-to-Many & Many-to-Many relationships
* Weak entities
* Data integrity constraints

---

## 🏗️ Database Design

The system includes the following main entities:

### 👤 Customer

Stores customer information such as name, email, and phone.

### 👨‍🍳 Cook

Represents cooks who prepare food items and manage kitchens.

### 🛠️ Admin

Manages system-level information.

### 🚚 Delivery Person

Handles order deliveries.

### 🍔 Menu Item

Food items created by cooks with price and description.

### 📦 Orders

Represents customer orders.

### 🍽️ Order Item (Weak Entity)

Links orders and menu items with quantity and purchase price.

### ⭐ Review

Customers can rate and review cooks.

### 💳 Payment

Stores payment details for each order.

### 🚚 Delivery

Tracks delivery status and assigned delivery person.

---

## 🔗 Relationships

* A **Customer** can place multiple **Orders**
* A **Cook** can create multiple **Menu Items**
* An **Order** contains multiple **Order_Items**
* Each **Order_Item** links to one **Menu_Item**
* A **Payment** is linked to one **Order**
* A **Delivery** is assigned to one **Order**
* A **Delivery Person** can handle multiple deliveries
* Customers can leave **Reviews** for cooks

---

## 🧾 SQL Implementation

The full SQL script includes:

* Database creation
* Table creation with constraints
* Primary keys & auto-increment IDs
* Foreign key relationships
* Unique constraints for payment and delivery

👉 Full SQL file: `sql-code.txt`

---

## 🧪 How to Run the Project

### 1. Open MySQL environment

(e.g., MySQL Workbench, XAMPP, phpMyAdmin)

### 2. Create and select database

```sql
CREATE DATABASE SmartFoodSystem;
USE SmartFoodSystem;
```

### 3. Run the SQL script

Execute all table creation queries in order.

### 4. Verify tables

```sql
SHOW TABLES;
```

---

## ⚠️ Common Issues & Fixes

* Ensure foreign key tables are created first
* Use **InnoDB engine** for foreign key support
* Avoid reserved keywords like `Orders`
* Ensure correct execution order of tables

---

## 💡 Key Features

✔ Relational database design
✔ Real-world food ordering system simulation
✔ Strong data integrity constraints
✔ Scalable architecture
✔ Academic-level project structure

---

## 📊 Future Improvements

* Add restaurant management system
* Add discount & coupon system
* Add real-time order tracking
* Add user authentication system
* Connect database to a web application

---

## 👩‍💻 Author

**Mariem Mrabet**
Software Engineering Student – Haliç University
Skills: Java | Python | C++ | SQL

---

## 📜 License

This project is developed for academic purposes.
