CREATE DATABASE Mangata_Gallo;
USE Mangata_Gallo; 

-- Task 1: Create the Clients table with the following columns and constraints. ClientID: INT, NOT NULL and PRIMARY KEY FullName: VARCHAR(100) NOT NULLPhoneNumber: INT, NOT NULL and UNIQUE
CREATE TABLE Clients(ClientID INT PRIMARY KEY, FullName VARCHAR(100) NOT NULL, PhoneNumber INT NOT NULL UNIQUE);
SHOW COLUMNS FROM Clients

-- Task 2: Create the Items table with the following attributes and constraints. ItemID: INT, NOT NULL and PRIMARY KEY ItemName: VARCHAR(100) and NOT NULL Price: Decimal(5,2) and NOT NULL
CREATE TABLE Items (ItemID INT PRIMARY KEY, ItemName VARCHAR(100) NOT NULL, Price DECIMAL(5,2) NOT NULL);
SHOW COLUMNS FROM Items
-- Task 3 solution: Create the Orders table with the following constraints. OrderID: INT, NOT NULL and PRIMARY KEY ClientID: INT, NOT NULL and FOREIGN KEYItemID: INT, NOT NULL and FOREIGN KEYQuantity: INT, NOT NULL and maximum allowed items in each order 3 onlyCOST Decimal(6,2) and NOT NULL
CREATE TABLE Orders ( 
OrderID INT PRIMARY KEY,  
ItemID INT NOT NULL,   
ClientID INT NOT NULL,   
Quantity INT NOT NULL CHECK (Quantity < 4),  
Cost DECIMAL(6,2) NOT NULL,  
FOREIGN KEY (ClientID) REFERENCES Clients (ClientID), 
FOREIGN KEY (ItemID) REFERENCES Items (ItemID) 
);

SHOW COLUMNS FROM Orders

-- BONUS: Task 1 solution - Practice using Key constraints
CREATE TABLE Staff (StaffID INT NOT NULL PRIMARY KEY, PhoneNumber INT NOT NULL UNIQUE, FullName VARCHAR(100) NOT NULL);   

-- BONUS2: Task 2 - Practice using Domain constraints
CREATE TABLE ContractInfo (ContractID INT NOT NULL PRIMARY KEY, StaffID INT NOT NULL, Salary Decimal(7, 2) NOT NULL, Location VARCHAR(50) NOT NULL DEFAULT "Texas", StaffType VARCHAR(20) NOT NULL CHECK (StaffType = "Junior" OR StaffType = "Senior"));

-- BONUS3: Task 3 solution - Practice using Referential integrity constraints
ALTER TABLE ContractInfo 
ADD CONSTRAINT FK_StaffID_ContractInfo
FOREIGN KEY (StaffID) REFERENCES Staff(StaffID);

SHOW COLUMNS FROM ContractInfo;