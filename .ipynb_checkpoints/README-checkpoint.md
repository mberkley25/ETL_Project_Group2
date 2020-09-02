# ETL_Project_Group2
## Data Cleanup & Analysis

Once you have identified your datasets, perform ETL on the data. Make sure to plan and document the following:

* The sources of data that you will extract from.

Kaggle median income
zillow sale prices city

Calendar year 2017 data


* The type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc).

Merge csv files based on city and state; 

clean: merge files based on city and state; dropna; data set 32,219 rows to 2798 rows
filter: extra date columns <> 2017; w_sum; 
join: in SQL created 'income' and 'sales' schemas 

select * 
from income 
left join sales_2017 on income."City" = sales_2017. "City" and income."State" = sales_2017."State";

* The type of final production database to load the data into (relational or non-relational).

SQL a relational database

* The final tables or collections that will be used in the production database.

schema.sql
query.sql

## Project Report
At the end of the week, your team will submit a Final Report that describes the following:

* **E**xtract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).
kaggle csv files

* **T**ransform: what data cleaning or transformation was required.

Merge csv files based on city and state; 

clean: merge files based on city and state; dropna; data set 32,219 rows to 2798 rows
filter: extra date columns <> 2017; w_sum; 
join: in SQL created 'income' and 'sales' schemas 
aggregation: average sales by city calculated field

* **L**oad: the final database, tables/collections, and why this was chosen.

join: left join in SQL created 'income' and 'sales' schemas 

create table income (
    id int,
    "State" varchar(20),
	"State_ab" varchar(2),
	"County" varchar(30),
	"City" varchar(30),
	"Type" varchar(30),
	"Primary" varchar(30),
	"Zip_Code" varchar(30),
	"Mean" int,
	"Median" int,
	"Stdev" int,
	"sum_w" float,
	PRIMARY KEY (State, City)
	);
    
create table sales_2017 (
	"City" varchar(30),
	"State" varchar(30),
	"January" float,
	"February" float,
	"March" float,
	"April" float,
	"May" float,
	"June" float,
	"July" float,
	"August" float,
	"September" float,
	"October" float,
	"November" float,
	"December" float,
	"Average_Sales" float,
	Primary Key (State, City)
);

select * from sales_2017;

select * 
from income 
left join sales_2017 on income."City" = sales_2017."City" and income."State" = sales_2017."State";
​
Please upload the report to Github and submit a link to Bootcampspot.
