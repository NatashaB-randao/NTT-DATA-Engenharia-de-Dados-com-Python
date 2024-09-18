-- Consultas SQL para recuperar dados

-- Selecionar todos os funcionários
SELECT * FROM funcionario;

-- Contar dependentes por funcionário
SELECT CPF_Funcionario AS CPF, COUNT(Nome_Dependente) AS Total_Dependentes
FROM funcionario f
JOIN dependente d ON f.CPF = d.CPF_Funcionario
GROUP BY CPF_Funcionario;

-- Selecionar todos os dependentes
SELECT * FROM dependente;

-- Obter a data de nascimento e endereço de John B. Smith
SELECT Data_Nascimento, Endereco 
FROM funcionario
WHERE Primeiro_Nome = 'John' AND Inicial_Nome_Meio = 'B' AND Sobrenome = 'Smith';


-- Selecionar departamento 'Pesquisa'
SELECT * FROM departamento WHERE Nome_Departamento = 'Pesquisa';


-- Obter informações dos funcionários do departamento 'Pesquisa'
SELECT Primeiro_Nome, Sobrenome, Endereco
FROM funcionario
JOIN departamento ON funcionario.Numero_Departamento = departamento.Numero_Departamento
WHERE Nome_Departamento = 'Pesquisa';

-- Selecionar todos os projetos
SELECT * FROM projeto;

-- Recuperando informações dos departamentos localizados em Stafford
SELECT Nome_Departamento AS Departamento, CPF_Gerente AS Gerente 
FROM departamento d
JOIN localizacoes_departamento l ON d.Numero_Departamento = l.Numero_Departamento
WHERE l.Localizacao_Departamento = 'Stafford';

-- Concatenando nomes de gerente
SELECT Nome_Departamento AS Departamento, CONCAT(f.Primeiro_Nome, ' ', f.Sobrenome) AS Gerente 
FROM departamento d
JOIN localizacoes_departamento l ON d.Numero_Departamento = l.Numero_Departamento
JOIN funcionario f ON d.CPF_Gerente = f.CPF;

-- Recuperando projetos localizados em Stafford
SELECT * FROM projeto
JOIN departamento ON projeto.Numero_Departamento = departamento.Numero_Departamento
WHERE Localizacao_Projeto = 'Stafford';

-- Recuperando informações de departamentos e projetos localizados em Stafford
SELECT projeto.Numero_Projeto, departamento.Numero_Departamento, f.Sobrenome, f.Endereco, f.Data_Nascimento
FROM projeto
JOIN departamento ON projeto.Numero_Departamento = departamento.Numero_Departamento
JOIN funcionario f ON departamento.CPF_Gerente = f.CPF
WHERE projeto.Localizacao_Projeto = 'Stafford';

-- Selecionar funcionários de certos departamentos
SELECT * FROM funcionario WHERE Numero_Departamento IN (3, 6, 9);

-- Operadores lógicos
SELECT Data_Nascimento, Endereco
FROM funcionario
WHERE Primeiro_Nome = 'John' AND Inicial_Nome_Meio = 'B' AND Sobrenome = 'Smith';

SELECT Primeiro_Nome, Sobrenome, Endereco
FROM funcionario
JOIN departamento ON funcionario.Numero_Departamento = departamento.Numero_Departamento
WHERE Nome_Departamento = 'Pesquisa';

-- Recolhendo o valor do INSS
SELECT Primeiro_Nome, Sobrenome, Salario, Salario * 0.011 AS INSS FROM funcionario;
SELECT Primeiro_Nome, Sobrenome, Salario, ROUND(Salario * 0.011, 2) AS INSS FROM funcionario;

-- Definindo aumento de salário para gerentes associados ao ProdutoX
SELECT f.Primeiro_Nome, f.Sobrenome, 1.1 * f.Salario AS Salario_Aumentado 
FROM funcionario f
JOIN trabalha_em t ON f.CPF = t.CPF_Funcionario
JOIN projeto p ON t.Numero_Projeto = p.Numero_Projeto
WHERE p.Nome_Projeto = 'ProdutoX';

-- Concatenando e fornecendo alias
SELECT Nome_Departamento AS Departamento, CONCAT(f.Primeiro_Nome, ' ', f.Sobrenome) AS Gerente 
FROM departamento d
JOIN localizacoes_departamento l ON d.Numero_Departamento = l.Numero_Departamento
JOIN funcionario f ON d.CPF_Gerente = f.CPF;

-- Recuperando dados dos funcionários que trabalham no departamento de Pesquisa
SELECT Primeiro_Nome, Sobrenome, Endereco 
FROM funcionario
JOIN departamento ON funcionario.Numero_Departamento = departamento.Numero_Departamento
WHERE Nome_Departamento = 'Pesquisa';

-- Definindo alias para legibilidade da consulta
SELECT f.Primeiro_Nome, f.Sobrenome, f.Endereco 
FROM funcionario f
JOIN departamento d ON d.Numero_Departamento = f.Numero_Departamento
WHERE d.Nome_Departamento = 'Pesquisa';
