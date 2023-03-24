--what is sql?sql is a structured query language
--sql is a standerd language for sorting and retriving data from database
--
--
CREATE DATABASE Addressbook_Service

---creating table
---primery key is uniqly indentify each record in a table it cannot contain a null value in a table we can have 
CREATE TABLE Addressbook_DB(PersonId INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
Address VARCHAR(100) NOT NULL,
City VARCHAR(30) NOT NULL,
State VARCHAR(20) NOT NULL,
ZipCode INT NOT NULL,
PhoneNumber  BIGINT NOT NULL,
Email VARCHAR (50) NOT NULL
);

--SELECT QUERY UC2
SELECT *FROM Addressbook_DB

--insert query from UC3
INSERT INTO Addressbook_DB(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,Email)
VALUES('Amol','Salunke','Location','Mumbai','Maharashtra',402209,8390266064,'amol@gmail.com'),
('A','Salunke','Location','Mumbai','Maharashtra',402209,8390266064,'amol@gmail.com'),
('Ashu','Salunke','Location','Mumbai','Maharashtra',402209,8390266064,'amol@gmail.com')

--Update query UC4
UPDATE Addressbook_DB SET LastName = 'Salunkhe' WHERE FirstName ='A'
UPDATE Addressbook_DB SET Address ='other location' WHERE LastName = 'Salunke'
UPDATE Addressbook_DB SET City = 'Mumbai' WHERE Address = 'Location'

---DLETE Query UC5
DELETE FROM Addressbook_DB WHERE FirstName = 'Amol'

---retrive from city or state UC6
SELECT * FROM Addressbook_DB WHERE City = 'Mumbai'
SELECT * FROM Addressbook_DB WHERE State = 'Maharashtra'


---size of AddressBook UC7

SELECT COUNT (*) AS CityCount ,City FROM AddressBook_DB GROUP BY City
SELECT COUNT (*) AS StateCount ,State FROM AddressBook_DB GROUP BY State

---UC8 find first name as per the city
SELECT * FROM AddressBook_DB WHERE City ='Mumbai' ORDER BY FirstName

---UC9 
ALTER TABLE AddressBook_DB ADD AddressBookType VARCHAR(50)
ALTER TABLE AddressBook_DB ADD AddressBookName VARCHAR(50)

UPDATE AddressBook_DB
SET AddressBookType = 'Profession'
WHERE City = 'Mumbai'

UPDATE AddressBook_DB
SET AddressBookType = 'Ashu'
WHERE Address = 'other location'

UPDATE AddressBook_DB
SET AddressBookName = 'Ashu'
WHERE City = 'Mumbai'

----UC10
SELECT AddressBookType, COUNT (AddressBookType) AS NumberOfContactPresent FROM AddressBook_DB GROUP BY AddressBookType

-----insert
INSERT INTO AddressBook_DB(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,Email,AddressBookType,AddressBookName)
VALUES('rahul','patil','Raigad','Alibag','Maharashtra',402108,9112712717,'rahul@gmail.com','good friend','lalu')