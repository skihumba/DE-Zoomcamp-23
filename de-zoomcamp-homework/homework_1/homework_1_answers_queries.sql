-- Querries used to generate answers for questions 3 to 6

--Q3:
-- Trips made on Jan 15
select count(*) FROM green_taxi_trips where date(lpep_pickup_datetime) = '2019-01-15';

--Q4:
-- Day with largest trip distance
select date(lpep_pickup_datetime) 
FROM green_taxi_trips 
where trip_distance = (select max(trip_distance) FROM green_taxi_trips) ;

--Q5: 
-- Number of trips on Jan 1st with 2 passangers
select count(*) 
from green_taxi_trips 
where date(lpep_pickup_datetime) = '2019-01-01' and passenger_count = 2;

-- Number of trips on Jan 1st with 3 passangers
select count(*) 
from green_taxi_trips 
where date(lpep_pickup_datetime) = '2019-01-01' and passenger_count = 3;

--Q6: 
-- Dropoff zone with largest tip for passangers from Astoria Pick up zone 
select "DOLocationID" from  green_taxi_trips 
where tip_amount = (select max(tip_amount) from green_taxi_trips where "PULocationID" = 7);

