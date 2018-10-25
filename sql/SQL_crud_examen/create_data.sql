-- -----------------------------------------------------
-- 1. Data base bd_aspcrud_examen
-- -----------------------------------------------------
CREATE DATABASE bd_aspcrud_examen
Go

-- -----------------------------------------------------
-- 2. Table bd_aspcrud_examen.tagencies, bd_aspcrud_examen.temployee, bd_aspcrud_examen.tclient
-- -----------------------------------------------------

USE bd_aspcrud_examen
Go

CREATE TABLE tagencies(
idagencies int identity(1,1) not null PRIMARY KEY,
agencyNumber varchar (45) null,
name varchar  (45) null,
address varchar (45) null,
idbank int not null,
idtdirectoragencie int null
)

CREATE TABLE temployee(
idemployee int identity(1,1) not null  PRIMARY KEY,
employeeNumber varchar (45) null,
name varchar (45) null,
lastName varchar (45) null,
email varchar (45) null,
img varchar (45) null,
hiringDate date null,
idagencies int not null
)

CREATE TABLE tclient(
idclient int identity(1,1) not null PRIMARY KEY,
clientNumber varchar (45) null,
name varchar (45) null,
lastName varchar (45) null,
email varchar (45) null,
img varchar (45) null,
address varchar (45) null,
cardNumber varchar (45) null,
nip varchar (45) null,
idagencies int not null,
idemployee int not null

--- REFERNCES
CONSTRAINT RELATION_A_tagencies FOREIGN KEY (idagencies) REFERENCES tagencies(idagencies),
CONSTRAINT RELATION_A_temployee FOREIGN KEY (idemployee) REFERENCES temployee(idemployee)
)

-- -----------------------------------------------------
-- 3. PROCEDURE spserver_save_employee
-- -----------------------------------------------------
USE bd_aspcrud_examen
GO
CREATE PROCEDURE spserver_save_employee
@aidemployee int = null,
@aemployeeNumber varchar (45) = null,
@aname varchar (45) = null,
@alastName varchar (45) = null,
@aemail varchar (45) = null,
@aimg varchar (45) = null,
@ahiringDate date = null,
@aidagencies int = null

AS
Begin

IF @aidemployee = 0
INSERT INTO temployee (employeeNumber, name, lastName, email, img, hiringDate, idagencies)
VALUES (@aemployeeNumber, @aname, @alastName, @aemail, @aimg, @ahiringDate, @aidagencies);
ELSE
UPDATE temployee 
SET employeeNumber=@aemployeeNumber,name=@aname,lastName=@alastName,email=@aemail,img=@aimg,hiringDate=@ahiringDate,idagencies=@aidagencies
WHERE idemployee = @aidemployee;
END 
GO

-- spserver_save_employee

