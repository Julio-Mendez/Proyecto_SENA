
USE INVENTARIO_APRENDICES
CREATE TABLE Regional(
codigo_regional INT NOT NULL,
nombre_regional VARCHAR(50) NOT NULL,
);

INSERT INTO Regional
	SELECT codigo_regional,regional
	FROM Inventario;

CREATE TABLE Sede(
codigo_sede INT NOT NULL,
nombre_sede VARCHAR(50) NOT NULL,
codigo_regional  INT NOT NULL,
);

INSERT INTO Sede
	SELECT codigo_sede,nombre_sede,codigo_regional
	FROM Inventario;