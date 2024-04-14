16/03/2024
-------------Create Database-------------

Create database JanBatch24;

--------------Create table ------------------

CREATE TABLE Persons(PersonID int,
FirstName varchar(20),
MName varchar(20), 
LastName varchar (20),
Adress varchar(20),
City varchar (20));

----------------Constraints (Primary, Not Null Etc)-----------------

CREATE TABLE CUSTOMER
    (CustomerID int IDENTITY(1,1) PRIMARY KEY,
	CustomerNumber int NOT NULL UNIQUE,
	LastName varchar(20) NOT NULL,
	FirstName varchar(20),
	AreaCode int NULL,
	adress varchar(20) NULL,
	Phone varchar(20) NULL,);

	select * from Table_Name------------------SYNTAX 1 (select)--------------
	select * from CUSTOMER ---------------(CUSTOMER is TABLE NAME )
	select * from Persons

select CustomerID, LastName, FirstName from CUSTOMER;        ----------------SYNTAX 2-(select)-----------
	
	--------------------INSERT INTO---------------------

	-------TYPE 1----------------------------------------------SYNTAX 1------------------------------------------------

	INSERT INTO CUSTOMER VALUES ('1111', 'Nerkar', 'Pradunya', '09', 'Nashik', '7888888888');
	INSERT INTO CUSTOMER VALUES ('2222', 'karnik', 'Mandar', '01', 'Nashik', '5555555555');
	INSERT INTO CUSTOMER VALUES ('3333', 'rr', 'RR', '30', 'Nashik', '22222222');
	INSERT INTO CUSTOMER VALUES ('4444', 'Khan', 'Salman', '50', 'Berlin', '44444444444');
	INSERT INTO CUSTOMER VALUES ('1212', 'JADHAV', 'NEHA', '10', 'DUBAI', '9999999');
	INSERT INTO CUSTOMER VALUES ('2323', 'Pandya', 'hardik', '55', 'Gurgav', '1111112222');
	INSERT INTO CUSTOMER VALUES ('3434', 'sharma', 'ishant', '3232', 'MADURAI', '888888');
	INSERT INTO CUSTOMER VALUES ('9898', 'Shah', 'Amit', '54', 'Delhi', '2222222');

	------TYPE 2---------------------------------------------SYNTAX 2------------------------------------------------

	INSERT INTO CUSTOMER (CustomerNumber, LastName, FirstName, AreaCode, adress, Phone)
	VALUES (101, 'RAJ', 'PUSHPA', 35, 'Kerala', 9999999999);

	INSERT INTO CUSTOMER (CustomerNumber, LastName, FirstName, AreaCode, adress, Phone)
	VALUES (102, 'Nerkar', 'Aaditya', 21, 'USA', 11111111);
	
	INSERT INTO CUSTOMER (CustomerNumber, LastName, FirstName, AreaCode, adress, Phone)
	VALUES (103, 'Gandhi', 'Mahatma', 90, 'IND', 2222222222);
	
	INSERT INTO CUSTOMER (CustomerNumber, LastName, FirstName, AreaCode, adress, Phone)
	VALUES (104, 'Modi', 'Narendra', 58, 'INDIA', 3333333333);

	SELECT * FROM CUSTOMER

	----------------------------UPDATE STATEMENT---------------------

	UPDATE CUSTOMER SET Phone=1111111111 where CustomerID=1;
UPDATE CUSTOMER SET AreaCode=99 where CustomerID=2;
UPDATE CUSTOMER SET AreaCode=999 where CustomerID=3;--------------with where Clouse

update CUSTOMER set AreaCode=09;--------------without where clouse all data will change


------------------------------DELETE  STATEMENT-----(only 1 row will delete)--------------------
delete from CUSTOMER where CustomerID=3;

-------------------------------DROP table -----(All table will delete)--------------
drop table Table_Name;
    ----   (Enter table name)
 
 ------------------------------TRUNCATE-----------------
 ----(only data will delete Table remains )

 ----(16/03/2016)

 ------------------------------------------------------------------------------------------------------
