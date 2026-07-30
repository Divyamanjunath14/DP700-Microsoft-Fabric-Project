ALTER TABLE Div_DWH.gold.cur_customers
ALTER COLUMN customer_id
ADD MASKED WITH (FUNCTION = 'email()');


SELECT * FROM Div_DWH.gold.cur_customers