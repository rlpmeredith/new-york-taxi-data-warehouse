load data
infile "PassengerCount.csv"
into table PassengerDimension 
fields terminated by "," 	  
( PassengerCount, IndividualGroup ) 
