CREATE FUNCTION gold.customer_function(@customer_zip INT)
RETURNS TABLE
AS
RETURN (
	SELECT 
	 *
	FROM
		Div_DWH.gold.cur_customers
	WHERE
		customer_zip_code = @customer_zip
)

SELECT * FROM gold.customer_function(22733);

