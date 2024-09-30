use ntt;

CREATE TABLE Dim_Data (
    ID_Data INT AUTO_INCREMENT PRIMARY KEY,
    Data_Oferta DATE,
    Ano INT,
    Mes INT,
    Dia INT,
    Trimestre INT
);

CREATE TABLE Dim_Departamento (
    ID_Departamento INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Departamento VARCHAR(100),
    Faculdade VARCHAR(100)
);

CREATE TABLE Dim_Curso (
    ID_Curso INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Curso VARCHAR(100),
    Nivel_Curso VARCHAR(50),
    Carga_Horaria INT,
    ID_Departamento INT,
    FOREIGN KEY (ID_Departamento) REFERENCES Dim_Departamento(ID_Departamento)
);

CREATE TABLE Dim_Professor (
    ID_Professor INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Professor VARCHAR(100),
    Especializacao VARCHAR(100),
    Grau_Academico VARCHAR(50),
    Data_Contratacao DATE,
    ID_Departamento INT,
    FOREIGN KEY (ID_Departamento) REFERENCES Dim_Departamento(ID_Departamento)
);

CREATE TABLE Fato_ProfessorCurso (
    ID_Fato INT AUTO_INCREMENT PRIMARY KEY,
    ID_Professor INT,
    ID_Curso INT,
    ID_Departamento INT,
    ID_Data INT,
    Horas_Lecionadas DECIMAL(10, 2),
    Avaliacao_Professor DECIMAL(3, 2),
    FOREIGN KEY (ID_Professor) REFERENCES Dim_Professor(ID_Professor),
    FOREIGN KEY (ID_Curso) REFERENCES Dim_Curso(ID_Curso),
    FOREIGN KEY (ID_Departamento) REFERENCES Dim_Departamento(ID_Departamento),
    FOREIGN KEY (ID_Data) REFERENCES Dim_Data(ID_Data)
);