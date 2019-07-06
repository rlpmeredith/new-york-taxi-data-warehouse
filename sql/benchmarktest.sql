select /*+ INDEX(facttable index1) */ avg(AverageSpeed) 
	from facttable, hourdimension, datedimension, pickupdimension, dropoffdimension  
	where facttable.hourkey=hourdimension.hourkey 
	and   facttable.datekey=datedimension.datekey
	and   facttable.pickuplocationid=pickupdimension.pickuplocationid
	and   facttable.dropofflocationid=dropoffdimension.dropofflocationid
	and facttable.passengercount=1
	and hourdimension.timeofday='Evening'
	and datedimension.dayofweek='Wednesday'
	and pickupdimension.borough='Manhattan'
	and dropoffdimension.borough='Brooklyn'
;
