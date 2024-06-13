--Pasamos los datos que tenemos como nulos en columna numero_certificado a un valor igual a 0.
update dbo.Inventario_SENA
set NUMERO_CERTIFICADO = 0
where NUMERO_CERTIFICADO = ''

--Pasamos los datos que tenemos como nulos en columna fecha_certificado a un valor igual a 0.
update dbo.Inventario_SENA
set FECHA_CERTIFICADO = 0
where FECHA_CERTIFICADO = ''

--Pasamos los datos que tenemos como nulos en columna Motivo_novedad a un valor igual a 0.
update dbo.Inventario_SENA
set MOTIVO_NOVEDAD = 0
where MOTIVO_NOVEDAD = ''

--Pasamos todos los datos tipo texto de la columna motivo_novedad a mayuscula.
update  dbo.Inventario_SENA
set MOTIVO_NOVEDAD = upper(MOTIVO_NOVEDAD)

--Eliminamos la columna noname ya que no contiene ningun dato y es irrelevante para la base de datos
alter table Inventario_SENA
drop column NoName;

--Cambiamos los nombres de las columnas de la tabala inventario_SENA a minusculas
exec sp_rename 'Inventario_SENA.CODIGO_REGIONAL', 'Codigo_regional', 'COLUMN';
exec sp_rename 'Inventario_SENA.REGIONAL', 'Nombre_regional', 'COLUMN';
exec sp_rename 'Inventario_SENA.CODIGO_SEDE', 'Codigo_sede', 'COLUMN';
exec sp_rename 'Inventario_SENA.SEDE', 'Nombre_sede', 'COLUMN';
exec sp_rename 'Inventario_SENA.FICHA', 'Codigo_ficha', 'COLUMN';
exec sp_rename 'Inventario_SENA.NIVEL_FORMACION', 'Nivel_formacion', 'COLUMN';
exec sp_rename 'Inventario_SENA.CODIGO_PROGRAMA', 'Codigo_programa', 'COLUMN';
exec sp_rename 'Inventario_SENA.VERSION_PROGRAMA', 'Version_programa', 'COLUMN';
exec sp_rename 'Inventario_SENA.PROGRAMA', 'Programa', 'COLUMN';
exec sp_rename 'Inventario_SENA.FECHA_INICIO', 'Fecha_inicio', 'COLUMN';
exec sp_rename 'Inventario_SENA.FECHA_FIN', 'Fecha_fin', 'COLUMN';
exec sp_rename 'Inventario_SENA.JORNADA', 'Jornada', 'COLUMN';
exec sp_rename 'Inventario_SENA.TIPO_DOCUMENTO', 'Tipo_documento', 'COLUMN';
exec sp_rename 'Inventario_SENA.NUMERO_DOCUMENTO', 'Numero_documento', 'COLUMN';
exec sp_rename 'Inventario_SENA.NUMERO_CERTIFICADO', 'Numero_certificado', 'COLUMN';
exec sp_rename 'Inventario_SENA.FECHA_CERTIFICADO', 'Fecha_certificado', 'COLUMN';
exec sp_rename 'Inventario_SENA.NUMERO_RUTA', 'Numero_ruta', 'COLUMN';
exec sp_rename 'Inventario_SENA.RUTA', 'Ruta', 'COLUMN';
exec sp_rename 'Inventario_SENA.Estado_ficha', 'Estado_ficha', 'COLUMN';
exec sp_rename 'Inventario_SENA.NOVEDAD', 'Novedad', 'COLUMN';
exec sp_rename 'Inventario_SENA.MOTIVO_NOVEDAD', 'Motivo_novedad', 'COLUMN';
exec sp_rename 'Inventario_SENA.FECHA_REGISTRO', 'Fecha_registro', 'COLUMN';
exec sp_rename 'Inventario_SENA.ESTADO_APRENDIZ', 'Estado_aprendiz', 'COLUMN';

--Alteramos el tipo de dato de cada columna para acomodarlo con nustra base de datos
alter table dbo.Inventario_SENA
alter column codigo_regional int;

alter table dbo.Inventario_SENA
alter column Nombre_Regional varchar(20);

alter table dbo.Inventario_SENA
alter column Codigo_sede int;

alter table dbo.Inventario_SENA
alter column Sede varchar(50);

alter table dbo.Inventario_SENA
alter column Ficha int;

alter table dbo.Inventario_SENA
alter column Nivel_formacion varchar(20);

alter table dbo.Inventario_SENA
alter column Codigo_programa int;

alter table dbo.Inventario_SENA
alter column Version_programa int;

alter table dbo.Inventario_SENA
alter column Programa varchar(100);

alter table dbo.Inventario_SENA
alter column Fecha_inicio datetime;

alter table dbo.Inventario_SENA
alter column Fecha_fin datetime;

alter table dbo.Inventario_SENA
alter column Jornada varchar(10);

alter table dbo.Inventario_SENA
alter column Tipo_documento varchar(10);

alter table dbo.Inventario_SENA
alter column Numero_documento int;

alter table dbo.Inventario_SENA
alter column Numero_certificado nvarchar(50);

alter table dbo.Inventario_SENA
alter column Fecha_certificado nvarchar(50);

alter table dbo.Inventario_SENA
alter column Numero_ruta int;

alter table dbo.Inventario_SENA
alter column Ruta varchar(255);

alter table dbo.Inventario_SENA
alter column Estado_ficha varchar(30);

alter table dbo.Inventario_SENA
alter column Novedad varchar(50);

alter table dbo.Inventario_SENA
alter column Motivo_novedad text;

alter table dbo.Inventario_SENA
alter column Fecha_registro varchar(30);

alter table dbo.Inventario_SENA
alter column Estado_aprendiz varchar(30);