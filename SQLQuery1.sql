Create DataBase Task1;
CREATE Table customers(
ID int,
NameC varchar(20),
Age int,
Gender varchar(1),
);

CREATE Table orders(
Ordernum int,
customer_name varchar(20),
Delivery_Date Date,
Delivery_Status Date,
 
);


CREATE Table Products(
Product_num int,
Product_name varchar(20),
Price float,
Date_Created Date,
 
);

CREATE Table Employees(
Emp_ID int,
Emp_Name varchar(20),
Salary float,
Age int,
Gender varchar(2),
);

Select * From Employees;
Select * From Products;
Select * From orders;
Select * From customers;