-----(17/03/2024)-----------------------------WHERE CLAUSE----------------------
 
 select * from CUSTOMER;
 select * from CUSTOMER where FirstName='Amit'; --search & fullfill one value -------Only select one term----------

 ----------------17/03/2024---------------
 ------------------------Aggregate function in (SQL)-------------------------------------------------------
 ---------------------------------------------------NO 01 -(Count)--------------
 Create Table Products
 (ProductID int IDENTITY(1,1) PRIMARY KEY,
 ProductName varchar(20) NOT NULL,
 Quantity Int NOT NULL,
 Price int NOT NULL);

 select * from Products

 INSERT INTO Products VALUES ('Soap', 10, 50);
 INSERT INTO Products VALUES ('Powder', 20, 100);
 INSERT INTO Products VALUES ('Facewash', 30, 150);
  INSERT INTO Products VALUES ('Charcoal', 40, 200);

  select count (Productid) from Products;
   select * from Products

   select ProductName from Products where Price > 50;

   ---------------------------------------------------NO 02 -Sum()---applicable for numerical value----
   select * from Products
   select SUM(Quantity) from Products; ----------e.g. 01

     select * from Products
   select SUM(Price) from Products;  -------------------e.g. 02
   
   -------------------------------------AVG()-- applicable for numerical values---------
    select * from Products
   select AVG(Price) from Products; ------------e,g, 01

    select * from Products
   select AVG(Quantity) from Products;--------------e.g. 02

   ------------------------------------MIN()----MINIMUM COST -----------------------------

    select * from Products
   select MIN(Price) from Products;  ------- ( MINIMUM COST IS 50 )

     ------------------------------------MAX()----MAXIMUM COST -----------------------------

    select * from Products
   select MAX(Price) from Products;  ------- ( MAXIMUM COST IS 200 )

   ------------------------------------GROUP BY clouse---------------------------

    select * from CUSTOMER;

	SELECT COUNT(CustomerID), Adress 
	from CUSTOMER
	GROUP BY adress; -----------here only adress will get group------we can make group which have same data
	
	SELECT COUNT(CustomerID), Phone 
	from CUSTOMER
	GROUP BY Phone;----------- here only Phone will get group--------

	---------------------------------Having Clause---------------------

	CREATE TABLE NewEmployee
    (EmpID int IDENTITY(1,1) PRIMARY KEY,
	EmpName varchar(20) NOT NULL UNIQUE,
	adressName varchar(20),
	City varchar(20) NULL,
	Gender char(06) NULL,
	Age int NULL,
	Salary int NOT NULL);

	select * from NewEmployee;
	INSERT INTO NewEmployee VALUES ('prakashraj', 'JADHAV', 'pune', 'm', 55, 50000 );
	INSERT INTO NewEmployee VALUES ('kajal', 'savant', 'junnar', 'f', 23, 60000 );
	INSERT INTO NewEmployee VALUES ('wild', 'man', 'panchawati', 'm', 56, 80000 );
	INSERT INTO NewEmployee VALUES ('aadesh', 'rao', 'kokan', 'm', 45, 40000 );
	INSERT INTO NewEmployee VALUES ('maya', 'hire', 'nashik', 'f', 20, 90000 );

	select * from NewEmployee

	select EmpName, SUM(Salary)
	from NewEmployee
	Group by EmpName
	Having SUM (Salary)>50000  -----------HAVING IS WORK AS A CONDITION ---------

	------------------------------ORDER BY-------(DATA IN SEQUENCE )------------------

	select * from NewEmployee
	select EmpName, SUM(Salary)
	from NewEmployee
	Group by EmpName
	Having SUM (Salary)>50000
	Order by EmpName; -----------------------assending order -------------(1)

	select * from NewEmployee
	select EmpName, SUM(Salary)
	from NewEmployee
	Group by EmpName
	Having SUM (Salary)>50000
	Order by EmpName desc; ----------------Descending order ---------------------------(2)

	--------------------------
	select * from NewEmployee
	select * from NewEmployee order by Age; -----------------we selected (Age)-----------

		select * from NewEmployee
	select * from NewEmployee order by City; ---------------------we selected (city)--------

		select * from NewEmployee
	select * from NewEmployee order by Age desc;------------ descending order age ----------
	
		select * from NewEmployee
	select * from NewEmployee order by EmpName; --------selected order empName with assending order 

	------------------------------------------------------------------------------------

	-------------Operators use in SQL-----------------------

	----------Arthmatics operators----------------------

	select 20-30;
	select 50-30;
	select 10*20;
	select 30/2;
	select 17%5;

	-----------------Comparission Operators------------------

	select * from CUSTOMER;
	select * from CUSTOMER where AreaCode>20;  ----greater than 20
	select * from CUSTOMER where AreaCode=20;------Equal to 20
	select * from CUSTOMER where AreaCode<>9;-----Not match with 9 it will show other than 9
	select * from CUSTOMER where AreaCode<20;-----Lower than 20
	select * from CUSTOMER where AreaCode>=20;----- Equal to 20 and greater than 20
	select * from CUSTOMER where AreaCode<=20;------ Equal to 20 and Less than 20

    -------------Logical Operators---------------------

	---AND & OR Operators-------
	---In and Operator there both
	---1) A & B = A & B
	---   Both Condition are True 

	---2) A OR B = A False 
	---          = B True ------in OR Condition One condition should be true 

	-----SYNTAX is :
	Select * from CUSTOMER;
	Select * from CUSTOMER where LastName='Nerkar' and FirstName='Pradunya';
	-----------------------------LastName TRUE---------FirstName  TRUE

	-----SYNTAX IS;
	Select * from CUSTOMER;
	Select * from CUSTOMER where LastName='Nerkar' OR FirstName='Mandar';
	--------------only one condition true and all Data qill Show---------

	-------------------Combining AND & OR---------------------------------
	
	Select * from CUSTOMER;
	Select * from CUSTOMER where LastName='karnik'  and (FirstName='hardik' or adress='Nashik');

	----------------IN Operator------(use in WHERE Clouse)----------------------
	
	Select * from CUSTOMER;
	select FirstName
	from CUSTOMER
	where CustomerNumber
	IN (1111, 4444, 3333);

	----------------   <>  "NOT EQUAL" to term ----where Adress Berlin fetch nhi hoga ----------------
	
	select * from CUSTOMER;
	select * from CUSTOMER where adress <> 'Berlin';

	-----------------  LIKE OPERATOR ------------------------------

	----SYNTAX is :
	----select column_name
	----from tble_name
	----where column_name LIKE pattern; Pattern = 'j%'

	select * from CUSTOMER;
	select * from CUSTOMER where FirstName like 'N%';--Data fetch = Initials Start from N

	select * from CUSTOMER;
	select * from CUSTOMER where FirstName like '%a';--Data fetch = Last Intitials end with 'a'

	select * from CUSTOMER;
	select * from CUSTOMER where FirstName like '%a%' ; --'a' character ke front and back pe letters hoge wo fetch hoge 

	-----	select * from CUSTOMER;
	--------select * from CUSTOMER where FirstName like '%a%' and '%r' ;

	-----------------------    NOT LIKE OPERATOR     ---------------------------------

	select * from CUSTOMER;
	select * from CUSTOMER where FirstName not like '%a%';
	----only  fetch data NOT LIKE --a-- word ke front and back pe koi word hai wo show nhi hoga

	----------------------  BETWEEN OPERATOR -------------------------------------------------
	
	select * from CUSTOMER;
	select FirstName from CUSTOMER where AreaCode BETWEEN '55' AND '4000';
	select LastName from CUSTOMER where AreaCode BETWEEN '5' AND '4000';
	---Only jo numbers BETWEEN '_' AND '_' hai vahi fetch honge -------Base value 55 and last value 4000 bhi fetch krega
	 
	 ---------------------- NOT BETWEEN OPERATOR -------------------------------------------------

	select * from CUSTOMER;
	select FirstName from CUSTOMER where AreaCode NOT BETWEEN '5' AND '10';
	select LastName from CUSTOMER where AreaCode BETWEEN '5' AND '4000';
     -----Eliminate base value in not between operator-----

