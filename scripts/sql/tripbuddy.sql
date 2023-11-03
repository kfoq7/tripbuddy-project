-- Create database
CREATE DATABASE Tripbuddy

USE Tripbuddy;

CREATE TABLE Usuario (
    id_usuario INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    email NVARCHAR(255) UNIQUE NOT NULL,
    nombres NVARCHAR(255) NULL,
    apellidos NVARCHAR(255) NULL,
    fecha_nacimiento DATE NULL,
    genero NVARCHAR(10) NULL,
    pais NVARCHAR(50) NULL,
    telefono NVARCHAR(20) NULL,
    contacto_emergencia NVARCHAR(255) NULL,
    redsocial_usuario NVARCHAR(255) NULL, 
    usuario_activo BIT DEFAULT 1 NULL, 
    usuario_administrador BIT DEFAULT 0 NULL,
);

CREATE TABLE Destino (
	id_destino INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    nombre NVARCHAR(255) NOT NULL,
	estado NVARCHAR(20) DEFAULT 'ACTIVO' NOT NULL,
    latitud DECIMAL(9, 6) NOT NULL, 
    longitud DECIMAL(9, 6) NOT NULL,
    imagenURL NVARCHAR(255) NOT NULL,
);

CREATE TABLE Actividad (
	id_actividad INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    nombre NVARCHAR(255) NOT NULL,
    orden INT NOT NULL, 
    estado NVARCHAR(20) DEFAULT 'ACTIVO' NOT NULL,
    imagenURL NVARCHAR(255) NOT NULL,
);

CREATE TABLE Categoria (
	id_categoria INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    nombre NVARCHAR(255) NOT NULL,
    orden INT NOT NULL,
    estado NVARCHAR(20) DEFAULT 'ACTIVO' NOT NULL,
    imagenURL NVARCHAR(255) NOT NULL,
);

CREATE TABLE Solicitud (
    id_solicitud INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    usuario_id INT FOREIGN KEY REFERENCES Usuario(id_usuario) NOT NULL,
    destino_id INT NOT NULL,
    categoria_id INT NOT NULL,
    actividad_id INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    numero_ninos INT NOT NULL,
    numero_adolescentes INT NOT NULL,
    numero_adultos INT NOT NULL,
    hospedaje NVARCHAR(255) NOT NULL, 
    presupuesto MONEY NOT NULL,
    estrellas INT NULL,
    estado NVARCHAR(20) DEFAULT 'PENDIENTE' NOT NULL,
    comentarios NVARCHAR(255) NULL
);

CREATE TABLE Cotizacion (
	id_cotizacion INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	solicitud_id INT FOREIGN KEY REFERENCES Solicitud(id_solicitud) NOT NULL,
	descripcion NVARCHAR(255) NOT NULL,
	agencia NVARCHAR(50) NOT NULL,
	precio MONEY NOT NULL,
	moneda NVARCHAR(50) NOT NULL,
	estado NVARCHAR(50) NOT NULL,
	destinos_cotizados NVARCHAR(255) NOT NULL,
	fecha_creacion DATE NOT NULL,
	fecha_modificacion DATE NOT NULL,
	fecha_visualizacion DATE NOT NULL
);

CREATE TABLE Detalle_Cotizacion (
	id_detalle_cotizacion INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	cotizacion_id INT FOREIGN KEY REFERENCES Cotizacion(id_cotizacion) NOT NULL,
	destino NVARCHAR(50) NOT NULL,
	num_dias INT NOT NULL,
	fecha_visita DATE NOT NULL,
	latitud DECIMAL(10,10) NOT NULL,
	longitud DECIMAL(10, 10) NOT NULL
);
CREATE TABLE Lugar (
	id_lugar INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	nombre NVARCHAR(50) NOT NULL,
	descripcion TEXT NOT NULL,
	field_name NVARCHAR(50) NOT NULL,
	latitud DECIMAL(10, 10) NOT NULL,
	logintud DECIMAL(10, 10) NOT NULL,
	destino INT FOREIGN KEY REFERENCES Destino(id_destino) NOT NULL,
	categoria INT FOREIGN KEY REFERENCES Categoria(id_categoria) NOT NULL,
	actividad INT FOREIGN KEY REFERENCES Actividad(id_actividad) NOT NULL,
);
CREATE TABLE Mejor_Lugar (
	id_mejores_lugares INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	detalle_cotizacion INT FOREIGN KEY REFERENCES Detalle_Cotizacion(id_detalle_cotizacion),
	lugar INT FOREIGN KEY REFERENCES Lugar(id_lugar),
	orden INT NOT NULL,
	principal BIT NOT NULL,
	descripcion TEXT NOT NULL,
	cosas_por_hacer TEXT NOT NULL,
	viajes_secundarios TEXT NOT NULL,
	fecha_visita DATE NOT NULL,
	hora_inicio TIME NOT NULL,
	hora_fin TIME NOT NULL,

);

CREATE TABLE Comprado (
	id_solicitid INT FOREIGN KEY REFERENCES Solicitud(id_solicitud) NOT NULL,
	id_cotizacion INT FOREIGN KEY REFERENCES Cotizacion(id_cotizacion) NOT NULL,
	id_comprado INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	dias NVARCHAR(50) NOT NULL,
	descripcion NVARCHAR(255) NOT NULL,
	detalle NVARCHAR(255) NOT NULL,
	estado NVARCHAR(50) NOT NULL,

);
CREATE TABLE Solicitud_Destino (


    solicitud_id INT NOT NULL,
    destino_id INT NOT NULL,
    PRIMARY KEY (solicitud_id, destino_id),
    FOREIGN KEY (solicitud_id) REFERENCES Solicitud(id_solicitud),
    FOREIGN KEY (destino_id) REFERENCES Destino(id_destino)
);

CREATE TABLE Solicitud_Actividad (
    solicitud_id INT NOT NULL,
    actividad_id INT NOT NULL,
    PRIMARY KEY (solicitud_id, actividad_id),
    FOREIGN KEY (solicitud_id) REFERENCES Solicitud(id_solicitud),
    FOREIGN KEY (actividad_id) REFERENCES Actividad(id_actividad)
);

CREATE TABLE Solicitud_Categoria (
    solicitud_id INT NOT NULL,
    categoria_id INT NOT NULL,
    PRIMARY KEY (solicitud_id, categoria_id),
    FOREIGN KEY (solicitud_id) REFERENCES Solicitud(id_solicitud),
    FOREIGN KEY (categoria_id) REFERENCES Categoria(id_categoria)
);

