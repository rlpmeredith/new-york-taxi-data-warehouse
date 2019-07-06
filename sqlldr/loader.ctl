load data
infile "taxidatapost.csv"
into table FactTable
fields terminated by "," 	  
(SurrogateKey, DateKey, HourKey, PickupLocationID, DropoffLocationID, PassengerCount, AverageSpeed, TripLength, FareAmount)