-------------------------------------UNION operator------------------------------------------------------------------------------------------------------------------------------------

Create table Supplier
(SupplierID int IDENTITY(1,1)PRIMARY KEY,
SupplierNumber int NOT NULL,
SupplierLname varchar(50) NOT NULL,
SupplierFname varchar(50) NOT NULL,
SCode int NOT NULL,
Saddress varchar(10) NOT NULL,
SphoneNumber int NOT NULL);

SELECT * FROM Supplier

INSERT INTO Supplier VALUES (1111, 'BHAI', 'SATYA', 20, 'THANE', 9999999);
INSERT INTO Supplier VALUES (2222, 'GADE', 'DEVA', 50, 'DADAR', 1111111);
INSERT INTO Supplier VALUES (1000, 'REINA', 'SURESH', 60, 'MULUND', 5555555);
INSERT INTO Supplier VALUES (1000, 'VAHE', 'KIRAN', 40, 'MAHIM', 8888888);
INSERT INTO Supplier VALUES (1000, 'PATEL', 'SHYAM', 80, 'GRANT', 4444444);
INSERT INTO Supplier VALUES (1000, 'DEV', 'AADITYA', 30, 'KALYAN', 3333333);

select * from CUSTOMER;
SELECT * FROM Supplier
SELECT Adress from CUSTOMER
UNION
select Saddress from Supplier --- only similer 1 data will fetch from Adress and Sadress 

