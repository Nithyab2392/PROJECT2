SELECT * FROM amazon.customers;

#  Task9 WHERE clause to find orders placed after 2024-01-01.ordersorders
select * from orders;
select * from order_details;

select * from orders where OrderDate > 2024-01-01;
 # ○	HAVING clause to list products with average ratings greater than 4.
 select * from reviews;
  Select Customerid,rating, reviewText from reviews
  having rating >4;
   
   
   
# 	GROUP BY and ORDER BY clauses to rank products by total sales.
select Orderid,  max(Quantity * UnitPrice * (1 - Discount/100)) as Totalsales from order_details group by Orderid order by totalsales desc;

# task 10

# 1.	Calculate each customer's total spending. Rank customers based on their spending.

SELECT c.CustomerID,
       c.Name,
       Totalamtspent,
       RANK() OVER (ORDER BY Totalamtspent DESC) AS `Rank`
FROM (
    SELECT o.CustomerID,
           max((o.OrderAmount + o.DeliveryFee) * (1 - o.DiscountApplied/100)) AS Totalamtspent
    FROM Orders o
    GROUP BY o.CustomerID
) AS CustomerTotals
JOIN Customers c
  ON c.CustomerID = CustomerTotals.CustomerID;
 
# 3.	Identify customers who have spent more than ₹5,000.
SELECT c.CustomerID,
       c.Name,
       max((o.OrderAmount + o.DeliveryFee) * (1 - o.DiscountApplied/100)) AS Totalamtspent
FROM Customers c
JOIN Orders o
  ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.Name
HAVING Max(o.OrderAmount + o.DeliveryFee - o.DiscountApplied) > 5000
ORDER BY Totalamtspent DESC;




