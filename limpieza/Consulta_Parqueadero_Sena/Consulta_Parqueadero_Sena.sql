--Consulta 1
select Nombre_Estudiante 
from estudiantes

--Consulta 2
select Nombre_Acudiente
from acudientes

--Consulta 3
select *
from acudientes

--Consulta 4
select *
from motos

--Consulta 5
select [Nombre_Estudiante],[Genero_Estudiante],[Fecha_Nac_Estudiante]
from estudiantes

--Consulta 6
select Nombre_Acudiente as acudiente, Celular_Acudiente as movil, Correo_Acudiente as email 
from acudientes

--Consulta 7
select lower (Nombre_Estudiante) as Nombre_Estudiante
from estudiantes;

--Consulta 8
select Placa_Moto
from motos
where Color_Moto = 'ROJO'

--Consulta 9
select distinct Placa_Moto
from motos
where Color_Moto = 'AZUL'

--Consulta 10
select Nombre_Acudiente
from acudientes
order by Nombre_Acudiente asc

--Consulta 11
select Nombre_Estudiante
from estudiantes
order by Nombre_Estudiante desc

--Consulta 12
select top(5) *
from acudientes

--Consulta 13
select top(1) [Nombre_Estudiante],[Fecha_Nac_Estudiante]
from estudiantes
order by Fecha_Nac_Estudiante desc

--Consulta 14
select Nombre_Acudiente
from acudientes
where Tipo_Acudiente = 'PADRE'

--Consulta 15
select nombre_estudiante
from estudiantes
where Genero_Estudiante = 'FEMENINO'

--Consulta 16
select placa_moto
from motos
where Modelo_Moto > 2010

--Consulta 17
select placa_moto
from motos
where Modelo_Moto >= 2015

--Consulta 18
select placa_moto
from motos
where Modelo_Moto between (2005) and (2015)

--Consulta 19
select placa_moto
from motos
where Modelo_Moto > 2005 and Color_Moto = 'AZUL'

--Consulta 20
select nombre_estudiante
from estudiantes
where Nombre_Estudiante like 'M%'

--Consulta 21
select nombre_acudiente 
from acudientes
where Nombre_Acudiente like '%A'

--Consulta 22
select nombre_estudiante
from estudiantes
where Nombre_Estudiante like '%O%'

--Consulta 23
select nombre_estudiante
from estudiantes
where len(Nombre_Estudiante) = '5'