--------------------UNION ALL operator ------------------------------------
select * from CUSTOMER;
SELECT * FROM Supplier
SELECT Adress from CUSTOMER
UNION ALL
select Saddress from Supplier; --------Similer data bhi fetch hoga ex, 22, 22 = 22, 22


---------------------------------INTERSECT operator-----------------------

select * from CUSTOMER;
SELECT * FROM Supplier
SELECT CustomerNumber from CUSTOMER
INTERSECT 
SELECT SupplierNumber from Supplier; -------DATA should be only same* DIPTI & GAURI QUERY 
----DATE 30/03/24------------------------------------------------------------------------------------------

-------------------------MINUS OPERATOR---31/03/2024 ---  8:00 AM ----------------------------------------
-------MINUS OPERATOR IS SUPPORTED WITH ALL DATABASE  .. supported by oracle database but not SQL server or postgreSQL..


-----------------JOINS---------------------------------------------------------------
CREATE TABLE School
(SchoolID int IDENTITY(1,1) PRIMARY KEY,
SchoolName varchar (50) NOT NULL,
Description varchar (50) NOT NULL,
Address varchar (50) NOT NULL,
Phone int NOT NULL,
PostCode int NOT NULL,
PostAddress varchar (50) NOT NULL);

select * from School

Insert into School values ('RRR', 'ICSE', 'Nashik', 77777777, 4242, 'NSK');
Insert into School values ('kkk', 'CBSE', 'PUNE', 88888888, 5050, 'BOM');
Insert into School values ('nnn', 'SSC', 'DADAR', 99999999, 5222, 'NK');
Insert into School values ('WWW', 'SSC', 'JAFNA', 22222222, 1111, 'MUM');
Insert into School values ('LLL', 'UP', 'IND', 44444444, 5002, 'NKrd');
Insert into School values ('OOP', 'DLH', 'RAIPUR', 11111111, 1000, 'MUMbai');
Insert into School values ('AAA', 'II', 'vegas', 75757575, 8989, 'bkk');
Insert into School values ('QQQ', 'vv', 'berlin', 45454545, 5656, 'aus');

CREATE TABLE Class
(ClassID int IDENTITY(1,1) PRIMARY KEY,
SchoolID int NOT NULL,
Classname varchar (50),
Description varchar (50) NOT NULL);

select * from Class


Insert into Class values ('1', 'ICSE', 'Tech');
Insert into Class values ('2', 'CBSE', 'IT');
Insert into Class values ('3', 'SSC', 'Space');
Insert into Class values ('4', 'SSC', 'Robotic');
Insert into Class values ('5', 'icc', 'GK');
Insert into Class values ('6', 'Grt', 'MI');

select * from Class
select * from School


