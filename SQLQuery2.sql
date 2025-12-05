Select 
Gender,
COUNT(Gender) as TotalCount_gender,
COUNT(Gender)*100.0 / (Select COUNT(*) from Customer_Data) as percentage_gender
from db_Churn.dbo.Customer_Data
group by Gender;

Select 
Contract,
COUNT(Contract) as TotalCount_Contract,
COUNT(Contract)*100.0 / (Select COUNT(*) from Customer_Data) as percentage_Contract
from db_Churn.dbo.Customer_Data
group by Contract;

Select 
Customer_Status,
COUNT(Customer_Status) as TotalCount_Status,
SUM(Total_Revenue) as TotalRev,
SUM(Total_Revenue) / (Select SUM(Total_Revenue) from Customer_Data) *100 as Revpercentage
from db_Churn.dbo.Customer_Data
group by Customer_Status;

Select 
State,
COUNT(State) as TotalCount_State,
COUNT(State)* 100.0 / (Select COUNT(*) from Customer_Data) as percentage_state
from db_Churn.dbo.Customer_Data
group by State
order by percentage_state desc;

select distinct Internet_Type
from Customer_Data;