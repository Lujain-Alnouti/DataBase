CREATE Table customers_2(
ID int primary key,
NameC varchar(20),
Age int,
Gender varchar(1),
);

CREATE Table orders_1(
Ordernum int primary key,
customer_name varchar(20),
Delivery_Date Date,
Delivery_Status Date,
customer_id int foreign key references customers_2(ID),
Product_num int foreign key references Products_1(Product_num)
);



CREATE Table Products_1(
Product_num int primary key,
Product_name varchar(20),
Price float,
Date_Created Date,
);


select * from Products_1;
select * from orders_1;
select * from customers_2;

insert into customers_2 values (13,'lujain',22,'f'),(15,'noor',17,'f'),(18,'ahmad',10,'m');
insert into orders_1 values (1893,'rame','2022-09-05','2022-09-10',13,19994),(1875,'batool','2022-07-17','2022-09-15',13,1875),(1788,'haya','2022-03-08','2022-09-05',15,1788);
insert into Products_1 values (19994,'laptop',2022.6,'2002-09-05'),(1875,'mobile',555,'2022-09-05'),(1788,'mouse',80,'2022-09-05');

--inner join 
select customers_2.NameC , orders_1.Ordernum
from customers_2 inner join orders_1
on customers_2.ID=orders_1.customer_id;


--left join 
select customers_2.NameC , orders_1.Ordernum
from customers_2 left join orders_1
on customers_2.ID=orders_1.customer_id;

--right join 
select Products_1.Product_name , orders_1.Ordernum,customers_2.NameC
from Products_1
right join orders_1 on Products_1.Product_num=orders_1.Product_num
right join customers_2
on customers_2.ID=orders_1.customer_id;

--outer join
select * 
from Products_1
FULL OUTER JOIN orders_1 on Products_1.Product_num=orders_1.Product_num
FULL OUTER JOIN customers_2
on customers_2.ID=orders_1.customer_id;