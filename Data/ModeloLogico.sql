CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    tipo_usuario VARCHAR(20) CHECK (tipo_usuario IN ('empresa', 'fornecedor'))
);

CREATE TABLE empresas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cnpj VARCHAR(18) UNIQUE NOT NULL,
    usuario_id INT UNIQUE NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

CREATE TABLE fornecedores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cnpj VARCHAR(18) UNIQUE NOT NULL,
    usuario_id INT UNIQUE NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);


/**/

CREATE TABLE estoques (
    id SERIAL PRIMARY KEY,
    empresa_id INT NOT NULL,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (empresa_id) REFERENCES empresas(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id),
    UNIQUE (empresa_id, produto_id)
);


/**/

CREATE TABLE vendas (
    id SERIAL PRIMARY KEY,
    empresa_id INT NOT NULL,
    produto_id INT NOT NULL,
    data_venda DATE NOT NULL,
    quantidade INT NOT NULL,
    valor NUMERIC(10,2) NOT NULL,
    FOREIGN KEY (empresa_id) REFERENCES empresas(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);


/**/

CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco NUMERIC(10,2) NOT NULL
);


/**/

CREATE TABLE fornecedores_produtos (
    fornecedor_id INT NOT NULL,
    produto_id INT NOT NULL,
    PRIMARY KEY (fornecedor_id, produto_id),
    FOREIGN KEY (fornecedor_id) REFERENCES fornecedores(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);


/**/

CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    empresa_id INT NOT NULL,
    fornecedor_id INT NOT NULL,
    produto_id INT NOT NULL,
    data_pedido DATE NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (empresa_id) REFERENCES empresas(id),
    FOREIGN KEY (fornecedor_id) REFERENCES fornecedores(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);
