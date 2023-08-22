SELECT SUM(s.quantity) AS Total_Quantity_Sold, AVG(s.quantity) AS Average_Quantity_Sold_Per_Order
FROM sales s;
