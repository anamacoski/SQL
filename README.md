# -- Criação do banco de dados
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
-- Inserindo Professores (substitua os valores entre aspas)
INSERT INTO Professores (nome, disciplina) VALUES ('NOME_DO_PROFESSOR_1', 'DISCIPLINA_1');
INSERT INTO Professores (nome, disciplina) VALUES ('NOME_DO_PROFESSOR_2', 'DISCIPLINA_2');
INSERT INTO Professores (nome, disciplina) VALUES ('NOME_DO_PROFESSOR_3', 'DISCIPLINA_3');

-- Inserindo Turmas (você pode manter ou alterar os nomes e horários)
INSERT INTO Turmas (nome_turma, horario) VALUES ('Turma A', '08:00 - 10:00');
INSERT INTO Turmas (nome_turma, horario) VALUES ('Turma B', '10:00 - 12:00');

-- Inserindo Alunos (substitua os valores entre aspas e ajuste o id_turma conforme necessário)
INSERT INTO Alunos (nome, idade, id_turma) VALUES ('NOME_DO_ALUNO_1', IDADE_1, ID_TURMA);
INSERT INTO Alunos (nome, idade, id_turma) VALUES ('NOME_DO_ALUNO_2', IDADE_2, ID_TURMA);
INSERT INTO Alunos (nome, idade, id_turma) VALUES ('NOME_DO_ALUNO_3', IDADE_3, ID_TURMA);
INSERT INTO Alunos (nome, idade, id_turma) VALUES ('NOME_DO_ALUNO_4', IDADE_4, ID_TURMA);
INSERT INTO Alunos (nome, idade, id_turma) VALUES ('NOME_DO_ALUNO_5', IDADE_5, ID_TURMA);
-- Selecionar todos os professores
SELECT * FROM Professores;

-- Selecionar alunos da Turma A (id_turma = 1)
SELECT * FROM Alunos WHERE id_turma = 1;

-- Selecionar professor específico pelo nome
SELECT * FROM Professores WHERE nome = 'Ana Souza';

