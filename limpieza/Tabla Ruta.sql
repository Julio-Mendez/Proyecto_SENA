USE INVENTARIO_APRENDICES
CREATE TABLE Ruta(
numero_ruta INT NOT NULL,
nombre_ruta nvarchar (200) NOT NULL

);

INSERT INTO Ruta
	SELECT numero_ruta,nombre_ruta
	FROM Inventario;