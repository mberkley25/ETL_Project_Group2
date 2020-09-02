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


create table median_rental (	
	"RegionName" varchar(50),
	"State" varchar(2),
	"Metro" varchar(50),
	"County" varchar(50),
	"SizeRank" int,
	"2010-01" int,
	"2010-02" int,
	"2010-03" int,
	"2010-04" int,
	"2010-05" int,
	"2010-06" int,
	"2010-07" int,
	"2010-08" int,
	"2010-09" int,
	"2010-10" int,
	"2010-11" int,
	"2010-12" int,
	"2011-01" int,
	"2011-02" int,
	"2011-03" int,
	"2011-04" int,
	"2011-05" int,
	"2011-06" int,
	"2011-07" int,
	"2011-08" int,
	"2011-09" int,
	"2011-10" int,
	"2011-11" int,
	"2011-12" int,
	"2012-01" int,
	"2012-02" int,
	"2012-03" int,
	"2012-04" int,
	"2012-05" int,
	"2012-06" int,
	"2012-07" int,
	"2012-08" int,
	"2012-09" int,
	"2012-10" int,
	"2012-11" int,
	"2012-12" int,
	"2013-01" int,
	"2013-02" int,
	"2013-03" int,
	"2013-04" int,
	"2013-05" int,
	"2013-06" int,
	"2013-07" int,
	"2013-08" int,
	"2013-09" int,
	"2013-10" int,
	"2013-11" int,
	"2013-12" int,
	"2014-01" int,
	"2014-02" int,
	"2014-03" int,
	"2014-04" int,
	"2014-05" int,
	"2014-06" int,
	"2014-07" int,
	"2014-08" int,
	"2014-09" int,
	"2014-10" int,
	"2014-11" int,
	"2014-12" int,
	"2015-01" int,
	"2015-02" int,
	"2015-03" int,
	"2015-04" int,
	"2015-05" int,
	"2015-06" int,
	"2015-07" int,
	"2015-08" int,
	"2015-09" int,
	"2015-10" int,
	"2015-11" int,
	"2015-12" int,
	"2016-01" int,
	"2016-02" int,
	"2016-03" int,
	"2016-04" int,
	"2016-05" int,
	"2016-06" int,
	"2016-07" int,
	"2016-08" int,
	"2016-09" int,
	"2016-10" int,
	"2016-11" int,
	"2016-12" int,
	"2017-01" int,
	"2017-02" int,
	"2017-03" int,
	"2017-04" int,
	"2017-05" int,
	"2017-06" int,
	"2017-07" int,
	"2017-08" int,
	"2017-09" int,
	"2017-10" int,
	"2017-11" int,
	"2017-12" int,
	"2018-01" int,
	"2018-02" int,
	"2018-03" int,
	"2018-04" int,
	"2018-05" int,
	"2018-06" int,
	"2018-07" int,
	"2018-08" int,
	"2018-09" int,
	"2018-10" int,
	"2018-11" int,
	"2018-12" int,
	"2019-01" int,
	"2019-02" int,
	"2019-03" int,
	"2019-04" int,
	"2019-05" int,
	"2019-06" int,
	"2019-07" int,
	"2019-08" int,
	"2019-09" int,
	"2019-10" int,
	"2019-11" int,
	"2019-12" int,
	PRIMARY KEY ("RegionName", "State", "County")
);

select * from median_rental;



