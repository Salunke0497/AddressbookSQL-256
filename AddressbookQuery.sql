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

--SELECT QUERY
SELECT *FROM Addressbook_DB

--insert query from UC
INSERT INTO Addressbook_DB(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,Email)
VALUES('Amol','Salunke','Location','Mumbai','Maharashtra',402209,8390266064,'amol@gmail.com'),
('A','Salunke','Location','Mumbai','Maharashtra',402209,8390266064,'amol@gmail.com'),
('Ashu','Salunke','Location','Mumbai','Maharashtra',402209,8390266064,'amol@gmail.com')

--Update query
UPDATE Addressbook_DB SET LastName = 'Salunkhe' WHERE FirstName ='A'
UPDATE Addressbook_DB SET Address ='other location' WHERE LastName = 'Salunke'
UPDATE Addressbook_DB SET City = 'Raigad' WHERE Address = 'Location'

---DLET Query
DELETE FROM Addressbook_DB WHERE FirstName = 'Amol'