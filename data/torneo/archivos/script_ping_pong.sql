-- Creo el esquema "ping_pong"
DROP DATABASE ping_pong;

CREATE DATABASE ping_pong;
USE ping_pong;	

-- 1
CREATE TABLE campeonato (
	id_campeonato 	INT NOT NULL UNIQUE AUTO_INCREMENT,
	annio INT NOT NULL,
	nombre VARCHAR(45),
	PRIMARY KEY(id_campeonato)
);
-- 2
CREATE TABLE sede (
	id_sede INT NOT NULL UNIQUE AUTO_INCREMENT,
	nombre VARCHAR(45),
	direccion VARCHAR(45),
	ciudad VARCHAR(45),
	provincia VARCHAR(45),
	PRIMARY KEY(id_sede)
);
-- 3
CREATE TABLE tipo_jornada (
	id_tipo_jornada INT NOT NULL UNIQUE AUTO_INCREMENT,
	tipo VARCHAR(45) UNIQUE,
    PRIMARY KEY(id_tipo_jornada)
);
-- 4
CREATE TABLE categoria (
	id_categoria INT NOT NULL UNIQUE AUTO_INCREMENT,
    categoria VARCHAR(45) UNIQUE,
    PRIMARY KEY(id_categoria)
);
-- 5
CREATE TABLE modalidad (
	id_modalidad INT NOT NULL UNIQUE AUTO_INCREMENT,
    modalidad VARCHAR(45) UNIQUE,
    PRIMARY KEY(id_modalidad)
);
-- 6
CREATE TABLE fase_partido(
	id_fase_partido INT NOT NULL UNIQUE AUTO_INCREMENT,
    fase_partido VARCHAR(45) UNIQUE,
    PRIMARY KEY(id_fase_partido)
);
-- 7
CREATE TABLE tipo_sancion(
	id_tipo_sancion INT NOT NULL UNIQUE AUTO_INCREMENT,
    tipo_sancion VARCHAR(45) UNIQUE,
    PRIMARY KEY(id_tipo_sancion)
);
-- 8
CREATE TABLE equipo (
	id_equipo INT NOT NULL UNIQUE AUTO_INCREMENT,
    nombre_equipo VARCHAR(45) UNIQUE,
    PRIMARY KEY(id_equipo)
);
-- 9
CREATE TABLE usuario(
	id_usuario INT NOT NULL UNIQUE AUTO_INCREMENT,
	contraseña VARCHAR(45),
	fecha_registro DATETIME NOT NULL,
	fecha_nacimiento DATETIME NOT NULL,
	documento INT NOT NULL,
	tipo_documento VARCHAR(45),
	genero VARCHAR(45),
	direccion VARCHAR(45),
	ciudad VARCHAR(45),
	nombre VARCHAR(45),
	apellido VARCHAR(45),
	estado_cuenta VARCHAR(45),
	nivel_acceso VARCHAR(45),
	foto_perfil VARCHAR(45),
    PRIMARY KEY(id_usuario)
);
-- 10
CREATE TABLE telefono (
	id_telefono INT NOT NULL UNIQUE AUTO_INCREMENT,
    telefono VARCHAR(45),
    PRIMARY KEY(id_telefono)
);
-- 11
CREATE TABLE email (
	id_email INT NOT NULL UNIQUE AUTO_INCREMENT,
    email VARCHAR(45) UNIQUE,
    PRIMARY KEY(id_email)
);
-- 12
CREATE TABLE jornada (
	id_jornada INT NOT NULL UNIQUE AUTO_INCREMENT,
    fecha DATETIME NOT NULL,
	id_campeonato INT,
	id_sede INT NOT NULL,
	id_tipo_jornada INT NOT NULL,
	PRIMARY KEY(id_jornada),
	FOREIGN KEY(id_campeonato) REFERENCES campeonato(id_campeonato),
	FOREIGN KEY(id_sede) REFERENCES sede(id_sede),
	FOREIGN KEY(id_tipo_jornada) REFERENCES tipo_jornada(id_tipo_jornada)
);
-- 13
CREATE TABLE torneo (
	id_torneo INT NOT NULL UNIQUE AUTO_INCREMENT,
	id_jornada INT NOT NULL,
	id_categoria INT NOT NULL,
	id_modalidad INT NOT NULL,
	PRIMARY KEY(id_torneo),
	FOREIGN KEY(id_jornada) REFERENCES jornada(id_jornada),
	FOREIGN KEY(id_categoria) REFERENCES categoria(id_categoria),
	FOREIGN KEY(id_modalidad) REFERENCES modalidad(id_modalidad)
);
-- 14
CREATE TABLE partido (
	id_partido INT NOT NULL UNIQUE AUTO_INCREMENT,
    id_jugador_A1 INT,
    id_jugador_A2 INT,
    id_jugador_B1 INT,
    id_jugador_B2 INT,
    set_1_A INT,
    set_1_B INT,
    set_2_A INT,
    set_2_B INT,
    set_3_A INT,
    set_3_B INT,
    set_4_A INT,
    set_4_B INT,
    set_5_A INT,
    set_5_B INT,
    ganador VARCHAR(1),
    id_torneo INT NOT NULL,
    id_fase_partido INT NOT NULL,
    PRIMARY KEY(id_partido),
    KEY idx_id_jugador_A1 (id_jugador_A1),
    KEY idx_id_jugador_B1 (id_jugador_B1),
    KEY idx_id_jugador_A2 (id_jugador_A2),
    KEY idx_id_jugador_B2 (id_jugador_B2),
    FOREIGN KEY(id_torneo) REFERENCES torneo(id_torneo),
    FOREIGN KEY(id_fase_partido) REFERENCES fase_partido(id_fase_partido)
);
-- 15
CREATE TABLE sancion (
	id_sancion INT NOT NULL UNIQUE AUTO_INCREMENT,
    sancion INT NOT NULL,
    observacion VARCHAR(45),
    fecha_sancion DATETIME NOT NULL,
    id_usuario	INT NOT NULL,
    id_partido	INT NOT NULL,
    id_tipo_sancion INT NOT NULL,
    PRIMARY KEY(id_sancion),
    FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY(id_partido) REFERENCES partido(id_partido),
    FOREIGN KEY(id_tipo_sancion) REFERENCES tipo_sancion(id_tipo_sancion)
);
-- 16
CREATE TABLE participante (
	id_participante INT NOT NULL UNIQUE AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    id_torneo INT NOT NULL,
    id_equipo INT NOT NULL,
    estado_participante VARCHAR(45),
    PRIMARY KEY(id_participante),
    FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY(id_torneo) REFERENCES torneo(id_torneo),
    FOREIGN KEY(id_equipo) REFERENCES equipo(id_equipo)
);
-- 17
CREATE TABLE telefono_has_usuario (
	id_telefono INT NOT NULL UNIQUE,
    id_usuario INT NOT NULL,
    FOREIGN KEY (id_telefono) REFERENCES telefono(id_telefono),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);
