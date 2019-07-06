load data
infile "Hour.csv"
into table HourDimension
fields terminated by "," 	  
(HourKey, TimeOfDay, RushHour)
