SELECT * FROM amazon.products;

# task 5 Insert 3 new rows into the Products table using INSERT statements.
Insert into products values 
('hhjhj-yhuj','FRESHFRUITS','Fruits','Sub-Fruits-5',320,40,null),
('Thyybbn-derxcdesx','Nandhini_diary','Diary','Sub-diary-5',750,220,'67hyjkiyblop-sawer'),
('345swerrfvb-mnby','sLG-BAKERY','sUB_BAKERY-5' ,330, 55,890,'bertyhksswq-pldfq');


 #  Task 6  Update the stock quantity of a product where ProductID matches a specific ID
 
 update products set Stockquantity=550 
 where productid='2aa28375-c563-41b5-aa33-8e2c2e0f4db9';
 
  # Task 7 Delete a supplier from the Suppliers table where their city matches a specific value.
select * from suppliers;
 
 Delete from suppliers where city="hullberg";
 
 # task8 Add a CHECK constraint to ensure that ratings in the Reviews table are between 1 and 5.
 select * from reviews;
 
 ALTER TABLE reviews
ADD CONSTRAINT  chk_rating Check (Rating between 1 and 5);


 # task 8 ○	Add a DEFAULT constraint for the PrimeMember column in the Customers table (default value: "No").
 Alter table customers
MODIFY PrimeMember VARCHAR(10) DEFAULT 'No';
