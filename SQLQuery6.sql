Create view vw_ChurnData as 
Select * from finalChurn where Customer_Status In ('Churned' , 'Stayed')

Create view vw_JoinData as 
Select * from finalChurn where Customer_Status = 'Joined'