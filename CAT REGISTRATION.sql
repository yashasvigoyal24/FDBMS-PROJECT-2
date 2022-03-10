CREATE DATABASE Cat_Responses;
USE Cat_Responses;
Create Table Personal_Details(
CAT_ID varchar(16) Not null,
Name varchar(100) Not null,
DateOfBirth Date Not null,
Gender varchar(10) Not Null,
MaritalStatus varchar(10) Not Null,
Nationality varchar(20) Not Null
);
Insert into Personal_Details values ('CAT001', "Atif Rasool Siddiqui", '1997.08.29', 'Male', 'Unmarried', 'Indian');
Create Table Family_Details(
CAT_ID varchar(16) Not null,
FatherName varchar(100) Not null,
FatherOccupation varchar(100) Not null,
FatherMobileNumber bigint not null,
MotherName varchar(100) Not null,
MotherOccupation varchar(100) Not null,
MotherMobileNumber bigint not null
);
Insert into Family_Details values ('CAT001', 'Ausaf Rasul Siddiqui', 'Engineer', 9650057636, 'Iffat Siddiqui', 'Housewife', 8530970954);
Create Table SSC(
CAT_ID varchar(16) Not null,
SchoolName varchar(100) Not null,
YearOfPassing int Not null,
BoardOfEducation varchar(10) Not Null,
Stream varchar(20) Not Null,
CGPAscore int Not Null,
MarksPercentage int Not Null
);
Insert into SSC values ('CAT001', 'DPS', 2013, 'CBSE', 'NA', 9.6, 96);
Create Table HSC(
CAT_ID varchar(16) Not null,
SchoolName varchar(100) Not null,
YearOfPassing int Not null,
BoardOfEducation varchar(10) Not Null,
Stream varchar(20) Not Null,
MarksPercentage int Not Null
);
Insert into HSC values ('CAT001', 'DPS Jeddah', 2015,'IB', 'Science', 81.8);
Create Table UG_Details(
CAT_ID varchar(16) Not null,
NameCollege varchar(20) Not Null,
University varchar(20) not null,
Course varchar(20) Not Null,
YearOfCompletion int Not Null,
OverallCGPA int Not Null,
MarksPercentage int Not Null
);
Insert into UG_Details values ('CAT001', 'Motilal Nehru', 'Delhi University',	'BTech', 2021, 6.2, 62);
Create Table Proffesional_Experience(
CAT_ID varchar(16) Not null,
Experience int Not null,
PreviousJobRole varchar(20) not null,
PreviousEmployerName varchar(20) not null,
NatureofResponsibilities varchar(20) not null
);
Insert into Proffesional_Experience values ('CAT001', 0, 'NA', 'NA', 'NA');
CREATE USER 'empire'@'localhost' IDENTIFIED BY 'karan';
CREATE USER 'empire2'@'localhost' IDENTIFIED BY 'eshaan' ;
CREATE USER 'empire3'@'localhost' IDENTIFIED BY 'aarti' ;


-- dba
grant create,drop,select on *.* to 'empire'@'localhost' with grant option ;

-- candidate
grant select, insert, delete, update on Cat_Responses_Db.Personal_Details to 'empire2'@'localhost';
grant select, insert on Cat_Responses_Db.Contact_Details to 'empire2'@'localhost';
grant insert, delete, select, update on Cat_Responses_Db.Family_Details to 'empire2'@'localhost';
grant update on Cat_Responses_Db.Family_Details to 'empire2'@'localhost';
grant update on Cat_Responses_Db.UG_Details to 'empire2'@'localhost';

-- Admin
grant select, update on Cat_Responses_Db.Personal_Details to 'empire3'@'localhost';
grant select, insert, delete, update on Cat_Responses_Db.Contact_Details to 'empire3'@'localhost';
grant select on Cat_Responses_Db.UG_Details to 'empire3'@'localhost';
grant select on Cat_Responses_Db.UG_Details to 'empire3'@'localhost';
ALTER TABLE cat_candidate_details_db 
ADD CONSTRAINT cat_candidate_details_db PRIMARY KEY (CAT_ID);





