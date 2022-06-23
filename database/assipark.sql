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
fecha_horasalida datetime);
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
updated_at timestamp);

CREATE TABLE parqueadero_visitas (
    ID_parq_visitas BIGINT(20) NOT NULL,
    PRIMARY KEY (ID_parq_visitas),
    tipo_parqueadero_id TINYINT(3),
    tamaño VARCHAR(20) NOT NULL,
    descripcion VARCHAR(20),
    estado_parqueadero TINYINT(1) NOT NULL,
    ocupado TINYINT(1),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);