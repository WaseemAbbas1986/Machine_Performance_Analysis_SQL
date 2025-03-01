create database Machine
use Machine
select * from mechanical

-- Write an SQL query to get the total number of records in the
-- dataset
select count([Machine_ID]) as Total_Machines
from mechanical

-- How many machines have failed?
select count([Machine_ID]) as Total_Machines_Failed
from mechanical
where [Part_Failure] = 'Yes'

-- Find the total energy consumption of all machines
select round(sum([Energy_Consumption_kWh]),0) as Enery_Consumed_in_KV
from mechanical

-- 4-	Find the average temperature of all machines.
select round(avg([Temperature_C]),2) as Avg_Tempreture
from mechanical

-- Find the machine with the highest operating hours
select top 1 [Machine_Name], max([Operating_Hours]) as Max_Hours
from mechanical
group by [Machine_Name]
order by Max_Hours desc

-- Find the machine with the lowest operating hours
select top 1 [Machine_Name], max([Operating_Hours]) as Lowest_Hours
from mechanical
group by [Machine_Name]
order by Lowest_Hours asc

-- Find the total operating hours for each machine type
select [Machine_Name], sum([Operating_Hours]) as Total_Hours
from mechanical
group by [Machine_Name]
order by Total_Hours desc

--Find the average vibration level for each machine type
select [Machine_Name], round(avg([Vibration_Level]),2) as Avg_Vibration_Level
from mechanical
group by [Machine_Name]
order by Avg_Vibration_Level desc

-- Find the machine with the highest energy consumption
select top 1 [Machine_Name], round(sum([Energy_Consumption_kWh]),0) Total_Consumption_in_Kvs
from mechanical
group by [Machine_Name]
order by Total_Consumption_in_Kvs desc

-- Find the machine with the lowest energy consumption
select top 1 [Machine_Name], round(sum([Energy_Consumption_kWh]),0) Total_Consumption_in_Kvs
from mechanical
group by [Machine_Name]
order by Total_Consumption_in_Kvs asc

-- Find the total energy consumption for each machine type
select [Machine_Name], round(sum([Energy_Consumption_kWh]),0) Total_Consumption_in_Kvs
from mechanical
group by [Machine_Name]
order by Total_Consumption_in_Kvs desc

-- Find the total number of machines for each machine type
select [Machine_Name], count([Machine_ID]) as Total_Machines
from mechanical
group by [Machine_Name]
order by Total_Machines desc

-- Find the average temperature for each maintenance schedule type
select [Maintenance_Schedule], round(avg([Temperature_C]),2) as avg_Temperature_C
from mechanical
group by [Maintenance_Schedule]
order by avg_Temperature_C desc

-- Find the total number of machines under each maintenance
-- schedule
select [Maintenance_Schedule],
count([Machine_ID]) as Number_of_machines
from mechanical
group by [Maintenance_Schedule]
order by Number_of_machines desc