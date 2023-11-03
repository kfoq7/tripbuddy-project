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

