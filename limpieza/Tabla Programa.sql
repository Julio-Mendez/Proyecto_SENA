USE INVENTARIO_APRENDICES
CREATE TABLE Programa(
codigo_programa INT NOT NULL,
version_programa INT NOT NULL,
nivel_formacion nvarchar (50) NOT NULL,
codigo_sede INT  NOT NULL,

);

INSERT INTO Programa
	SELECT codigo_programa,version_programa,nivel_formacion,codigo_sede
	FROM Inventario;