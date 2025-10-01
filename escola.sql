-- Criação do banco de dados
CREATE DATABASE Escola;
USE Escola;

-- Tabela de Professores
CREATE TABLE Professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    disciplina VARCHAR(100)
);

-- Tabela de Turmas
CREATE TABLE Turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(50),
    horario VARCHAR(50)
);

-- Tabela de Alunos
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES Turmas(id_turma)
);
-- Inserindo Professores
INSERT INTO Professores (nome, disciplina) VALUES ('Carlos Silva', 'Matemática');
INSERT INTO Professores (nome, disciplina) VALUES ('Ana Souza', 'História');
INSERT INTO Professores (nome, disciplina) VALUES ('João Lima', 'Português');

-- Inserindo Turmas
INSERT INTO Turmas (nome_turma, horario) VALUES ('Turma A', '08:00 - 10:00');
INSERT INTO Turmas (nome_turma, horario) VALUES ('Turma B', '10:00 - 12:00');

-- Inserindo Alunos
INSERT INTO Alunos (nome, idade, id_turma) VALUES ('Maria Oliveira', 15, 1);
INSERT INTO Alunos (nome, idade, id_turma) VALUES ('Pedro Santos', 14, 1);
INSERT INTO Alunos (nome, idade, id_turma) VALUES ('Juliana Costa', 15, 2);
INSERT INTO Alunos (nome, idade, id_turma) VALUES ('Lucas Rocha', 13, 2);
INSERT INTO Alunos (nome, idade, id_turma) VALUES ('Fernanda Lima', 14, 1);
-- Selecionar todos os professores
SELECT * FROM Professores;

-- Selecionar alunos da Turma A (id_turma = 1)
SELECT * FROM Alunos WHERE id_turma = 1;

-- Selecionar professor específico pelo nome
SELECT * FROM Professores WHERE nome = 'Ana Souza';
