USE INVENTARIO_APRENDICES
CREATE TABLE Rutas(
nombre_ruta  nvarchar(200) NOT NULL,
numero_ruta INT NOT NULL,

);

INSERT INTO Rutas
	SELECT nombre_ruta,numero_ruta
	FROM Inventario;