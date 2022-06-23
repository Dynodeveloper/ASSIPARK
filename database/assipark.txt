use assipark;
CREATE TABLE vehiculos(
ID_vehiculos bigint (20) primary key not null,
Numero_identificacion int(10),
marca_id tinyint(3),
color_id tinyint(3),
tipo_parqueadero_id tinyint(3),
placa varchar(7),
estado_vehiculo tinyint(1));
create table color(
ID_color tinyint(3) primary key not null,
Color varchar(30));
create table marca(
id_marca tinyint(3) primary key,
marca varchar(20));
create table eventos (
eventos_id bigint(20)primary key not null,
title varchar(255),
descripcion text,
inicio datetime,
fin datetime);
create table migrations (
migrations_id int(10) primary key not null,
migration varchar(255),
batch int(11));
create table password_resets(
email varchar(255),
token varchar(255),
created_at timestamp);
create table personal_access_tokens(
personal_id bigint(20) primary key not null,
tokeneable_type varchar(255),
tokeneable_id bigint(20),
nombre varchar(255),
token varchar(64),
abilities text,
last_used_at timestamp);
create table failed_jobs(
id_failed_jobs bigint(20) primary key not null,
uuid varchar(255),
connection_ text,
queue text,
payload longtext,
exception longtext,
failed_at timestamp);
create table apartamento(
ID_apartamento smallint(5),
primary key(ID_apartamento),
Numero_apto bigint(20),
Bloque bigint(20),
Estado_apto tinyint(1),
designed_at timestamp,
uploaded_at timestamp);



create table residente(
numero_identificacion int(10) primary key not null,
ID_tipo_identificacion tinyint(3),
nombre varchar(45),
apellido varchar(45),
sexo tinyint(1),
telefono int(10),
celular1 int(10),
celular2 int(10),
correo_electronico varchar(255),
ID_apartamento smallint(5),
foreign key(ID_apartamento) references apartamento(ID_apartamento),
Estado_residente tinyint(1),
created_at timestamp,
updated_at timestamp);
create table numeroapartamento(
id_numeroapartamento bigint(20),
Numero_apto smallint(5),
created_at timestamp,
uploaded_at timestamp);

create table bloque(
ID_bloque bigint(20),
primary key(ID_bloque),
Bloque char(10),
designed_at timestamp,
uploaded_at timestamp);
create table tipo_de_parqueadero_vehiculo(
ID_tipo_parqueadero tinyint(3),
Tipo_parqueadero varchar(20));
create table Tipo_usuario(
ID_tipo_usuario tinyint(3),
primary key(ID_tipo_usuario),
Tipo_usuario varchar(20),
created_at timestamp,
updated_at timestamp);
create table usuario(
Numero_identificacion int(10),
primary key(Numero_identificacion),
ID_tipo_usuario tinyint(3),
foreign key(ID_tipo_usuario) references Tipo_usuario(ID_tipo_usuario),
Nombre_usuario varchar(45) not null,
apellido varchar(45) not null,
sexo_usuario tinyint(1)not null,
Direccion varchar(255),
telefono int(10)not null,
celular1 int(10) not null,
celular2 int(10),
email varchar(255)not null,
email_verified_at timestamp,
password varchar(100),
remember_token varchar(100),
Estado_usuario tinyint(1),
creado_en timestamp,
actualizado_en timestamp);
create table tipo_identificacion(
ID_identificacion tinyint(3),
Identificacion varchar(30),
created_at timestamp,
uploaded_at timestamp)

create table visitante(
ID_visitante int(10) not null,
primary key(ID_visitante),
ID_tipo_identificacion tinyint(3),
numero_documento int(10),
nombre_vis varchar(45) not null,
apellido varchar(45) not null,
Celular1 int(10)not null,
celuar2 int(10),
Estado_visitante tinyint(1),
created_at timestamp,
uploaded_at timestamp);

create table visita(
ID_apartamento smallint(5)not null,
foreign key (ID_apartamento) references apartamento(ID_apartamento),
ID_visitante int(10)not null,
foreign key (ID_visitante) references visitante(ID_visitante),
ID_vehiculo bigint(20) not null,
Numero_parqueadero bigint(20) not null,
Usuario_numero_identificacion int(10) not null,
fecha_horainicio datetime,
fecha_horasalida datetime)

create table parqueaderos(
id_parqueaderos bigint(20) not null,
primary key(id_parqueaderos),
tipo_parqueadero_id tinyint(3) not null,
tamaño varchar(20),
descripcion varchar(255),
estado_parqueadero tinyint(1)not null,
ocupado tinyint(1),
created_at timestamp,
uploaded_at timestamp);

create table detalle_asignaciones(
id_apartamento smallint(5)not null,
apartamento_id smallint(5)not null,
vehiculo_id bigint(20),
inicio datetime,
fin datetime,
created_at timestamp,
updated_at timestamp)

create table parqueadero_visitas(
ID_parq_visitas bigint(20)not null,
primary key(ID_parq_visitas),
tipo_parqueadero_id tinyint(3),
tamaño varchar(20)not null,
descripcion varchar(20),
estado_parqueadero tinyint(1)not null,
ocupado tinyint(1),
created_at timestamp,
updated_at timestamp);


