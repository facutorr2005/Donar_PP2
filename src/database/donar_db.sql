CREATE DATABASE IF NOT EXISTS donar_db;
USE donar_db;

-- 1. Tablas Independientes (Sin Foreign Keys)
CREATE TABLE roles (
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    nombre_rol VARCHAR(30) NOT NULL
);

CREATE TABLE tipo_sangre (
    id_tipo_sangre INT AUTO_INCREMENT PRIMARY KEY,
    nombre_tipo_sangre VARCHAR(20) NOT NULL
);

CREATE TABLE factor_rh (
    id_factor_rh INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(20) NOT NULL
);

CREATE TABLE hemocentros (
    id_hemocentro INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    telefono VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    estado BOOLEAN,
    fecha_modificacion DATE NOT NULL,
    fecha_alta DATE UNIQUE
);

-- 2. Tablas Dependientes (Con Foreign Keys)
CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    id_rol INT NOT NULL,
    fecha_nacimiento DATE,
    nombre VARCHAR(30),
    apellido VARCHAR(30),
    email VARCHAR(100) UNIQUE NOT NULL,
    sexo VARCHAR(30),
    password_hash VARCHAR(255) NOT NULL,
    id_tipo_sangre INT,
    id_factor_rh INT,
    estado BOOLEAN,
    fecha_modificacion DATE,
    fecha_alta DATE,
    FOREIGN KEY (id_rol) REFERENCES roles(id_rol),
    FOREIGN KEY (id_tipo_sangre) REFERENCES tipo_sangre(id_tipo_sangre),
    FOREIGN KEY (id_factor_rh) REFERENCES factor_rh(id_factor_rh)
);

CREATE TABLE solicitudes (
    id_solicitud INT AUTO_INCREMENT PRIMARY KEY,
    id_hemocentro INT NOT NULL,
    id_tipo_sangre INT NOT NULL,
    id_factor_rh INT NOT NULL,
    cantidad_donantes INT NOT NULL,
    urgencia BOOLEAN,
    fecha_alta DATE UNIQUE,
    fecha_modificacion DATE NOT NULL,
    estado BOOLEAN,
    FOREIGN KEY (id_hemocentro) REFERENCES hemocentros(id_hemocentro),
    FOREIGN KEY (id_tipo_sangre) REFERENCES tipo_sangre(id_tipo_sangre),
    FOREIGN KEY (id_factor_rh) REFERENCES factor_rh(id_factor_rh)
);

CREATE TABLE recuperacion_contrasena (
    id_recuperacion INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT FOREIGN KEY,
    codigo_recuperacion VARCHAR(10) NOT NULL,
    intentos INT NOT NULL,
    fecha_expiracion DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);