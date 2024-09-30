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


INSERT INTO Dim_Departamento (Nome_Departamento, Faculdade)
VALUES
('Departamento de Matemática', 'Faculdade de Ciências Exatas'),
('Departamento de História', 'Faculdade de Ciências Humanas'),
('Departamento de Biologia', 'Faculdade de Ciências da Vida');


INSERT INTO Dim_Professor (Nome_Professor, Especializacao, Grau_Academico, Data_Contratacao, ID_Departamento)
VALUES
('Dr. João Silva', 'Matemática', 'Doutor', '2015-03-01', 1),
('Profa. Maria Oliveira', 'História', 'Mestre', '2018-08-15', 2),
('Dr. Ana Costa', 'Biologia', 'Doutor', '2020-01-10', 3);


INSERT INTO Dim_Curso (Nome_Curso, Nivel_Curso, Carga_Horaria, ID_Departamento)
VALUES
('Cálculo I', 'Graduação', 60, 1),
('História do Brasil', 'Graduação', 45, 2),
('Biologia Geral', 'Graduação', 75, 3);


INSERT INTO Dim_Data (Data_Oferta, Ano, Mes, Dia, Trimestre)
VALUES
('2024-02-01', 2024, 2, 1, 1),
('2024-02-15', 2024, 2, 15, 1),
('2024-03-01', 2024, 3, 1, 1);


INSERT INTO Fato_ProfessorCurso (ID_Professor, ID_Curso, ID_Departamento, ID_Data, Horas_Lecionadas, Avaliacao_Professor)
VALUES
(1, 1, 1, 1, 30.0, 4.5),
(2, 2, 2, 2, 20.0, 4.0),
(3, 3, 3, 3, 40.0, 4.7);
