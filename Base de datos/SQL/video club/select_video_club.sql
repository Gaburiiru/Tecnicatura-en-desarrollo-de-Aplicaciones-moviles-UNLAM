INSERT INTO proveedor(CUIT,nombre,domicilio,telefono,mail) 
 VALUES (23252221117,"Distribuidora1","arieta1555",54662200,"hola@hotmail.com"),
 (45254544571,"Juan Perez",NULL,23523256,NULL),
 (3365465410,"Andres Gonzales",NULL,33665544,"andres@gmail.com");
 
 INSERT INTO Localidad(id_localidad,Cod_post,Descripcion)VALUES
(1,1753,"VILLA LUZURIAGA"),
(2,1752,"LOMAS DEL MIRADOR"),
(3,1754,"SAN JUSTO"),
(4,1778,"CIUDAD EVITA"),
(5,1785,"ALDO BONZI"),
(6,1768,"CIUDAD MADERO"),
(7,1704,"RAMOS MEJIA");
 
 INSERT INTO GeneroPelicula(id_Genero,Abrev,Descripcion) VALUES
(1,"COM","COMEDIA"),
(2,"COMR","COMEDIA ROMANTICA"),
(3,"ACC","ACCION"),
(4,"AVE","AVENTURA"),
(5,"DRA","DRAMA"),
(6,"TER","TERROR"),
(7,"MUS","MUSICAL"),
(8,"CFIC","CIENCIA FICCION"),
(9,"BEL","BELICA"),
(10,"INF","INFANTIL"),
(11,"SUSP","SUSPENSO");
   
INSERT INTO pelicula(cod_pel,titulo,id_genero,CUIT_prov)VALUES
("A1","EL PADRINO",5,23252221117),
("A2","CINEMA PARADISO",5,23252221117),
("A3","FORREST GUMP",5,3365465410),
("A4","EL CLUB DE LA PELEA",5,3365465410),
("A5","MAGO DE OZ",7,45254544571),
("A6","CANTANDO BAJO LA LLUVIA",7,45254544571),
("A7","DIRTY DANCING",7,45254544571),
("A8","MOULING ROUGE",7,45254544571),
("A9","TOY STORY 1",10,3365465410),
("A10","RATATUILLE",10,3365465410),
("A11","UP",10,23252221117),
("A12","LA MASCARA",1,23252221117),
("A13","LOCO POR MARY",1,3365465410),
("A14","SCARY MOVIE",1,3365465410),
("A15","2001:ODISEA DEL ESPACIO",8,23252221117),
("A16","E.T EL EXTRATERRESTE",8,23252221117),
("A17","MATRIX",8,23252221117),
("A18","INDIANA JONE:EN BUSCA DEL ARCA PERDIDA",4,3365465410),
("A19","CUENTA CONMIGO",4,3365465410),
("A20","NAUFRAGO",4,3365465410),
("A21","SENDEROS DE GLORIA",9,23252221117),
("A22","LA VIDA ES BELLA",9,23252221117);
    
INSERT INTO CLIENTE (id_Cliente,Tipo_Doc,Nro_Doc,Nombre,Telefono,Domicilio_Calle,Domicilio_Nro,Domicilio_Piso,Domicilio_Depto,id_Localidad,F_Nacimiento,id_Cliente_Titular) VALUES
(1,"DNI",1111,"JUAN",111223344,"ARIETA",1522,1,"A",1,1/5/1995,NULL),
(2,"DNI",2222,"ANDRES",111234556,"ARIETA",3522,NULL,NULL,3,18/12/1985,1),
(3,"DNI",3333,"MARCELA",111223355,"AVENIDA DE MAYO",522,4,"C",7,3/6/1999,1),
(4,"DNI",4444,"JOSE",111234577,"BOLIVAR",650,6,"41",7,4/2/1977,NULL),
(5,"DNI",5555,"DIEGO",111223399,"ROSALES",322,1,"A",7,8/9/1979,NULL),
(6,"DNI",6666,"MAURO",NULL,"REPUBLICA DE CHILE",3052,NULL,NULL,3,5/11/1996,NULL), 
(7,"DNI",7777,"KARINA",NULL,"JUJUY",3501,NULL,NULL,3,10/8/1999,6),
(8,"DNI",8888,"VALERIA",111234556,"ALSINA",155,3,"C",7,5/4/1987,NULL),
(9,"DNI",9999,"LARA",111234556,"REPUBLICA DE CHILE",155,NULL,NULL,1,10/9/1999,NULL);
 
 INSERT INTO Alquiler(cod_pel,idCliente,fecha,Fecha_Dev,importe) VALUES
("A5",2,20210502,20210503,150),
("A6",2,20210716,20210717,300),
("A12",3,20210929,20211002,300),
("A17",4,20210527,20210528,150),
("A20",3,20210925,20210926,150),
("A17",3,20210925,20210926,150),
("A20",7,20210717,20210718,150),
("A12",8,20210909,20210911,250),
("A19",3,20210626,20210628,250),
("A7",7,20210611,20210614,300),
("A8",2,20210909,20210910,150),
("A20",2,20210621,20210622,150),
("A12",7,20210610,20210611,150),
("A7",8,20210829,20210830,150),
("A6",9,20210717,20210718,150),
("A5",7,20210819,20210821,250);