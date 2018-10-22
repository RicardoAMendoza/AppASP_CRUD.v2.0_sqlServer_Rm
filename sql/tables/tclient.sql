-- -----------------------------------------------------
-- 2. Table bd_aspcrud_client.tclient
-- -----------------------------------------------------

USE bd_aspcrud_client
GO

CREATE TABLE tclient
(
idclient int not null identity(1,1),
clientNumber varchar (45) null default null,
name varchar (45) null default null,
lastName varchar (45) null default null,
email varchar (45) null default null,
img varchar (45) null default null,
address varchar (45) null default null,
cardNumber varchar (45) null default null,
primary key (idclient),
)