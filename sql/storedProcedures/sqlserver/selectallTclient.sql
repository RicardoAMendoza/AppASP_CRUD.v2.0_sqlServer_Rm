-- -----------------------------------------------------
-- 3. PROCEDURE selectallTclient
-- -----------------------------------------------------

USE bd_aspcrud_client
GO

CREATE PROCEDURE selectallTclient

AS
BEGIN
SELECT * FROM tclient
END
GO