select School.SchoolName, Class.Classname
from School INNER JOIN Class           -------------Dono table ke andr INNER JOIN insert kiya 
on School.SchoolID = Class.SchoolID;           -----bcoz hame deta match krna hai SchoolID School Tablr
---school table me se schoolID (which is Primary Key) ko equal or match kro 
---Class table me se forein key hai SchoolID   ---Dusre data se nhi data  fetch hona chahiye
 
 -------------LEFT OUTER JOIN-_-------------------------

select * from Class
select * from School


select School.SchoolName, Class.Classname
from School LEFT JOIN Class --------------left ka data fetch krdo but meri priimary key &foreig key match nhi hai
on School.SchoolID = Class.SchoolID; 
--agar left table me data fetch ho rha hai and right table pe Data nhi hai to right table  pe NULL value aayega

 -------------Right OUTER JOIN-_-------------------------

select * from Class
select * from School


select School.SchoolName, Class.Classname
from School RIGHT JOIN Class --------------RIGHT ka data fetch krdo but meri priimary key &foreig key match nhi hai
on School.SchoolID = Class.SchoolID; 
--agar left table me data fetch ho rha hai and LEFT table pe Data nhi hai to right table  pe NULL value aayega

 -------------FULL OUTER JOIN-_-------------------------

select * from Class
select * from School
---yaha pe School ke sare aur class ke matching record we are fetching ...

select School.SchoolName, Class.Classname
from School FULL JOIN Class --------------All Data will show in Full outer join
on School.SchoolID = Class.SchoolID; 
--//-----**without matching condition base on primary key & foreign key we can not fetch the record-----------//

-------------------------Cross join ----------------------------------------------------
Create table Customers(
ID int not null PRIMARY KEY,
   Name varchar (50) not null,
        Age int not null,
            Adress char (25),
                   Salary Decimal (18,2),
);

select * from Customers
INSERT INTO Customers values (1, 'KIRAN', 20, 'JAMMU', 1000.00);
INSERT INTO Customers values (2, 'RAM', 23, 'JAMMU', 1000.00);
INSERT INTO Customers values (3, 'BHARAT', 21, 'JAMMU', 1000.00);
INSERT INTO Customers values (4, 'VIJAY', 22, 'JAMMU', 1000.00);
INSERT INTO Customers values (5, 'MUFFY', 25, 'JAMMU', 1000.00);



Create table Orders(
OID int not null ,
   Data varchar (50) not null,
        CustmorID int not null,
                   Amount Decimal (18,2), ----only 16 digits . 02 digit = total 18 DIGITS  eg; 1234567812345678.00
				   );



INSERT INTO Orders values (101, '2008-05-20', 4, 2060.00);
INSERT INTO Orders values (102, '2009-06-10', 1, 2000.10);



select * from Customers
select * from Orders;

select ID, NAME, AMOUNT, Age, Data 
from Customers CROSS JOIN ORDERS;
----- 1st data table Customers ke table ke sath 2nd data table Orders ko COMBINE krega

------------------------SELF JOIN---------------------------------very minimum  usage---------------
            -----same table me se same rename wale table se comparision hoga

select * from Customers

select a.ID,
            b.NAME as EARNS_HIGHER,
			                        a.NAME as EARNS_LESS, 
                                                          a.Salary as LOWER_SALARY

from Customers a, Customers b

where a.Salary < b.Salary;

a = Table 1 Customers
b = Table 2 Customers

update Customers set Salary=500000 where ID=2;

--------------------- Duplicate Record-----------------------------------------

CREATE Table PurchaseOrders
(
 OrderID int,
CustomerID int NOT NULL,
EmployeeID varchar (50) NOT NULL,
ShippingID int NOT NULL,
);

select * from PurchaseOrders;

insert into PurchaseOrders values (11, 55, 40, 12);
insert into PurchaseOrders values (12, 45, 20, 62);
insert into PurchaseOrders values (13, 50, 10, 72);
insert into PurchaseOrders values (14, 65, 60, 82);
insert into PurchaseOrders values (11, 55, 40, 12);
select * from PurchaseOrders;
select OrderID, EmployeeID, Count(*)
from PurchaseOrders
group by OrderID, EmployeeID
having count(*) > 1; 