-- 18
CREATE TABLE email_has_usuario (
	id_email INT NOT NULL UNIQUE,
    id_usuario INT NOT NULL,
    FOREIGN KEY (id_email) REFERENCES email(id_email),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);
-- 19
CREATE TABLE participante_has_partido1 (
	id_jugador_A1 INT,
    id_participante INT NOT NULL,
    FOREIGN KEY (id_jugador_A1) REFERENCES partido(id_jugador_A1),
    FOREIGN KEY (id_participante) REFERENCES participante(id_participante)
);
-- 20
CREATE TABLE participante_has_partido2 (
	id_jugador_A2 INT,
    id_participante INT NOT NULL,
    FOREIGN KEY (id_jugador_A2) REFERENCES partido(id_jugador_A2),
    FOREIGN KEY (id_participante) REFERENCES participante(id_participante)
);
-- 21
CREATE TABLE participante_has_partido3 (
	id_jugador_B1 INT,
    id_participante INT NOT NULL,
    FOREIGN KEY (id_jugador_B1) REFERENCES partido(id_jugador_B1),
    FOREIGN KEY (id_participante) REFERENCES participante(id_participante)
);
-- 22
CREATE TABLE participante_has_partido4 (
	id_jugador_B2 INT,
    id_participante INT NOT NULL,
    FOREIGN KEY (id_jugador_B2) REFERENCES partido(id_jugador_B2),
    FOREIGN KEY (id_participante) REFERENCES participante(id_participante)
);