USE bd_aspcrud_examen
GO
EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E1E1',
@aname  = 'Juan',
@alastName = 'Zamanego',
@aemail  = 'zamanego@gamil.com',
@aimg  = 'zamanego.png',
@ahiringDate  = '2017-02-23',
@aidagencies  = 6

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E3E3',
@aname  = 'Cesar',
@alastName = 'Silva',
@aemail  = 'cesar@gmail.com',
@aimg  = 'silva.png',
@ahiringDate  = '2014-09-19',
@aidagencies  = 6

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E4E4',
@aname  = 'Ana',
@alastName = 'Fernandez',
@aemail  = 'fernandez@gmail.com',
@aimg  = 'fernandez.png',
@ahiringDate  = '2013-11-15',
@aidagencies  = 6

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E2E2',
@aname  = 'Rauoul',
@alastName = 'Nguiya',
@aemail  = 'raoul@gmail.com',
@aimg  = 'nguiya.png',
@ahiringDate  = '2013-03-23',
@aidagencies  = 7

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E5E5',
@aname  = 'Maria',
@alastName = 'Houda',
@aemail  = 'maria@google.com',
@aimg  = 'houda.png',
@ahiringDate  = '2012-01-01',
@aidagencies  = 7

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E6E6',
@aname  = 'Maria',
@alastName = 'Arteaga',
@aemail  = 'arteaga@gmail.com',
@aimg  = 'arteaga.png',
@ahiringDate  = '2011-02-03',
@aidagencies  = 7

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E7E7',
@aname  = 'Maria',
@alastName = 'Madany',
@aemail  = 'madany@google.com',
@aimg  = 'madany.png',
@ahiringDate  = '2015-08-10',
@aidagencies  = 8

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E8E8',
@aname  = 'Roseely',
@alastName = 'Brand',
@aemail  = 'brand@gmail.com',
@aimg  = 'brand.png',
@ahiringDate  = '2012-05-13',
@aidagencies  = 8

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E10E10',
@aname  = 'Esmeralda',
@alastName = 'Mafogue',
@aemail  = 'esmeralda@gmail.com',
@aimg  = 'mafogue.png',
@ahiringDate  = '2000-09-02',
@aidagencies  = 8

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E9E9',
@aname  = 'Silvayn',
@alastName = 'Trudeau',
@aemail  = 'trudeau@gmail.com',
@aimg  = 'trudeau.png',
@ahiringDate  = '2012-04-21',
@aidagencies  = 9

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E11E11',
@aname  = 'Brack',
@alastName = 'Obama',
@aemail  = 'obama@gamil.com',
@aimg  = 'brand.png',
@ahiringDate  = '1999-01-12',
@aidagencies  = 9

EXEC [dbo].[spserver_save_employee] 
@aidemployee  = 0,
@aemployeeNumber  = 'E12E12',
@aname  = 'Benoit',
@alastName = 'Fracoise',
@aemail  = 'benoit@gmail.com',
@aimg  = 'francoise.png',
@ahiringDate  = '1998-04-03',
@aidagencies  = 9

drop procedure spserver_save_employee

-- -----------------------------------------------------
-- 4. PROCEDURE spserver_save_agencie
-- -----------------------------------------------------

ALTER TABLE tagencies ADD lastName varchar (45)
ALTER TABLE tagencies DROP column lastName
drop procedure spserver_save_agencies

USE bd_aspcrud_examen
GO
                 
CREATE PROCEDURE spserver_save_agencies
@aidagencies int = null,
@aagencyNumber varchar (45) = null,
@aname varchar (45) = null,
@aaddress varchar (45) = null,
@aidbank int = null,
@aidtdirectorAgencie int = null
AS
BEGIN
IF @aidagencies=0
INSERT INTO tagencies (agencyNumber,name, address, idbank,idtdirectoragencie)
VALUES (@aagencyNumber,@aname, @aaddress, @aidbank, @aidtdirectorAgencie);
ELSE
UPDATE tagencies
SET agencyNumber=@aagencyNumber, name = @aname, address= @aaddress, idbank=@aidbank, idtdirectoragencie=@aidtdirectorAgencie
WHERE idagencies=@aidagencies
END
GO 

-- spserver_save_agencies

EXEC [dbo].[spserver_save_agencies] 
@aidagencies = 0,
@aagencyNumber = 'A1A1',
@aname = 'Rosemont NB',
@aaddress = '2727 Rosemont',
@aidbank = 3,
@aidtdirectorAgencie = 1

EXEC [dbo].[spserver_save_agencies] 
@aidagencies = 0,
@aagencyNumber = 'A2A2',
@aname = 'MontRoyal NB',
@aaddress = '3131 MontRoyal',
@aidbank = 3,
@aidtdirectorAgencie = 2

EXEC [dbo].[spserver_save_agencies] 
@aidagencies = 0,
@aagencyNumber = 'A3A3',
@aname = 'Beaubien NB',
@aaddress = '247 Beaubien',
@aidbank = 3,
@aidtdirectorAgencie = 3

