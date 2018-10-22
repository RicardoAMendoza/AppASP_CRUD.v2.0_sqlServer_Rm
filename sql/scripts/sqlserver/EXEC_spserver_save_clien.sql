
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