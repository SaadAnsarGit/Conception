Create database coviddb;
Use coviddb;

create table client
(
  idClient int primary key identity(1,1),
  NumCarteIdentite varchar(50)
)

create table Test
(
   idTest int primary key identity(1,1),
   date datetime,
   type varchar(50),
   resultat varchar(50),
   practicien varchar(50),
   FK_idClient int foreign key references client (idClient)
)

Create Table Laboratoire
(
 idLaboratoire int primary key identity(1,1),
 Nom varchar(50)
)

Create table Vaccin
(
  idVaccin int primary key identity(1,1),
  date datetime,
  practicien varchar(50),
  FK_idLaboratoire int foreign key references Laboratoire (idLaboratoire),
  FK_idClient int foreign key references client (idClient)
)

create table Masque
(
  idMasque int primary key identity(1,1),
  date datetime,
  type varchar(50),
  FK_idClient int foreign key references client (idClient)
)

create table Stock
(
 id int primary key identity(1,1),
 date datetime,
 type varchar(50),
 nombre int,
 FK_idLaboratoire int foreign key references Laboratoire (idLaboratoire)
)





