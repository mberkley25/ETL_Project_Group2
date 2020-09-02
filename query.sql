select * 
from income 
left join sales_2017 on income."City" = sales_2017."City" and income."State" = sales_2017."State";

select *
from income
full outer join median_rental on income."StateAb" = median_rental."State" and income."County" = median_rental."County";
