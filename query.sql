select * 
from income 
left join sales_2017 on income."City" = sales_2017."City" and income."State" = sales_2017."State";
