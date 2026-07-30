create role dataanalyst AUTHORIZATION dbo;


alter ROLE dataanalyst
add member [fabricde@divyam14outlook.onmicrosoft.com]



deny select on gold.cur_customers(Unique_id) to dataanalyst;