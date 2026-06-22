use amazonfresh;
select * from customers;
select * from orders;
select * from products;
select * from suppliers;
select * from order_details;


# task 3
select * from customers where city="South Ellenbury";
select * from products where category ="fruits";


# task 4 
alter table customers
MODIFY CUSTOMERid varchar(50) NOt null,                           # modified the id which was in text n den changed into primary key.
ADD CONSTRAINT pk_customerId    PRIMARY KEY(customerId);


# deleting data where age is 18 and less 
delete from customers where age =18;  # deleted the data 


# Alter column Age INt  not null check(age >18)
ALTER TABLE Customers
modify  COLUMN Age int NOT NULL ,
ADD CONSTRAINT chk_Age CHECK (Age > 18);


ALTER TABLE Customers 
MODIFY name VARCHAR(100) NOT NULL;


ALTER TABLE Customers
Add  constraint customerid unique(customerid);

 

