load data
infile "PickupLocationID.csv"
into table PickupDImension 
fields terminated by "," 	  
( PickupLocationID, Borough, Zone, ServiceZone)
