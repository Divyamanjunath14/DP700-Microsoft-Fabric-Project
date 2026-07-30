create VIEW gold.Business_View2 AS
select * from 
(
SELECT 
    *,
    DENSE_RANK() OVER(PARTITION BY payment_type ORDER BY payment_value) as bucket_ranking
FROM 
    Div_DWH.gold.cur_payments
) t
where bucket_ranking <= 10