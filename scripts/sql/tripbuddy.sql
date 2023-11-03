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

-- INSERT 20 Usuarios 
INSERT INTO Usuario (email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador)
VALUES
('user1@example.com', 'John', 'Doe', '1990-01-15', 'Male', 'USA', '123-456-7890', 'Emergency Contact 1', 'user1_social', 1, 0),
('user2@example.com', 'Jane', 'Smith', '1985-03-20', 'Female', 'Canada', '987-654-3210', 'Emergency Contact 2', 'user2_social', 1, 0),
('user3@example.com', 'Mike', 'Johnson', '1998-05-10', 'Male', 'UK', '555-555-5555', 'Emergency Contact 3', 'user3_social', 1, 0),
('user4@example.com', 'Sarah', 'Williams', '1980-12-05', 'Female', 'Australia', '111-222-3333', 'Emergency Contact 4', 'user4_social', 1, 0),
('user5@example.com', 'David', 'Brown', '1995-08-25', 'Male', 'Germany', '777-888-9999', 'Emergency Contact 5', 'user5_social', 1, 0),
('user6@example.com', 'Emily', 'Lee', '1992-04-30', 'Female', 'France', '333-999-1111', 'Emergency Contact 6', 'user6_social', 1, 0),
('user7@example.com', 'Chris', 'Garcia', '1987-11-12', 'Male', 'Spain', '666-444-2222', 'Emergency Contact 7', 'user7_social', 1, 0),
('user8@example.com', 'Olivia', 'Hernandez', '1993-06-18', 'Female', 'Italy', '999-333-7777', 'Emergency Contact 8', 'user8_social', 1, 0),
('user9@example.com', 'Alex', 'Martinez', '1999-09-08', 'Male', 'Mexico', '222-111-4444', 'Emergency Contact 9', 'user9_social', 1, 0),
('user10@example.com', 'Sophia', 'Lopez', '1989-02-28', 'Female', 'Brazil', '444-777-9999', 'Emergency Contact 10', 'user10_social', 1, 0),
('user11@example.com', 'Daniel', 'Chen', '1996-07-15', 'Male', 'China', '555-777-3333', 'Emergency Contact 11', 'user11_social', 1, 0),
('user12@example.com', 'Mia', 'Kim', '1991-10-22', 'Female', 'Japan', '888-444-1111', 'Emergency Contact 12', 'user12_social', 1, 0),
('user13@example.com', 'William', 'Nguyen', '1984-03-03', 'Male', 'South Korea', '666-333-9999', 'Emergency Contact 13', 'user13_social', 1, 0),
('user14@example.com', 'Ava', 'Wang', '1983-09-09', 'Female', 'India', '222-555-6666', 'Emergency Contact 14', 'user14_social', 1, 0),
('user15@example.com', 'James', 'Singh', '1994-12-01', 'Male', 'Russia', '777-222-4444', 'Emergency Contact 15', 'user15_social', 1, 0),
('user16@example.com', 'Isabella', 'Gupta', '1986-06-06', 'Female', 'South Africa', '111-999-3333', 'Emergency Contact 16', 'user16_social', 1, 0),
('user17@example.com', 'Michael', 'Liu', '1997-04-14', 'Male', 'New Zealand', '555-444-8888', 'Emergency Contact 17', 'user17_social', 1, 0),
('user18@example.com', 'Emma', 'Smith', '1992-11-26', 'Female', 'Greece', '999-666-2222', 'Emergency Contact 18', 'user18_social', 1, 0),
('user19@example.com', 'Matthew', 'Jones', '1981-07-07', 'Male', 'Ireland', '777-555-1111', 'Emergency Contact 19', 'user19_social', 1, 0),
('user20@example.com', 'Olivia', 'Johnson', '1990-03-10', 'Female', 'Netherlands', '333-777-8888', 'Emergency Contact 20', 'user20_social', 1, 0);


-- Update 10 Usuarios 
UPDATE Usuario
SET
    email = 'new_email@example.com',
    nombres = 'New Name',
    apellidos = 'New Lastname',
    fecha_nacimiento = '1990-01-01',
    genero = 'Other',
    pais = 'Other Country',
    telefono = '555-555-5555',
    contacto_emergencia = 'New Emergency Contact',
    redsocial_usuario = 'new_social',
    usuario_activo = 1,
    usuario_administrador = 0
WHERE id_usuario IN (2, 4, 6, 8, 10, 12, 14, 16, 18, 20);

-- Delete 20 usuarios
DELETE FROM Usuario;

