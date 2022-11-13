Create Database EncuestaUH2

Use EncuestaUh2

Create Table Persona
(
	cedulaP Varchar(15) Primary Key, -- campo unico no puede ser nulo, no se puede violar--
	nombre Varchar(50) not null, -- Es una violación si va nulo--
	genero Char(1) Constraint chk_genero Check (genero = 'F' or genero = 'M'), -- chk_genero es el nombre de la variable, esta en Database, Tables, Constaints, seria una violacion otra letra--
	fecha Date Constraint def_fecha Default Getdate(),
	direccion int,
)

/*
Insert Into Persona Values('1','Rosario','F',null)
Insert Into Persona (cedula,nombre,genero) Values ('2','Michael','M')
Insert Into Persona (cedula,genero) Values ('3','F')
Select * From persona
*/

Create Table Respuesta
(
	id Int Identity(1,1),
	cedulaR Varchar(15),
	r1 Char(1),
	r2 Char(1),
	r3 Char(1),
	r4 Char(1),
	r5 Char(1),
	r6 Char(1),
	r7 Char(1),
	r8 Char(1),
	r9 Char(1),
	Constraint PK_id Primary Key(id),
	Constraint FK_cedula Foreign Key(cedulaR) References Persona(cedulaP),
)

Insert Into Persona Values('1','Jose Carmona','F',GETDATE(), '5')
Insert Into Respuesta Values('1','c','a','c','a','c','a','c','a','c')
Select * From Persona
Select * From Respuesta


--Inner Join se usa para unir dos tablas--

select Respuesta.id, Persona.nombre, Respuesta.r1, Respuesta.r2, Respuesta.r3, Respuesta.r4, Respuesta.r5, Respuesta.r6, Respuesta.r7, Respuesta.r8, Respuesta.r9
from Respuesta
inner join Persona on Respuesta.cedulaR = Persona.cedulaP -- Donde la cedulas sean iguales, despliega el nombre--

drop table Persona
drop table Respuesta