CREATE TABLE libro (
	id_libro int(4) not null auto_increment,
	titulo varchar(30) not null,
	publicacion varchar(100) not null,
	autor varchar(30) not null,
	editorial varchar(30) not null,
	primary key (id_libro)
);

CREATE TABLE lector (
	id_lector int(4) not null auto_increment,
	nombre varchar(30) not null,
	carrera varchar(20) not null,
	primary key (id_lector)
);

CREATE TABLE prestamo (
	id_lib int(4),
	id_lec int(4), 
	foreign key (id_lib) references libro(id_libro),
	foreign key (id_lec) references lector(id_lector)
);