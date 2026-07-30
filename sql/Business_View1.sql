CREATE VIEW gold.business_view1 AS

WITH CTE1 AS
(
    SELECT T1.*, T2.Weight_Flag
    FROM
    (
        SELECT o.order_id,
               oi.product_id
        FROM Div_DWH.gold.cur_orders o
        LEFT JOIN Div_DWH.gold.cur_orderitems oi
            ON o.order_id = oi.order_id
        WHERE o.order_status = 'delivered'
    ) T1
    LEFT JOIN
    (
        SELECT
            product_id,
            product_weight_g,
            CASE
                WHEN product_weight_g <= 1000 THEN 'Low'
                WHEN product_weight_g <= 5000 THEN 'Mid'
                ELSE 'High'
            END AS Weight_Flag
        FROM Div_DWH.gold.cur_products
    ) T2
        ON T1.product_id = T2.product_id
)
SELECT
    Weight_Flag,
    COUNT(order_id) AS total_orders
FROM CTE1
GROUP BY Weight_Flag;