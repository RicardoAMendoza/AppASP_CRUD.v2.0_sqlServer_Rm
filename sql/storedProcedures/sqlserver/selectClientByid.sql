-- -----------------------------------------------------
-- 4. PROCEDURE selectClientByid
-- -----------------------------------------------------

USE bd_aspcrud_client
GO

CREATE PROCEDURE selectClientByid

@aidclient int = null
AS
BEGIN
SELECT * FROM tclient where idclient = @aidclient
END
GO
