-- Consultas SQL para recuperar dados

-- Selecionar todos os funcionários
SELECT * FROM funcionario;

-- Contar dependentes por funcionário
SELECT Ssn AS CPF, COUNT(Essn) AS Total_dependentes 
FROM funcionario f
JOIN dependente d ON f.Ssn = d.Essn
GROUP BY Ssn;

-- Selecionar todos os dependentes
SELECT * FROM dependente;

-- Obter a data de nascimento e endereço de John B. Smith
SELECT Bdate AS Data_de_Nascimento, Endereco 
FROM funcionario
WHERE Fname = 'John' AND Minit = 'B' AND Lname = 'Smith';

-- Selecionar departamento 'Pesquisa'
SELECT * FROM departamento 
WHERE Dname = 'Pesquisa';

-- Obter informações dos funcionários do departamento 'Pesquisa'
SELECT Fname AS Nome, Lname AS Sobrenome, Endereco 
FROM funcionario
JOIN departamento ON funcionario.Dno = departamento.Dnumero
WHERE departamento.Dname = 'Pesquisa';

-- Selecionar todos os projetos
SELECT * FROM projeto;

-- Recuperar informações dos departamentos localizados em Stafford
SELECT Dname AS Departamento, Mgr_ssn AS Gerente 
FROM departamento d
JOIN localizacoes_departamento l ON d.Dnumero = l.Dnumero
WHERE l.Localizacao = 'Stafford';

-- Concatenar nomes de gerente
SELECT Dname AS Departamento, CONCAT(Fname, ' ', Lname) AS Gerente 
FROM departamento d
JOIN localizacoes_departamento l ON d.Dnumero = l.Dnumero
JOIN funcionario f ON d.Mgr_ssn = f.Ssn;

-- Recuperar projetos localizados em Stafford
SELECT * FROM projeto
JOIN departamento ON projeto.Dnum = departamento.Dnumero
WHERE projeto.Plocalizacao = 'Stafford';

-- Recuperar informações de departamentos e projetos localizados em Stafford
SELECT projeto.Pnumero AS Número_do_Projeto, departamento.Dnum AS Número_do_Departamento, funcionario.Lname AS Sobrenome_Gerente, funcionario.Endereco, funcionario.Bdate AS Data_de_Nascimento
FROM projeto
JOIN departamento ON projeto.Dnum = departamento.Dnumero
JOIN funcionario ON departamento.Mgr_ssn = funcionario.Ssn
WHERE projeto.Plocalizacao = 'Stafford';

-- Selecionar funcionários de certos departamentos
SELECT * FROM funcionario 
WHERE Dno IN (3, 6, 9);

-- Operadores lógicos
SELECT Bdate AS Data_de_Nascimento, Endereco 
FROM funcionario
WHERE Fname = 'John' AND Minit = 'B' AND Lname = 'Smith';

SELECT Fname AS Nome, Lname AS Sobrenome, Endereco 
FROM funcionario
JOIN departamento ON funcionario.Dno = departamento.Dnumero
WHERE departamento.Dname = 'Pesquisa';

-- Recolhendo o valor do INSS
SELECT Fname AS Nome, Lname AS Sobrenome, Salario, Salario * 0.011 AS INSS 
FROM funcionario;

SELECT Fname AS Nome, Lname AS Sobrenome, Salario, ROUND(Salario * 0.011, 2) AS INSS 
FROM funcionario;

-- Definindo aumento de salário para gerentes associados ao ProdutoX
SELECT f.Fname AS Nome, f.Lname AS Sobrenome, 1.1 * f.Salario AS Salario_aumentado 
FROM funcionario f
JOIN trabalha_em t ON f.Ssn = t.Essn
JOIN projeto p ON t.Pno = p.Pnumero
WHERE p.Pname = 'ProdutoX';

-- Concatenando e fornecendo alias
SELECT Dname AS Departamento, CONCAT(Fname, ' ', Lname) AS Gerente 
FROM departamento d
JOIN localizacoes_departamento l ON d.Dnumero = l.Dnumero
JOIN funcionario f ON d.Mgr_ssn = f.Ssn;

-- Recuperar dados dos funcionários que trabalham no departamento de Pesquisa
SELECT Fname AS Nome, Lname AS Sobrenome, Endereco 
FROM funcionario
JOIN departamento ON funcionario.Dno = departamento.Dnumero
WHERE departamento.Dname = 'Pesquisa';

-- Definindo alias para legibilidade da consulta
SELECT f.Fname AS Nome, f.Lname AS Sobrenome, f.Endereco 
FROM funcionario f
JOIN departamento d ON d.Dnumero = f.Dno
WHERE d.Dname = 'Pesquisa';
