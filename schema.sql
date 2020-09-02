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
<<<<<<< HEAD
	PRIMARY KEY (State, City)
=======
	PRIMARY KEY ("State", "City")
>>>>>>> Elaine
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
<<<<<<< HEAD
	"Average_Sales" float,
	Primary Key (State, City)
);

=======
	"AverageSales" float,
	Primary Key ("State", "City")
);

select * from income;

>>>>>>> Elaine
select * from sales_2017;



<<<<<<< HEAD
=======

>>>>>>> Elaine
