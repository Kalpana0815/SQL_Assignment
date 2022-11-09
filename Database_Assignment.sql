




CREATE database Hotel_Management_System;

<---------------------------------------------------------------------->
Use Hotel_Management_System;
<----------------------------------------------------------------------->
CREATE TABLE Customers(Cust_ID int(10) NOT NULL,Cust_Name Varchar(25),Cust_City Varchar(30),
Cust_RoomNo int(10),Checkin_Time datetime);customers

<---------------------------------------------------------------------->
Insert into Customers(Cust_ID,Cust_Name,Cust_City,Cust_RoomNo,Checkin_Time)Values
(100,'Robinson','Edison',202,'2022-06-24 12:10:00'),
(101,'Eli','Robbinsvile',465,'2022-06-29 1:00:00'),
(103,'Raphael','Allentown',502,'2021-07-30 6:55:00'),
(104,'Aubrey','Princeton',567,'2022-08-24 7:15:00'),
(105,'Sarah','Plainsboro',234,'2020-09-27 6:10:00');

<------------------------------------------------------->

select * from Customers;


<-------------------------------------------------------->

Use assignment;

Select * from Customers;


<------------------------------------------------>
Select Distinct count(City) from Customers;
Select Distinct City from Customers;


<----------------------------------------------------->
Select * from Order_details;


<------------------------------------------------------------>

Select MIN(Quantity) as min_quantity from Order_details;
Select MAX(Quantity) as max_quantity from Order_details;



<-------------------------------------------------------------->
Select SUM(Quantity) as total_quantity from Order_details;
Select AVG(Quantity) as avg_quantity from Order_details;

<--------------------------------------------------------------------->
Select * from Products;
Select ProductName , ProductID from Products where ProductID >= 5 and ProductID <= 15 limit 11;

<------------------------------------------------------------------->
Select * from suppliers;
Select SupplierName from suppliers where SupplierName like '_a%';

<--------------------------------------------------------------------------->

Select * from customers where NOT Country = 'USA'and NOT Country = 'Canada';

<-------------------------------------------------------------------->

select order_details.* 
from 
order_details,
orders
where
orders.orderid = order_details.orderid 
and
 DATE(orderdate) between "2020-01-01" AND "2021-01-01"
ORDER BY order_details.Orderid DESC ;


<-------------------------------------------------------->

select Count(DISTINCT city) from customers;


<----------------------------------------------->
select * from employees; 
Select * from employees where NOT  firstname ='Sanjay' and NOT firstname = 'Sonia';


<------------------------------------------>
Create table SupplierDetail LIKE suppliers;
Insert Into SupplierDetail Select * from suppliers;


<---------------------------------->
DELETE FROM Customers
WHERE country = 'venezuela';
select * from customers;




