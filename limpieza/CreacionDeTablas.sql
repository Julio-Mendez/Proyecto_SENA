--delete from Aprendiz where numero_documento in (select numero_documento from Aprendiz group by numero_documento having count(*)>1);
--delete from Programa where codigo_programa in (select codigo_programa from Programa group by codigo_programa having count(*)>1);
--
-- Crear tabla de relacion entre Aprendiz y Programa
--CREATE TABLE AprendizPrograma(numero_documento INT NOT NULL,codigo_programa INT NOT NULL);
--INSERT INTO AprendizPrograma SELECT numero_documento,codigo_programa FROM Inventario;

