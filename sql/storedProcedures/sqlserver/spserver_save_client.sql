-- -----------------------------------------------------
-- 5. PROCEDURE spserver_save_client
-- -----------------------------------------------------

USE bd_aspcrud__client
GO

CREATE PROCEDURE spserver_save_client

@aidclient int = null,
@aclientNumber varchar (45) = null,
@aname varchar (45) = null,
@alastName varchar (45) = null,
@aemail varchar (45) = null,
@aimg varchar (45) = null,
@aaddress varchar (45) = null,
@acardNumber varchar (45) = null

AS
BEGIN

IF @aidclient = 0
INSERT INTO tclient(clientNumber,name,lastname,email,img,address,cardNumber)
VALUES (@aclientNumber,@aname,@alastname,@aemail,@aimg,@aaddress,@acardNumber)
ELSE
UPDATE tclient
SET clientNumber = @aclientNumber, name = @aname, lastname = @alastname, email = @aemail, img = @aimg, address = @aaddress, cardNumber = @acardNumber
WHERE idclient = @aidclient

END 
GO

exec spserver_save_client
@aidclient = 0,
@aclientNumber = 'C45C45',
@aname = 'Ricardo',
@alastName = 'Mendoza',
@aemail = 'omnimtv@gmail.com',
@aimg ='mendoza.jpg',
@aaddress = '3540 Masson',
@acardNumber = '999999999'