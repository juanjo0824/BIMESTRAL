CREATE DATABASE microfutbol_elite;
USE microfutbol_elite;

CREATE TABLE entrenador(
id_entrenador INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100),
experiencia VARCHAR(80)
);

CREATE TABLE grupo(
id_grupo INT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(50),
horario VARCHAR(50),
id_entrenador INT,
FOREIGN KEY(id_entrenador) REFERENCES entrenador(id_entrenador)
);

CREATE TABLE estudiante(
id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100),
edad INT,
telefono VARCHAR(20),
id_grupo INT,
FOREIGN KEY(id_grupo) REFERENCES grupo(id_grupo)
);

CREATE TABLE entrenamiento(
id_entreno INT AUTO_INCREMENT PRIMARY KEY,
fecha DATE,
lugar VARCHAR(100),
id_grupo INT,
FOREIGN KEY(id_grupo) REFERENCES grupo(id_grupo)
);

CREATE TABLE pago(
id_pago INT AUTO_INCREMENT PRIMARY KEY,
fecha DATE,
valor DECIMAL(10,2),
id_estudiante INT,
FOREIGN KEY(id_estudiante) REFERENCES estudiante(id_estudiante)
);