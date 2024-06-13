USE INVENTARIO_APRENDICES
CREATE TABLE Aprendiz(
tipo_documento VARCHAR(10) NOT NULL,
numero_documento INT NOT NULL,
estado_aprendiz nvarchar (50) NOT NULL,
motivo_novedad nvarchar (255) NOT NULL,
fecha_registro_novedad nvarchar(100) NOT NULL,
codigo_programa INT NOT NULL,
codigo_ficha INT NOT NULL
);

INSERT INTO Aprendiz
	SELECT tipo_documento,numero_documento,estado_aprendiz,motivo_novedad,fecha_registro,codigo_programa,ficha
	FROM Inventario;
