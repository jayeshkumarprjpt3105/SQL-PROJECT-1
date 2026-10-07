create database datadigger;
use datadigger;
create table  Customers (
customerID int PRIMARY KEY,
name varchar(100),
email varchar(100),
address varchar(100));
select*from Customers;
insert into Customers
(customerID, name, email, address) values
(1, 'jayesh','jayesh@gmail.com', 'kachholi'),
(2, 'naman', 'naman@gmail.com', 'mumbai'),
(3, 'ram', 'ram@gmail.com', 'surat'),
(4, 'rajesh', 'rajesh@gmail.com', 'mumbai'),
(5, 'himesh', 'himesh@gmail.com', 'surat');
select*from customers;
update customers
set address='rj'
where customerID=1;
select*from customers where customerID=1;
delete from customers
where customerID=1;
select*from customers;
select*from customers
where name ='rajesh';
create table Orders (
orderID int primary key,
CustomerID int,
orderdate date,
totalAmount Decimal(10,2),
foreign key(customerID)
  references customers(customerID));
insert into orders
(orderID,customerID,orderdate,totalamount) values
(101,3,'2026-09-22',2500),
(102,2,'2026-09-20',1500),
(103,3,'2026-09-15',3200),
(104,4,'2026-09-15',1800),
(105,5,'2026-08-10',4500);
select*from orders;
create table  Products (
ProductID int primary key ,
ProductName varchar (100),
price decimal (10,2),
stock int);
insert into Products
(ProductID, ProductName, Price, Stock)
values
(201, 'Laptop', 55000, 10),
(202, 'Mouse', 800, 50),
(203, 'Keyboard', 1500, 30),
(204, 'Headphones', 2000, 0),
(205, 'Monitor', 12000, 15),
(206, 'USB Cable', 500, 100);
select*from  Products;
create table  OrderDetails (
OrderDetailID  int primary key,
OrderID int,
ProductID int,
Quantity int,
SubTotal decimal(10,2),

foreign key(OrderID)
 references Orders(OrderID),
 
 foreign key (ProductID)
 references Products(ProductID));
insert into OrderDetails
(OrderDetailID, OrderID, ProductID, Quantity, SubTotal)
values
(1, 101, 201, 1, 55000),
(2, 101, 202, 2, 1800),
(3, 102, 203, 3, 4500),
(4, 103, 202, 5, 4500),
(5, 104, 205, 1, 12000);
select*from OrderDetails;
select* from  Products
order by price desc;
update Products
SET Price = 900
WHERE ProductID = 202;
select*from Products
WHERE ProductID = 202;
SELECT *
FROM Products
WHERE Price BETWEEN 500 AND 2000;
select MAX(Price) AS Most_Expensive,
       MIN(Price) AS Cheapest
from  Products;
select *
from OrderDetails
where OrderID = 101;
select sum(SubTotal) AS Total_Revenue
from OrderDetails;
select ProductID,
       SUM(Quantity) AS Total_Quantity
from OrderDetails
group by ProductID
order by Total_Quantity desc
limit 3;
select p.ProductID,
       p.ProductName,
       sum(od.Quantity) AS Total_Quantity
from OrderDetails od
inner join Products p
    ON od.ProductID = p.ProductID
group by p.ProductID, p.ProductName
order by Total_Quantity desc
limit 3;
select count(*) AS Times_Sold
from OrderDetails
where ProductID = 202;
select sum(Quantity) AS Total_Units_Sold
from OrderDetails
where ProductID = 202
group by ProductID;
select
    c.Name,
    o.OrderID,
    o.OrderDate,
    p.ProductName,
    od.Quantity,
    od.SubTotal
from customers c
inner join Orders o
    ON c.customerID = o.customerID
inner join OrderDetails od
    ON o.OrderID = od.OrderID
inner join Products p
    ON od.ProductID = p.ProductID;
	select*from Customers;
    select*from Orders;
    select*from Products;
    select*from OrderDetails;
    select
    c.Name,
    o.OrderID,
    o.OrderDate,
    p.ProductName,
    od.Quantity,
    od.SubTotal
from customers c
inner join Orders o
    ON c.customerID = o.customerID
inner join OrderDetails od
    ON o.OrderID = od.OrderID
inner join Products p
    ON od.ProductID = p.ProductID;
    
    
    