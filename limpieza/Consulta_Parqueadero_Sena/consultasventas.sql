SELECT * FROM cliente WHERE cliente.ciudad = 'Granada';
SELECT * FROM comercial WHERE comercial.apellido1 = 'Hernández' OR comercial.apellido2 = 'Hernández';
SELECT * FROM pedido WHERE year(pedido.fecha) BETWEEN '2017' AND '2018';

SELECT DISTINCT nombre,apellido1,apellido2 FROM cliente INNER JOIN pedido ON cliente.id = pedido.id_cliente ORDER BY nombre;
SELECT * FROM pedido INNER JOIN cliente ON cliente.id = pedido.id_cliente ORDER BY cliente.nombre;
SELECT * FROM pedido INNER JOIN comercial ON pedido.id_comercial = comercial.id ORDER BY comercial.nombre;
SELECT * FROM cliente INNER JOIN pedido ON cliente.id = pedido.id_cliente INNER JOIN comercial ON pedido.id_comercial=comercial.id;
SELECT * FROM cliente INNER JOIN pedido ON cliente.id = pedido.id_cliente WHERE year(pedido.fecha) = '2017' and pedido.total BETWEEN 300 AND 1000;
SELECT comercial.nombre,comercial.apellido1,comercial.apellido2 FROM comercial INNER JOIN pedido ON comercial.id = pedido.id_comercial INNER JOIN cliente ON pedido.id_cliente=cliente.id;
SELECT DISTINCT cliente.nombre FROM cliente INNER JOIN pedido ON cliente.id = pedido.id_cliente INNER JOIN comercial ON comercial.id=pedido.id_comercial WHERE comercial.nombre = 'Daniel' and comercial.apellido1='Sáez' and comercial.apellido2='Vega';

SELECT * FROM cliente LEFT JOIN pedido ON cliente.id=pedido.id_cliente ORDER BY cliente.nombre,cliente.apellido1,cliente.apellido2;
SELECT * FROM comercial LEFT JOIN pedido ON comercial.id=pedido.id_comercial ORDER BY comercial.apellido1,comercial.apellido2,comercial.nombre;
SELECT * FROM cliente LEFT JOIN pedido ON cliente.id=pedido.id_cliente WHERE pedido.id_cliente IS NULL;
SELECT * FROM comercial LEFT JOIN pedido ON comercial.id=pedido.id_comercial WHERE pedido.id_comercial IS NULL;
SELECT * FROM cliente LEFT JOIN pedido ON cliente.id=pedido.id_cliente LEFT JOIN comercial ON comercial.id=pedido.id_comercial WHERE pedido.id_cliente IS NULL and pedido.id_comercial IS NULL;

SELECT COUNT(cliente.id) FROM cliente;
SELECT COUNT(cliente.id),cliente.ciudad FROM cliente GROUP BY cliente.ciudad;
SELECT COUNT(pedido.id) FROM pedido;
SELECT pedido.fecha,pedido.total FROM pedido ORDER BY pedido.total DESC LIMIT 1;
SELECT COUNT(comercial.nombre),comercial.nombre FROM comercial INNER JOIN pedido ON comercial.id=pedido.id_comercial GROUP BY comercial.nombre;
SELECT cliente.nombre,cliente.ciudad,COUNT(cliente.nombre) as total_pedidos,SUM(pedido.total) from cliente INNER JOIN pedido ON cliente.id=pedido.id_cliente GROUP BY cliente.nombre,cliente.ciudad;