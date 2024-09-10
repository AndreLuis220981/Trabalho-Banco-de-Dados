-- Criação da tabela Cliente
CREATE TABLE IF NOT EXISTS cliente (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    cpf VARCHAR(14) NOT NULL UNIQUE,
    telefone VARCHAR(15),
    idade INTEGER
);

-- Criação da tabela Serviço
CREATE TABLE IF NOT EXISTS servico (
    id SERIAL PRIMARY KEY,
    tipo_servico VARCHAR(100) NOT NULL,
    valor_servico NUMERIC(10) NOT NULL
);

-- Criação da tabela Agendamento
CREATE TABLE IF NOT EXISTS agendamento (
    id SERIAL PRIMARY KEY,
    cliente_id INTEGER NOT NULL REFERENCES cliente(id) ON DELETE CASCADE,
    servico_id INTEGER NOT NULL REFERENCES servico(id) ON DELETE CASCADE,
    data_agendamento DATE NOT NULL,
    hora_agendamento TIME NOT NULL
);
