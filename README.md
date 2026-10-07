# DataDigger – SQL Database Project

##  Project Overview

DataDigger is a MySQL database project created to manage and analyze customer, order, product, and order detail data.

This project demonstrates how SQL can be used to create tables, insert and manage data, connect multiple tables, and perform useful data analysis.

---

## Database Tables

The project contains four main tables:

### 1. Customers
Stores customer information such as:
- Customer ID
- Name
- Email
- Address

### 2. Orders
Stores information about customer orders:
- Order ID
- Customer ID
- Order Date
- Total Amount

### 3. Products
Stores product information:
- Product ID
- Product Name
- Price
- Stock

### 4. OrderDetails
Stores details about products included in each order:
- Order Detail ID
- Order ID
- Product ID
- Quantity
- SubTotal

---

##  Database Relationships

The tables are connected using Primary Keys and Foreign Keys.

```text
Customers
    │
    │ CustomerID
    ▼
  Orders
    │
    │ OrderID
    ▼
OrderDetails
    │
    │ ProductID
    ▼
 Products
