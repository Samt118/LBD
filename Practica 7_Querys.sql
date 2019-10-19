SELECT Huesped.Huesped_id, Huesped.Nombre, Huesped.Edad, Pais.NombrePais, Estado.NombreEstado, Municipio.NombreMunicipio, Huesped.Colonia, Huesped.Calle, Huesped.NumeroDomicilio
FROM Huesped
INNER JOIN Pais on Huesped.Pais_id= Pais.Pais_id
INNER JOIN Estado on Huesped.Estado_id= Estado.Estado_id
INNER JOIN Municipio on Huesped.Municipio_id= Municipio.Municipio_id; 

SELECT Huesped.Huesped_id, Estado.NombreEstado, Huesped.Nombre, Huesped.Edad 
FROM Huesped
INNER JOIN Estado on Huesped.Estado_id= Estado.Estado_id; 

SELECT Huesped.Huesped_id, Municipio.NombreMunicipio, Huesped.Nombre, Huesped.Edad 
FROM Huesped
INNER JOIN Municipio on Huesped.Municipio_id= Municipio.Municipio_id; 

SELECT Huesped.Huesped_id, Municipio.NombreMunicipio, Huesped.Nombre, Huesped.Edad 
FROM Huesped
RIGHT JOIN Municipio on Huesped.Municipio_id= Municipio.Municipio_id; 

SELECT Pais.NombrePais, Estado.NombreEstado, Municipio.NombreMunicipio
FROM Municipio
INNER JOIN Pais on Municipio.Pais_id= Pais.Pais_id
INNER JOIN Estado on Municipio.Estado_id= Estado.Estado_id;

SELECT Pais.Pais_id, Pais.NombrePais, Estado.Estado_id, Estado.NombreEstado, Municipio.Municipio_id, Municipio.NombreMunicipio
FROM Municipio
INNER JOIN Pais on Municipio.Pais_id= Pais.Pais_id
INNER JOIN Estado on Municipio.Estado_id= Estado.Estado_id;

select* from Huesped


Select COUNT (Pais_id) as HuespedEnPais, Pais_id
FROM Huesped
GROUP BY Pais_id
HAVING (Pais_id) < 3;


Select AVG (Pais_id) as Average, Pais_id
FROM Huesped
GROUP BY Pais_id
HAVING (Pais_id) >0;


Select COUNT(Estado_id) as NumEstados, Pais_id
FROM Estado
GROUP BY Pais_id
HAVING(Pais_id) <4;


Select COUNT(Municipio_id) as NumMunicipios, Estado_id
FROM Municipio
GROUP BY Estado_id
HAVING (Estado_id) >
10;

SELECT Edad, Nombre
FROM Huesped
ORDER BY (Edad)
Desc;

SELECT Edad, Nombre
FROM Huesped
GROUP BY (Edad)
HAVING COUNT(Edad)>
20;

Select COUNT(Municipio_id) as NumMunicipios, Estado_id
FROM Municipio
GROUP BY Estado_id
HAVING (Estado_id) >5
ORDER BY ESTADO_ID
DESC;

select * from empleado

select Empleado_id, Nombre, Sueldo
FROM Empleado
ORDER BY (Sueldo)
Desc;

select Empleado_id, Nombre, Sueldo
FROM Empleado
where Puesto= 'Barredor'
ORDER BY (Sueldo)
Desc;

SELECT Pais.NombrePais, Estado.NombreEstado, Municipio.NombreMunicipio
FROM Municipio
INNER JOIN Pais on Municipio.Pais_id= Pais.Pais_id
INNER JOIN Estado on Municipio.Estado_id= Estado.Estado_id
where NombrePais = 'Mexico'
ORDER BY (NombreEstado)
Asc;