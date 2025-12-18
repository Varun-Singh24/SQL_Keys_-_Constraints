
-- 1 . Primary Key 
Create table if not exists Employees(
	Employee_ID Serial Primary Key, 
    Name Varchar(50) , 
	Department Varchar(50) 
    ); 
Describe Employees ;     
Select * from Employees ; 

-- 2. Composite Key -- More than One Primary Key 
Create table Orders (
Order_ID SERIAL , 
Customer_ID Int ,
Order_Date Date ,
Primary Key(Order_ID, Customer_ID)  
) ;  
Drop table Orders ; 
Describe Orders ;

-- 3. Foreign Key 
Create Table Customer ( Customer_ID Serial primary key , 
Name Varchar(50) , 
Ph_No bigint 
) ;  
Describe Customer ; 

Create table Orders (
Order_ID SERIAL Primary Key  , 
Customer_ID Int ,
Order_Date Date ,
Foreign Key(Order_ID ) references Customer( Customer_ID ) 
) ;  

Describe Orders ;
Describe Employees ; 

-- 4. Unique Constraints 

Create table If not exists EMPL ( 
EMP_ID Serial Primary key ,
Email_ID varchar(50) unique , 
name Varchar(50) , 
Department varchar(50) 
); 

Describe EMPL ; 


-- 5. Unique Constraints as Composite Key 
Drop table if exists EMPL ; 
Create table If not exists EMPL ( 
EMP_ID Serial Primary key ,
Email varchar(50) unique , 
Phone int unique ,
name Varchar(50) , 
Department varchar(50) , 
UNIQUE(Email, Phone) 
); 


-- 6. Check Constraints 
 
Drop table if exists EMPL ; 

Create table If not exists EMPL ( 
EMP_ID Serial Primary key ,
Age INT Check(age > 18 ) ,
Email varchar(50) unique ,
Phone int unique ,
name Varchar(50) , 
Department varchar(50) ,  
UNIQUE(Email, Phone) 
); 

describe empl ;

