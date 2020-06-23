DROP SCHEMA IF EXISTS Optica;
CREATE DATABASE IF NOT EXISTS Optica;
use Optica;

CREATE TABLE Proveidor (
	Id_proveidor	INT PRIMARY KEY,
	Nom		VARCHAR(96),
	Adreca		VARCHAR(2083),
	Telefon		VARCHAR(96),
	Fax		VARCHAR(96),
	NIF		VARCHAR(96)
);

CREATE TABLE Ulleres (
	Id_ulleres	INT PRIMARY KEY,
	Marca		VARCHAR(96),
	Graduacio_v1	FLOAT,
	Graduacio_v2	FLOAT,
	Tipus_muntura	VARCHAR(96),
	Color_v1	VARCHAR(96),
	Color_v2	VARCHAR(96),
	Preu		FLOAT,
	Id_proveidor	INT NOT NULL,
	Empleat		VARCHAR(96),
    FOREIGN KEY (Id_proveidor)
		REFERENCES Proveidor (Id_proveidor)
);

CREATE TABLE Clients (
	Id_client	INT PRIMARY KEY,
	Nom		VARCHAR(96),
	Adreca		VARCHAR(96),
	Telefon		VARCHAR(96),
	Email		VARCHAR(96),
	Data_registre	DATETIME,
	Id_client_recom	INT DEFAULT NULL,
	FOREIGN KEY (Id_client_recom)
		REFERENCES Clients (Id_client)
);