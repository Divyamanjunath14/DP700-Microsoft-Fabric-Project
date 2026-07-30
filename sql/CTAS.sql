-----GOLD SCHEMA-------

USE Div_DWH
GO
CREATE SCHEMA gold


-----CTAS enr_Customer-----
CREATE Table Div_DWH.gold.cur_customers
AS
SELECT * FROM Silver.dbo.enr_customers


-----CTAS enr_orderitems-----
CREATE Table Div_DWH.gold.cur_orderitems
AS
SELECT * FROM Silver.dbo.enr_orderitems


-----CTAS enr_orders-----
CREATE Table Div_DWH.gold.cur_orders
AS
SELECT * FROM Silver.dbo.enr_orders

-----CTAS enr_payments-----
CREATE Table Div_DWH.gold.cur_payments
AS
SELECT * FROM Silver.dbo.enr_payments

-----CTAS enr_products-----
CREATE Table Div_DWH.gold.cur_products
AS
SELECT * FROM Silver.dbo.enr_products


-----CTAS enr_reviews-----
CREATE Table Div_DWH.gold.cur_reviews
AS
SELECT * FROM Silver.dbo.enr_reviews






