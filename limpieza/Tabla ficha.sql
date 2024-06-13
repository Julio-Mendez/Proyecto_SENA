USE INVENTARIO_APRENDICES
CREATE TABLE Ficha(
codigo_ficha INT NOT NULL,
fecha_inicio DATETIME NOT NULL,
fecha_fin DATETIME  NOT NULL,
jornada varchar(50)  NOT NULL,
estado_ficha nvarchar(30) NOT NULL,
codigo_programa INT NOT NULL,
numero_ruta INT NOT NULL,


);

INSERT INTO Ficha
	SELECT  ficha ,fecha_inicio,fecha_fin,jornada,estado_ficha,codigo_programa,numero_ruta
	FROM Inventario;