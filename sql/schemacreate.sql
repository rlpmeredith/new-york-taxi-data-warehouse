CREATE TABLE FactTable (
  SurrogateKey number,
  DateKey number,
  HourKey number,
  PickupLocationID number,
  DropoffLocationID number,
  PassengerCount number,
  AverageSpeed number,
  TripLength number,
  FareAmount number
)
;
CREATE TABLE DateDimension (
  DateKey number,
  DayDate varchar2(12),
  DayOfWeek varchar2(12), 
  Month varchar2(12)
)  
;
CREATE TABLE HourDimension (
  HourKey number,
  TimeOfDay varchar2(12),
  RushHour varchar2(12)
)
;
CREATE TABLE PickupDimension (
  PickupLocationID number,
  Borough varchar2(12),
  Zone varchar2(12), 
  ServiceZone varchar2(12)
)
;
CREATE TABLE DropoffDimension (
  DropOffLocationID number,
  Borough varchar2(12),
  Zone varchar2(12), 
  ServiceZone varchar2(12)
)
;
