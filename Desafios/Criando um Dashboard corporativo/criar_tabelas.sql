use ntt;

create table funcionario (
	Primeiro_Nome varchar(15) not null,
    Inicial_Nome_Meio char(1), 
    Sobrenome varchar(15) not null,
    CPF int not null primary key,
    Data_Nascimento date,
    Endereco varchar(50),
    Sexo char(1),
    Salario decimal (10, 2),
    CPF_Supervisor int,
    Numero_Departamento int
    
);


create table departamento (
    Nome_Departamento VARCHAR(50) NOT NULL,   -- Nome do departamento (até 50 caracteres)
    Numero_Departamento INT NOT NULL PRIMARY KEY,   -- Número do departamento (chave primária)
    CPF_Gerente INT,   -- CPF do gerente do departamento (chave estrangeira para a tabela "funcionario")
    Data_Inicio_Gerente DATE,   -- Data em que o gerente assumiu o cargo
    Data_Criacao_Departamento DATE   -- Data de criação do departamento
);


CREATE TABLE localizacoes_departamento (
    Numero_Departamento INT NOT NULL,   -- Número do departamento (chave estrangeira)
    Localizacao_Departamento VARCHAR(50) NOT NULL,   -- Localização física do departamento
    PRIMARY KEY (Numero_Departamento, Localizacao_Departamento)   -- Chave composta
);


CREATE TABLE projeto (
    Nome_Projeto VARCHAR(50) NOT NULL,   -- Nome do projeto (até 50 caracteres)
    Numero_Projeto INT NOT NULL PRIMARY KEY,   -- Número identificador do projeto
    Localizacao_Projeto VARCHAR(50) NOT NULL,   -- Localização do projeto
    Numero_Departamento INT,   -- Número do departamento responsável pelo projeto (chave estrangeira)
    Data_Inicio_Projeto DATE,  -- Data de início do projeto
    Data_Termino_Projeto DATE  -- Data de término do projeto (pode ser nulo se não terminou)
);

CREATE TABLE dependente (
    CPF_Funcionario INT NOT NULL,   -- CPF do funcionário a quem o dependente está associado (chave estrangeira)
    Nome_Dependente VARCHAR(50) NOT NULL,   -- Nome do dependente (até 50 caracteres)
    Sexo_Dependente CHAR(1),   -- Sexo do dependente ('M' para masculino, 'F' para feminino)
    Data_Nascimento_Dependente DATE,   -- Data de nascimento do dependente
    Relacao_Dependencia VARCHAR(50),   -- Relação do dependente com o funcionário, como "Filho" ou "Cônjuge"
    PRIMARY KEY (CPF_Funcionario, Nome_Dependente)   -- Chave composta
);

CREATE TABLE trabalha_em (
    CPF_Funcionario INT NOT NULL,   -- CPF do funcionário que trabalha no projeto (chave estrangeira)
    Numero_Projeto INT NOT NULL,   -- Número do projeto no qual o funcionário está trabalhando (chave estrangeira)
    Horas_Trabalhadas DECIMAL(5, 2),   -- Número de horas que o funcionário trabalhou no projeto
    PRIMARY KEY (CPF_Funcionario, Numero_Projeto)   -- Chave composta
);
