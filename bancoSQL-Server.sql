-- Criação do Banco de Dados
CREATE DATABASE quiz;
GO

USE Quiz;
GO

-- Criação da Tabela Curso
CREATE TABLE curso (
    id INT IDENTITY(1,1) PRIMARY KEY,
    curso VARCHAR(30),
    sigla VARCHAR(5)
);
GO

-- Criação da Tabela Disciplina
CREATE TABLE disciplina (
    id INT IDENTITY(1,1) PRIMARY KEY,
    idCurso INT FOREIGN KEY REFERENCES Curso(id),
    disciplina VARCHAR(30),
    sigla VARCHAR(5)
);
GO

-- Criação da Tabela Questões
CREATE TABLE questao (
    id INT IDENTITY(1,1) PRIMARY KEY,
    enunciado VARCHAR(50),
    pontuacao INT,
    idDisciplina INT FOREIGN KEY REFERENCES Disciplina(id)
);
GO

-- Criação da Tabela Alternativa
CREATE TABLE alternativa (
    id INT IDENTITY(1,1) PRIMARY KEY,
    idQuestao INT FOREIGN KEY REFERENCES Questao(id),
    enunciado VARCHAR(50),
    correta BIT
);
GO

-- Criação da Tabela Usuário
CREATE TABLE usuario (
    id INT IDENTITY(1,1) PRIMARY KEY,
    loginUsuario VARCHAR(50),
    email VARCHAR(100),
    senha VARCHAR(30),
    pontuacao INT
);
GO

-- Criação da Tabela Quiz
CREATE TABLE quiz (
    id INT IDENTITY(1,1) PRIMARY KEY,
    dataQuiz DATE,
    idCurso INT FOREIGN KEY REFERENCES Curso(id),
    idDisciplina INT FOREIGN KEY REFERENCES Disciplina(id),
    idUsuario INT FOREIGN KEY REFERENCES Usuario(id),
    idQuestoes01 INT FOREIGN KEY REFERENCES Questao(id),
    idQuestoes02 INT FOREIGN KEY REFERENCES Questao(id),
    idQuestoes03 INT FOREIGN KEY REFERENCES Questao(id),
    idQuestoes04 INT FOREIGN KEY REFERENCES Questao(id),
    idQuestoes05 INT FOREIGN KEY REFERENCES Questao(id),
    pontuacao INT
);
GO
