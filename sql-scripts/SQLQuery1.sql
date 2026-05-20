create database test_env

use test_env

select * from [dbo].[Products (1)]

select * from [dbo].[Test+Environment+Inventory+Dataset (2)]

select distinct [Order_Date_DD_MM_YYYY],product_id,Demand,Availability from [dbo].[Test+Environment+Inventory+Dataset (2)]

select a.[Order_Date_DD_MM_YYYY],a.product_id,a.availability,a.demand,b.product_name,b.unit_price
 from [dbo].[Test+Environment+Inventory+Dataset (2)] as a
left join [dbo].[Products (1)] as b on a.product_id=b.product_id

select * into New_table from
(select a.[Order_Date_DD_MM_YYYY],a.product_id,a.availability,a.demand,b.product_name,b.unit_price
 from [dbo].[Test+Environment+Inventory+Dataset (2)] as a
left join [dbo].[Products (1)] as b on a.product_id=b.product_id) x

select * from New_table
-------------------------------------------------------

create database prod_env

use prod_env

select * from [dbo].[Products (1)]
select * from[dbo].[Prod+Env+Inventory+Dataset (1)]

select distinct Order_Date_DD_MM_YYYY from [dbo].[Prod+Env+Inventory+Dataset (1)] where Order_Date_DD_MM_YYYY is null or Order_Date_DD_MM_YYYY = ''

select distinct [Order_Date_DD_MM_YYYY],product_id,Demand,Availability from [dbo].[Prod+Env+Inventory+Dataset (1)]

update [dbo].[Prod+Env+Inventory+Dataset (1)]
set product_id=7 where product_id=21

update [dbo].[Prod+Env+Inventory+Dataset (1)]
set product_id=11 where product_id=22

select a.[Order_Date_DD_MM_YYYY],a.product_id,a.availability,a.demand,b.product_name,b.unit_price
 from [dbo].[Prod+Env+Inventory+Dataset (1)] as a
left join [dbo].[Products (1)] as b on a.product_id=b.product_id

select * into New_table_1 from
(select a.[Order_Date_DD_MM_YYYY],a.product_id,a.availability,a.demand,b.product_name,b.unit_price
 from [dbo].[Prod+Env+Inventory+Dataset (1)] as a
left join [dbo].[Products (1)] as b on a.product_id=b.product_id) x

select * from New_table_1

