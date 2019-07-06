load data
infile "Day.csv"
into table DateDimension  
fields terminated by "," 	  
( DateKey, DayDate, DayOfWeek, Month)
