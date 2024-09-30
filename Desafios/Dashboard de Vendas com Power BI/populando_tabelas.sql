INSERT INTO Dim_Cliente (Nome, Endereco, Cidade, Estado) VALUES
('João Silva', 'Rua A, 123', 'São Paulo', 'SP'),
('Maria Oliveira', 'Rua B, 456', 'Rio de Janeiro', 'RJ'),
('Carlos Santos', 'Avenida C, 789', 'Belo Horizonte', 'MG'),
('Ana Paula', 'Praça D, 101', 'Curitiba', 'PR'),
('Pedro Lima', 'Rua E, 234', 'Porto Alegre', 'RS');

INSERT INTO Dim_Produto (Nome_Produto, Categoria, Preco) VALUES
('Produto A', 'Eletrônicos', 299.99),
('Produto B', 'Roupas', 79.99),
('Produto C', 'Alimentos', 9.99),
('Produto D', 'Livros', 29.99),
('Produto E', 'Brinquedos', 49.99);


INSERT INTO Dim_Data (Data, Mes, Ano, Trimestre, Dia_da_Semana) VALUES
('2024-01-01', 1, 2024, 1, 'Terça-feira'),
('2024-01-02', 1, 2024, 1, 'Quarta-feira'),
('2024-01-03', 1, 2024, 1, 'Quinta-feira'),
('2024-01-04', 1, 2024, 1, 'Sexta-feira'),
('2024-01-05', 1, 2024, 1, 'Sábado'),
('2024-01-06', 1, 2024, 1, 'Domingo'),
('2024-01-07', 1, 2024, 1, 'Segunda-feira'),
('2024-12-30', 12, 2024, 4, 'Segunda-feira'),
('2024-12-31', 12, 2024, 4, 'Terça-feira');

INSERT INTO Fato_Vendas (ID_Cliente, ID_Produto, ID_Data, Quantidade, Preco_Unitario) VALUES
(1, 1, 1, 2, 299.99),  -- João Silva comprou 2 unidades do Produto A
(2, 2, 2, 1, 79.99),   -- Maria Oliveira comprou 1 unidade do Produto B
(3, 3, 3, 5, 9.99),    -- Carlos Santos comprou 5 unidades do Produto C
(4, 4, 4, 3, 29.99),   -- Ana Paula comprou 3 unidades do Produto D
(5, 5, 5, 1, 49.99);   -- Pedro Lima comprou 1 unidade do Produto E