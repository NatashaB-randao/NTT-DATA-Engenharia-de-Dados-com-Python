USE ntt;

-- Inserindo dados na tabela "funcionario"
INSERT INTO funcionario VALUES 
('John', 'B', 'Smith', 123456789, '1965-01-09', '731-Fondren-Houston-TX', 'M', 30000, 333445555, 5),
('Franklin', 'T', 'Wong', 333445555, '1955-12-08', '638-Voss-Houston-TX', 'M', 40000, 888665555, 5),
('Alicia', 'J', 'Zelaya', 999887777, '1968-01-19', '3321-Castle-Spring-TX', 'F', 25000, 987654321, 4),
('Jennifer', 'S', 'Wallace', 987654321, '1941-06-20', '291-Berry-Bellaire-TX', 'F', 43000, 888665555, 4),
('Ramesh', 'K', 'Narayan', 666884444, '1962-09-15', '975-Fire-Oak-Humble-TX', 'M', 38000, 333445555, 5),
('Joyce', 'A', 'English', 453453453, '1972-07-31', '5631-Rice-Houston-TX', 'F', 25000, 333445555, 5),
('Ahmad', 'V', 'Jabbar', 987987987, '1969-03-29', '980-Dallas-Houston-TX', 'M', 25000, 987654321, 4),
('James', 'E', 'Borg', 888665555, '1937-11-10', '450-Stone-Houston-TX', 'M', 55000, NULL, 1);

-- Inserindo dependentes dos funcionários
INSERT INTO dependente VALUES 
(333445555, 'Alice', 'F', '1986-04-05', 'Filha'),
(333445555, 'Theodore', 'M', '1983-10-25', 'Filho'),
(333445555, 'Joy', 'F', '1958-05-03', 'Cônjuge'),
(987654321, 'Abner', 'M', '1942-02-28', 'Cônjuge'),
(123456789, 'Michael', 'M', '1988-01-04', 'Filho'),
(123456789, 'Alice', 'F', '1988-12-30', 'Filha'),
(123456789, 'Elizabeth', 'F', '1967-05-05', 'Cônjuge');

-- Inserindo dados nos departamentos
INSERT INTO departamento VALUES 
('Pesquisa', 5, 333445555, '1988-05-22', '1986-05-22'),
('Administração', 4, 987654321, '1995-01-01', '1994-01-01'),
('Sede', 1, 888665555, '1981-06-19', '1980-06-19');

-- Localizações dos departamentos
INSERT INTO localizacoes_departamento VALUES 
(1, 'Houston'),
(4, 'Stafford'),
(5, 'Bellaire'),
(5, 'Sugarland'),
(5, 'Houston');

-- Inserindo projetos
INSERT INTO projeto VALUES 
('ProdutoX', 1, 'Bellaire', 5, '2023-01-01', NULL),
('ProdutoY', 2, 'Sugarland', 5, '2023-01-01', NULL),
('ProdutoZ', 3, 'Houston', 5, '2023-01-01', NULL),
('Computadorização', 10, 'Stafford', 4, '2023-01-01', NULL),
('Reorganização', 20, 'Houston', 1, '2023-01-01', NULL),
('NovosBenefícios', 30, 'Stafford', 4, '2023-01-01', NULL);

-- Funcionários trabalhando nos projetos
INSERT INTO trabalha_em VALUES 
(123456789, 1, 32.5),
(123456789, 2, 7.5),
(666884444, 3, 40.0),
(453453453, 1, 20.0),
(453453453, 2, 20.0),
(333445555, 2, 10.0),
(333445555, 3, 10.0),
(333445555, 10, 10.0),
(333445555, 20, 10.0),
(999887777, 30, 30.0),
(999887777, 10, 10.0),
(987987987, 10, 35.0),
(987987987, 30, 5.0),
(987654321, 30, 20.0),
(987654321, 20, 15.0),
(888665555, 20, 0.0);