EXEC [dbo].[spserver_save_agencies] 
@aidagencies = 0,
@aagencyNumber = 'A4A4',
@aname = 'Alexander NB',
@aaddress = '456 Alexander',
@aidbank = 3,
@aidtdirectorAgencie = 2

-- @aidtdirectorAgencie = 1

ALTER TABLE tagencies DROP column idtdirectoragencie
ALTER TABLE tagencies ADD idtdirectorAgencie varchar (45)

select * from tagencies
select * from temployee

-- -----------------------------------------------------
-- 4. PROCEDURE spserver_save_clients
-- -----------------------------------------------------

USE bd_aspcrud_examen
GO

CREATE PROCEDURE spserver_save_client
@aidclient int = null,
@aclientNumber varchar (45) = null,
@aname varchar (45) = null,
@alastName varchar (45) = null,
@aemail varchar (45) = null,
@aimg varchar (45) =null,
@aaddress varchar (45) = null,
@acardNumber varchar (45) = null,
@anip varchar (45) = null,
@aidagencies int = null,
@aidemployee int = null
AS
BEGIN
IF @aidclient= 0
INSERT INTO tclient
(clientNumber,name,lastName,email,img,address,cardNumber,nip,idagencies,idemployee)
VALUES
(@aclientNumber,@aname,@alastName,@aimg,@aimg,@aaddress,@acardNumber,@anip,@aidagencies,@aidemployee);
ELSE
UPDATE tclient
SET clientNumber=@aclientNumber,name=@aname,lastName=@alastName,img=@aimg,address=@aaddress,cardNumber=@acardNumber,nip=@anip,idagencies=@aidagencies,idemployee=@aidemployee
WHERE idclient=@aidclient
END
GO

-- spserver_save_client
exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C1C1',
@aname  = 'Bill',
@alastName  = 'Gates',
@aemail  = 'gates@microsoft.com',
@aimg  = 'gates.png',
@aaddress  = '3540 Masson',
@acardNumber = '123456',
@anip  = 'windows',
@aidagencies  = 1,
@aidemployee = 2

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C2C2',
@aname  = 'Steve',
@alastName  = 'Jobs',
@aemail  = 'jobs@apple.com',
@aimg  = 'jobs.png',
@aaddress  = '148 Cousineau',
@acardNumber = '123457',
@anip  = 'windows',
@aidagencies  = 1,
@aidemployee = 3

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C3C3',
@aname  = 'Oprah',
@alastName  = 'Winfreh',
@aemail  = 'oprah@google.com',
@aimg  = 'winfreh.png',
@aaddress  = '3030 Hochelaga',
@acardNumber = '123458',
@anip  = 'own',
@aidagencies  = 1,
@aidemployee = 4

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C5C5',
@aname  = 'Salvador',
@alastName  = 'Dali',
@aemail  = 'dali@google.com',
@aimg  = 'dali.png',
@aaddress  = '1545 La Jounnesse',
@acardNumber = '123459',
@anip  = 'pintor',
@aidagencies  = 2,
@aidemployee = 5

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C4C4',
@aname  = 'Rosa',
@alastName  = 'Huerta',
@aemail  = 'huerta@google.com',
@aimg  = 'huerta.png',
@aaddress  = '227 Belanger',
@acardNumber = '123469',
@anip  = 'unix',
@aidagencies  = 2,
@aidemployee = 6

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C6C6',
@aname  = 'Wendy',
@alastName  = 'Savala',
@aemail  = 'savala@google.com',
@aimg  = 'savala.png',
@aaddress  = '3030 Hochelaga',
@acardNumber = '123479',
@anip  = 'cpp',
@aidagencies  = 2,
@aidemployee = 7

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C7C7',
@aname  = 'Mark',
@alastName  = 'Zurembek',
@aemail  = 'mark@facebook.com',
@aimg  = 'zurembek.png',
@aaddress  = '616 Place Brazeau',
@acardNumber = '123489',
@anip  = 'facebook',
@aidagencies  = 3,
@aidemployee = 8

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C8C8',
@aname  = 'Antonio',
@alastName  = 'Maya',
@aemail  = 'maya@facebook.com',
@aimg  = 'maya.png',
@aaddress  = '316 Chilpa',
@acardNumber = '123499',
@anip  = 'alfonso13',
@aidagencies  = 3,
@aidemployee = 9

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C9C9',
@aname  = 'Itzel',
@alastName  = 'Alvaro',
@aemail  = 'itzel@facebook.com',
@aimg  = 'alvaro.png',
@aaddress  = '527 Alexander',
@acardNumber = '123599',
@anip  = 'quimica',
@aidagencies  = 3,
@aidemployee = 10

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C10C10',
@aname  = 'Fanny',
@alastName  = 'Santos',
@aemail  = 'santos@facebook.com',
@aimg  = 'santos.png',
@aaddress  = '333 Saint-Croax',
@acardNumber = '123699',
@anip  = 'veracruz',
@aidagencies  = 4,
@aidemployee = 11

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C11C11',
@aname  = 'Manuel',
@alastName  = 'Brizuela',
@aemail  = 'brizuela@facebook.com',
@aimg  = 'brizuela.png',
@aaddress  = '148 Cousineau',
@acardNumber = '123799',
@anip  = 'construccion',
@aidagencies  = 4,
@aidemployee = 12

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C12C12',
@aname  = 'Pedro',
@alastName  = 'Espana',
@aemail  = 'espana@facebook.com',
@aimg  = 'espana.png',
@aaddress  = '555 Tacherau',
@acardNumber = '123899',
@anip  = 'soldadura',
@aidagencies  = 4,
@aidemployee = 1

