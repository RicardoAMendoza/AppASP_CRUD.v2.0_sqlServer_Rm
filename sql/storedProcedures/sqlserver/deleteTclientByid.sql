-- -----------------------------------------------------
-- 6. PROCEDURE deleteTclientByid
-- -----------------------------------------------------

USE bd_aspcrud_client
GO

CREATE PROCEDURE deleteTclientByid

@aidclient int = null
AS
BEGIN

DELETE FROM tclient where idclient = @aidclient

END 
GO

