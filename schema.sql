CREATE TABLE Clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_cadastro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL DEFAULT 0
);

CREATE TABLE Pedidos (
    id SERIAL PRIMARY KEY,
    cliente_id INT REFERENCES Clientes(id),
    data_pedido DATE DEFAULT CURRENT_DATE,
    valor_total DECIMAL(10, 2)
);

CREATE TABLE Itens_Pedido (
    id SERIAL PRIMARY KEY,
    pedido_id INT REFERENCES Pedidos(id),
    produto_id INT REFERENCES Produtos(id),
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL
);