SELECT * from tagencies
SELECT * from temployee
SELECT * FROM tclient

use bd_aspcrud_examen
go

ALTER TABLE temployee ADD salary float

insert into temployee salary values (10000.00) WHERE  idemployee = 1

SELECT * from temployee

update temployee set salary = 100000 where idemployee=1

update temployee set salary = 2000 where idemployee=5

update temployee set salary = 3000 where idemployee = 11

update temployee set salary = 30000 where idemployee =9

-- examen

select name, lastName, img from temployee

select * from temployee order by salary

select * from temployee where salary is not null

select * from temployee where salary is null

SELECT * from tagencies
SELECT * from temployee
SELECT * FROM tclient
select idemployee, employeeNumber, name, lastName from temployee where idemployee  in (select idemployee from tclient where idclient = 4)
select idemployee, employeeNumber, name, lastName from temployee where idemployee not in (select idemployee from tclient where idclient = 4)

SELECT * FROM temployee
select AVG (salary) as Moyenne from temployee

select (sum(salary)/count(idemployee)) as Moyenne from temployee
go

Select count(idemployee) as 'Total employees' from temployee
go

select count(idemployee) as 'Total employees' from temployee where salary is not null
go


select 
b.employeeNumber,  count(idclient) as [Nombre de clients]
from tclient a left join temployee b
on a.idemployee=b.idemployee
GROUP BY employeeNumber
go
--SELECT * from tagencies
SELECT * from temployee
SELECT * FROM tclient
update tclient set idemployee = 4 where idclient =7
update tclient set idemployee = 4 where idclient =8
update tclient set idemployee = 1 where idclient =11
update tclient set idemployee = 1 where idclient=12

select 
employeeNumber,  count(idemployee) as [Nombre de clients]
from temployee group by idemployee having count(idemployee) >=2
go

select * from tclient

use bd_aspcrud_examen
go

CREATE PROCEDURE selectallTclient

AS
BEGIN
SELECT * FROM tclient
end
go

EXEC selectallTclient

use bd_aspcrud_examen
go

create procedure selectTclientByid
@aidclient int = null
As
BEGIN
select * from tclient where idclient=@aidclient
END
GO

EXEC selectTclientByid @aidclient=6

create procedure deleteTclientByid
@aidclient int = null
As
Begin
delete tclient where idclient = @aidclient
END
GO
SELECT * from tagencies