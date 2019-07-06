load data
infile "DropoffLocationID.csv"
into table DropoffDimension
fields terminated by "," 	  
( DropoffLocationID, Borough, Zone, ServiceZone)
