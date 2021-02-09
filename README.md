# ETL_Project_Group2

## **E**xtract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).

### Data Sources 

1) US median household income by city (https://www.kaggle.com/goldenoakresearch/us-household-income-stats-geo-locations?select=kaggle_income.csv)
2) Zillow house price data by city (https://www.kaggle.com/paultimothymooney/zillow-house-price-data)


Given that the most recent median household income data was 2017, we chose to focus on calendar year 2017 for our analyeses.

## **T**ransform: what data cleaning or transformation was required?

### Data Cleaning and transformation

#### Data cleaning: 
1) Dropped missing rows (using dropna)
2) Dropped unnecessary columns in datasets (e.g., extra date columns <> 2017, latitude/longitude data, water source, w_sum) 
3) Calculated average sales for each city for 2017 (averaged sales from January 2017 to December 2017) 
4) Joined tables using two methods: 1) In SQL created 'income' and 'sales2017' tables and used a left join to merge the separate tables (using the composite key on 'City' and 'State'). 2) In pandas, created a merged dataframe (housing_df) by joining by 'City' and 'State' and only included rows that had data across both datasets. By dropping rows that had missing values on either dataset, the dataset dropped from 32,219 rows to 2798 rows.


## **L**oad: the final database, tables/collections, and why this was chosen.

# The type of final production database to load the data into (relational or non-relational):

We will be using SQL, a relational database.

# Final tables/collections
1) income 
2) sales2017 
3) housing_df (merged table that only has rows that have observations across both the income and sales2017 tables)


# SQL Queries

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
	PRIMARY KEY ("State", "City")
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
	"AverageSales" float,
	Primary Key ("State", "City")
);

select * from income; 

select * from sales_2017;

select * 
from income 
left join sales_2017 on income."City" = sales_2017."City" and income."State" = sales_2017."State";
​

[Jason Stanghelle](https://github.com/PhysicsGlitch)

[Matthew Berkley](https://github.com/mberkley25)

[Laura Rice](https://github.com/LRiceBall)

[Elaine Cheung](https://github.com/ElaineCheung)
