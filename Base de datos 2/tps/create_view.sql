/*CREAR VISTA*/
/*ALTER*/CREATE VIEW Productos --WITH ENCRYPTION, ESTA SENTECIA ENCRIPTA LA VISTA PARA NO MOSTRAR COMO FUE CREADA.
AS 
SELECT P.Name AS NOMBRE
FROM Production.Product P;

/*SELECCIONO VISTA*/
SELECT * FROM Productos

/*MUESTRA COMO SE CREO LA VISTA*/
sp_helptext Productos
