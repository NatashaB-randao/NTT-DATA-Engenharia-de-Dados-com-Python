use ntt;

CREATE TABLE Dim_Cliente (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Endereco VARCHAR(255),
    Cidade VARCHAR(100),
    Estado VARCHAR(50)
);

CREATE TABLE Dim_Produto (
    ID_Produto INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Produto VARCHAR(100),
    Categoria VARCHAR(100),
    Preco DECIMAL(10, 2)
);

CREATE TABLE Dim_Data (
    ID_Data INT AUTO_INCREMENT PRIMARY KEY,
    Data DATE,
    Mes INT,
    Ano INT,
    Trimestre INT,
    Dia_da_Semana VARCHAR(15)
);

CREATE TABLE Fato_Vendas (
    ID_Venda INT AUTO_INCREMENT PRIMARY KEY,
    ID_Cliente INT,
    ID_Produto INT,
    ID_Data INT,
    Quantidade INT,
    Preco_Unitario DECIMAL(10, 2),
    Total_Venda DECIMAL(10, 2) AS (Quantidade * Preco_Unitario) STORED,
    FOREIGN KEY (ID_Cliente) REFERENCES Dim_Cliente(ID_Cliente),
    FOREIGN KEY (ID_Produto) REFERENCES Dim_Produto(ID_Produto),
    FOREIGN KEY (ID_Data) REFERENCES Dim_Data(ID_Data)
);