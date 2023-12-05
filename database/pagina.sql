/*create database pagina;*/
use pagina;
-- Crear la tabla Equipos
CREATE TABLE Equipos (
    ID INT PRIMARY KEY,
    NombreEquipo VARCHAR(255)
);

-- Crear la tabla Campeonatos
CREATE TABLE Campeonatos (
    ID INT PRIMARY KEY,
    NombreCampeonato VARCHAR(255),
    Anio INT
);

-- Crear la tabla Comentarios
CREATE TABLE Comentarios (
    ID INT PRIMARY KEY,
    Contenido TEXT,
    FechaComentario DATE,
    EquipoID INT,
    FOREIGN KEY (EquipoID) REFERENCES Equipos(ID)
);

-- Crear la tabla Usuarios (si es necesario)
CREATE TABLE Usuarios (
    ID INT PRIMARY KEY,
    NombreUsuario VARCHAR(255),
    CorreoElectronico VARCHAR(255),
    Contraseña VARCHAR(255)
);

-- Crear la tabla Equipos_Campeonatos para gestionar la relación muchos a muchos
CREATE TABLE Equipos_Campeonatos (
    EquipoID INT,
    CampeonatoID INT,
    Anio INT,
    PRIMARY KEY (EquipoID, CampeonatoID),
    FOREIGN KEY (EquipoID) REFERENCES Equipos(ID),
    FOREIGN KEY (CampeonatoID) REFERENCES Campeonatos(ID)
);
