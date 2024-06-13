--Primer punto:
--a
select codigo_oficina, ciudad
from oficina

--b
select ciudad, telefono, pais
from oficina
where pais = 'España'

--c
select nombre, apellido1, apellido2, email, codigo_jefe
from empleado
where codigo_jefe = '7'

--d
select puesto, nombre, apellido1, apellido2, email 
from empleado 
where codigo_jefe is null

--e
select nombre, apellido1, apellido2, puesto
from empleado
where puesto != 'Representante Ventas'

--Segundo punto:
--a
select  nombre_cliente, empleado.nombre as Nombre_Rep_Ventas, empleado.apellido1 as Apellido_Rep_Ventas
from cliente  
inner join empleado on empleado.puesto = 'Representante Ventas'

--b
select distinct nombre_cliente, nombre, apellido1, puesto
from cliente
inner join empleado on cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado
inner join pago on pago.codigo_cliente = cliente.codigo_cliente
where empleado.puesto = 'Representante Ventas'

--c
select distinct nombre_cliente, nombre, apellido1 
from pago
inner join cliente on pago.codigo_cliente != cliente.codigo_cliente
inner join empleado on cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado
where empleado.puesto = 'Representante Ventas'

--d
select nombre_cliente, nombre, apellido1, puesto, oficina.ciudad
from cliente
inner join empleado on cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado
inner join pago on pago.codigo_cliente = cliente.codigo_cliente
inner join oficina on cliente.ciudad = oficina.ciudad
where empleado.puesto = 'Representante Ventas'

--e
select distinct nombre_cliente, nombre as nombre_rep_ventas, apellido1 as apellido_rep_ventas,oficina.ciudad
from pago
inner join cliente on pago.codigo_cliente != cliente.codigo_cliente
inner join empleado on cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado
inner join oficina on cliente.ciudad = oficina.ciudad
where empleado.puesto = 'Representante Ventas'

--f
select distinct codigo_cliente, oficina.linea_direccion1, cliente.ciudad
from cliente
inner join empleado on cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado
inner join oficina on oficina.codigo_oficina = empleado.codigo_oficina
where cliente.ciudad = 'Fuenlabrada'

--g
select nombre_cliente, nombre, oficina.ciudad
from cliente
inner join empleado on cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado
inner join oficina on oficina.codigo_oficina = empleado.codigo_oficina
where empleado.puesto = 'Representante Ventas'

--h
select distinct trabajador.nombre as Empleado, jefe.nombre as Jefe, jefe.puesto
from empleado as trabajador
inner join empleado as jefe on trabajador.codigo_jefe = jefe.codigo_empleado

--i
select distinct trabajador.nombre as Empleado, jefe.nombre as Jefe, jefe_de_jefes.nombre as Jefe_de_Jefes
from empleado as trabajador
inner join empleado as jefe on trabajador.codigo_jefe = jefe.codigo_empleado
inner join empleado as jefe_de_jefes on jefe.codigo_jefe = jefe_de_jefes.codigo_empleado

--j
select distinct nombre_cliente
from cliente
inner join pedido on pedido.codigo_cliente = cliente.codigo_cliente
where pedido.fecha_esperada != pedido.fecha_entrega

--k
select distinct nombre_cliente, gp.gama
from cliente
inner join pedido on cliente.codigo_cliente = pedido.codigo_cliente
inner join detalle_pedido as dp on dp.codigo_pedido = pedido.codigo_pedido
inner join Producto on Producto.codigo_producto = dp.codigo_producto
inner join gama_producto as gp on gp.gama = Producto.gama;

--Tercer punto:
--a
select distinct nombre_cliente, cliente.codigo_cliente
from cliente 
left join pago on cliente.codigo_cliente != pago.codigo_cliente

--b
select distinct nombre_cliente
from cliente
right join pedido on cliente.codigo_cliente != pedido.codigo_cliente

--c
select distinct nombre_cliente, cliente.codigo_cliente
from cliente
left join pago on cliente.codigo_cliente != pago.codigo_cliente
right join pedido on cliente.codigo_cliente != pedido.codigo_cliente

--e
select distinct nombre as nombre_empleado, apellido1 as apellido_empleado
from empleado
right join oficina on empleado.codigo_oficina != oficina.codigo_oficina

--f
select distinct nombre as nombre_empleado, apellido1 as apellido_empleado
from empleado
right join cliente on empleado.codigo_empleado != cliente.codigo_cliente

--g
select distinct nombre as nombre_empleado, apellido1 as apellido_empleado, oficina.codigo_oficina
from empleado
right join cliente on empleado.codigo_empleado != cliente.codigo_cliente
left join oficina on empleado.codigo_oficina = oficina.codigo_oficina

--h
select distinct nombre as nombre_empleado, apellido1 as apellido_empleado, oficina.codigo_oficina
from empleado
right join cliente on empleado.codigo_empleado != cliente.codigo_cliente
left join oficina on empleado.codigo_oficina != oficina.codigo_oficina

--i
select distinct nombre as nombre_producto
from producto
right join pedido on producto.codigo_producto != pedido.codigo_pedido 

--j
select p.nombre, p.descripcion, p.gama, p.dimensiones, g.imagen
from producto p
left join detalle_pedido dp on p.codigo_producto = dp.codigo_producto
left join gama_producto g on p.gama = g.gama
where dp.codigo_pedido is null;

--k


--Cuarto punto:
--1
Select count(*) as total_empleados
from empleado

--2
select pais, count(*) as total_clientes
from cliente
group by pais

--3
select avg (total) as pago_medio_2009
from pago
where fecha_pago >= '2009-01-01' and fecha_pago <= '2009-12-31'

--4
select estado, count(*) as total_pedidos
from pedido
group by estado
order by total_pedidos desc

--5
select max (precio_de_venta) as precio_mas_caro, min(precio_de_venta) as precio_mas_barato
from Producto

--6
select count(*) as total_clientes
from cliente

--7
select count(*) as clientes_en_Madrid
from cliente
where ciudad = 'Madrid'

--8
select left (ciudad, 1) as ciudad_inicial, count(*) as total_clientes
from cliente
where left (ciudad, 1) = 'M'
group by left (ciudad, 1)

--9
select empleado.nombre as representante_ventas, count(cliente.codigo_cliente) as total_clientes
from empleado
left join cliente on empleado.codigo_empleado = cliente.codigo_empleado_rep_ventas
group by empleado.nombre

--10
select count(*) as clientes_sin_representante
from cliente
where codigo_empleado_rep_ventas is null