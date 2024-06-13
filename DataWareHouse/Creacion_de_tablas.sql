create table Regional(
Codigo_regional int not null,
Nombre_regional varchar(20) null
);

insert into Regional
	select Codigo_regional, Nombre_regional
	from dbo.Inventario_SENA

alter table Regional
	add constraint Pk_Codigo_regional primary key clustered (Codigo_regional);

create table Sede (
Codigo_sede int not null,
Nombre_sede varchar(50) not null,
Codigo_regional int not null
)

insert into Sede
	select Codigo_sede, Nombre_sede, Codigo_regional
	from dbo.Inventario_SENA

create table Programa(
Codigo_programa int not null,
Version_programa varchar(100) null,
Nivel_formacion varchar(20) null,
Codigo_sede int not null
)

insert into Programa
	select Codigo_programa, Version_programa, Nivel_formacion, Codigo_sede
	from dbo.Inventario_SENA

create table Aprendiz(
Numero_documento int not null, 
Tipo_documemnto varchar(10) not null,
Estado_aprendiz varchar(30) not null,
Motivo_Novedad text not null,
Fecha_registro varchar(30) not null,
Codigo_programa int not null,
Codigo_ficha int not null
)

insert into Aprendiz
	select Numero_documento, Tipo_documento, Estado_aprendiz, Motivo_novedad, Fecha_registro, Codigo_programa, Codigo_ficha
	from dbo.Inventario_SENA

create table Ficha(
Codigo_ficha int not null,
Fecha_inicio datetime not null,
Fecha_fin datetime not null,
Jornada varchar(10)not null,
Estado_ficha varchar(30),
Codigo_programa int not null,
Numero_ruta int not null
);

insert into Ficha
	select Codigo_ficha, Fecha_inicio, Fecha_fin, Jornada, Estado_ficha, Codigo_programa, Numero_ruta
	from dbo.Inventario_SENA