/*===================================
Autor: Clovis Ferreira
Fecha de Creación: 14/5/2019
Descripción: Script de estructura
===================================*/

BEGIN TRANSACTION;



IF @@ERROR<>0 
	ROLLBACK
IF @@ERROR=0 AND @@TRANCOUNT>0
	COMMIT;
