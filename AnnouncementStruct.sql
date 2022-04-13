create database TapAz

create table Settings(
id int primary key identity ,
Logo nvarchar(150),
[Location] nvarchar(100),
Email nvarchar(100),
Phone nvarchar(100),
Phone2 nvarchar(100),
IgUrl nvarchar(100),
FbUrl nvarchar(100)
)

create  table Advertisement(
id int primary key identity ,
[Image] nvarchar(100),
[Url] nvarchar(100)
)

Create table Catagories(
id int primary key identity ,
[Name] nvarchar(100),
)

Create table SubCategories(
id int primary key identity ,
[Name] nvarchar(100),
Categoriy_Id int foreign key references Catagories(id)
)

Create table Brands(
id int primary key identity ,
[Name] nvarchar(100),
SubCategoriy_Id int foreign key references SubCategories(id)
)

Create table GasTypes(
id int primary key identity ,
[Name] nvarchar(100)
)

Create table Color(
id int primary key identity ,
[Name] nvarchar(100)
) 

create table Cities(
id int primary key identity ,
[Name] nvarchar(100),
)

create table Models(
id int primary key identity ,
[Name] nvarchar(100),
Engine smallint,
Release smalldatetime,
Km int,
Model_Id int foreign key references Models(id),
Gas_Id int foreign key references GasTypes(id),
Color_Id int foreign key references Color(id)
)

create table Announcement(
id int primary key identity ,
Price decimal(5,2),
Article nvarchar(50),
City_Id int foreign key references Cities(id),
Brand_Id int foreign key references Brands(id),
Model_Id int foreign key references Models(id),
Gas_Id int foreign key references GasTypes(id),
Color_Id int foreign key references Color(id),
SubCategoriy_Id int foreign key references SubCategories(id)
)

Create table Images(
id int primary key identity ,
[Name] nvarchar(100),
Announcement_id int foreign key references Announcement(id)
)
