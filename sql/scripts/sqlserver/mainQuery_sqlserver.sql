-- -----------------------------------------------------
-- 1. DATABASE bd_aspcrud_client
-- -----------------------------------------------------
CREATE DATABASE bd_aspcrud_client
GO

-- -----------------------------------------------------
-- 2. Table bd_aspcrud_client.tclient
-- -----------------------------------------------------
USE bd_aspcrud_client
GO

Create table tclient
(
idclient int not null identity (1,1),
clientNumber varchar (45) NULL DEFAULT NULL,
name varchar (45) NULL DEFAULT NULL,
lastName varchar (45) NULL DEFAULT NULL,
email varchar (45) NULL DEFAULT NULL,
img varchar(45) NULL DEFAULT NULL,
address varchar (45) NULL DEFAULT NULL,
cardNumber varchar (45) NULL DEFAULT NULL,
primary key (idclient),
)

-- -----------------------------------------------------
-- 3. PROCEDURE selectallTclient
-- -----------------------------------------------------
USE bd_aspcrud_client
GO

CREATE PROCEDURE selectallTclient

AS
BEGIN
select * from tclient
END
GO

-- -----------------------------------------------------
-- 4. PROCEDURE selectClientByid
-- -----------------------------------------------------
USE [bd_aspcrud_client]
GO

CREATE proc [dbo].[selectClientByid]
@aidclient int = null
as
Begin
select * from tclient where idclient = @aidclient
end
go

-- -----------------------------------------------------
-- 5. PROCEDURE spserver_save_client
-- -----------------------------------------------------
USE bd_aspcrud_client
GO

CREATE PROCEDURE spserver_save_client
@aidclient int = null,
@aclientNumber varchar(45) = null,
@aname varchar(45) = null,
@alastName varchar(45) = null,
@aemail varchar(45) = null,
@aimg varchar(45) = null,
@aaddress varchar(45) = null,
@acardNumber varchar(45) = null

AS
BEGIN

IF @aidclient = 0
INSERT INTO tclient(clientNumber,name,lastName,email,img,address,cardNumber)
VALUES (@aclientNumber,@aname,@alastName,@aemail,@aimg,@aaddress,@acardNumber);
-- SELECT 
-- MAX(idclient)
-- INTO @aidclient FROM
-- tclient;
ELSE
UPDATE tclient 
SET clientNumber = @aclientNumber , name = @aname , lastName = @alastName ,email = @aemail , img = @aimg , address = @aaddress , cardNumber = @acardNumber
WHERE idclient = @aidclient 

END
GO

-- -----------------------------------------------------
-- 6. PROCEDURE deleteTclient
-- -----------------------------------------------------
USE bd_aspcrud_client
GO

CREATE PROCEDURE deleteTclient
@aidclient int = null
AS
BEGIN

DELETE FROM tclient where idclient= @aidclient

END
GO

-- -----------------------------------------------------
-- 7. EXEC spserver_save_client
-- -----------------------------------------------------
USE bd_aspcrud_client
GO

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C1C1',
@aname  = 'Bill',
@alastName  = 'Gates',
@aemail  = 'gates@microsoft.com',
@aimg  = 'gates.png',
@aaddress  = '3540 Masson',
@acardNumber = '123456'

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C2C2',
@aname  = 'Steve',
@alastName  = 'Jobs',
@aemail  = 'jobs@apple.com',
@aimg  = 'jobs.png',
@aaddress  = '148 Cousineau',
@acardNumber = '123457'

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C3C3',
@aname  = 'Oprah',
@alastName  = 'Winfreh',
@aemail  = 'oprah@google.com',
@aimg  = 'winfreh.png',
@aaddress  = '3030 Hochelaga',
@acardNumber = '123458'

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C5C5',
@aname  = 'Salvador',
@alastName  = 'Dali',
@aemail  = 'dali@google.com',
@aimg  = 'dali.png',
@aaddress  = '1545 La Jounnesse',
@acardNumber = '123459'

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C4C4',
@aname  = 'Rosa',
@alastName  = 'Huerta',
@aemail  = 'huerta@google.com',
@aimg  = 'huerta.png',
@aaddress  = '227 Belanger',
@acardNumber = '123469'

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C6C6',
@aname  = 'Wendy',
@alastName  = 'Savala',
@aemail  = 'savala@google.com',
@aimg  = 'savala.png',
@aaddress  = '3030 Hochelaga',
@acardNumber = '123479'


exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C7C7',
@aname  = 'Mark',
@alastName  = 'Zurembek',
@aemail  = 'mark@facebook.com',
@aimg  = 'zurembek.png',
@aaddress  = '616 Place Brazeau',
@acardNumber = '123489'

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C8C8',
@aname  = 'Antonio',
@alastName  = 'Maya',
@aemail  = 'maya@facebook.com',
@aimg  = 'maya.png',
@aaddress  = '316 Chilpa',
@acardNumber = '123499'

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C9C9',
@aname  = 'Itzel',
@alastName  = 'Alvaro',
@aemail  = 'itzel@facebook.com',
@aimg  = 'alvaro.png',
@aaddress  = '527 Alexander',
@acardNumber = '123599'

exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C10C10',
@aname  = 'Fanny',
@alastName  = 'Santos',
@aemail  = 'santos@facebook.com',
@aimg  = 'santos.png',
@aaddress  = '333 Saint-Croax',
@acardNumber = '123699'


exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C11C11',
@aname  = 'Manuel',
@alastName  = 'Brizuela',
@aemail  = 'brizuela@facebook.com',
@aimg  = 'brizuela.png',
@aaddress  = '148 Cousineau',
@acardNumber = '123799'


exec spserver_save_client
@aidclient = 0,
@aclientNumber  = 'C12C12',
@aname  = 'Pedro',
@alastName  = 'Espana',
@aemail  = 'espana@facebook.com',
@aimg  = 'espana.png',
@aaddress  = '555 Tacherau',
@acardNumber = '123899'