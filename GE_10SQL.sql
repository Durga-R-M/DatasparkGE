
select count(customerkey), gender from gedatabase.Customers c, gedatabase.sales s where c.customerkey group by gender;
select count(c.customerkey) as CountofCustomers, p.category as ProductCategory from gedatabase.sales s, gedatabase.Customers c, gedatabase.products p 
where c.customerkey=s.customerkey and p.productkey=s.productkey group by p.category;
select distinct p.category as ProductCategory,sum(s.quantity*p.unit_price_Usd) as Sales  
from gedatabase.sales s 
inner join gedatabase.Customers c on c.customerkey=s.customerkey
inner join gedatabase.products p on p.productkey=s.productkey
 group by p.category;
select distinct s.order_date as OrderDate,count(s.order_number) as OrderCount,sum(s.quantity*p.unit_price_Usd) as Sales ,sum(s.quantity*p.unit_cost_Usd) as Cost,
sum(s.quantity*p.unit_price_Usd) - sum(s.quantity*p.unit_cost_Usd) as Profit   
from gedatabase.sales s 
inner join gedatabase.Customers c on c.customerkey=s.customerkey
inner join gedatabase.products p on p.productkey=s.productkey
 group by s.order_date;
 select distinct st.country as country,sum(s.quantity*p.unit_price_Usd) as Sales  
from gedatabase.sales s 
inner join gedatabase.stores st on s.storekey=st.storekey
inner join gedatabase.products p on p.productkey=s.productkey
 group by st.country;
select distinct p.brand as Brand,
sum(s.quantity*p.unit_price_Usd) - sum(s.quantity*p.unit_cost_Usd) as Profit   
from gedatabase.sales s 
inner join gedatabase.products p on p.productkey=s.productkey
 group by p.brand;
 select distinct p.category as category,
sum(s.quantity*p.unit_price_Usd) - sum(s.quantity*p.unit_cost_Usd) as Profit   
from gedatabase.sales s 
inner join gedatabase.products p on p.productkey=s.productkey
 group by p.category;
 select distinct p.category as category,
sum(p.unit_price_Usd) as Price, sum(p.unit_cost_Usd) as Cost   
from gedatabase.sales s 
inner join gedatabase.products p on p.productkey=s.productkey
 group by p.category;
 select distinct st.country,sum((s.quantity*p.unit_price_Usd)/st.square_meters) as SalesBySquarefoot
 from gedatabase.sales s 
inner join gedatabase.stores st on s.storekey=st.storekey
inner join gedatabase.products p on p.productkey=s.productkey
 group by st.country;
 
 select country,count(storekey) from gedatabase.stores group by country;