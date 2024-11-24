USE railway;

-- Criação da Tabela Curso
CREATE TABLE curso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    curso VARCHAR(30),
    sigla VARCHAR(5)
);

-- Criação da Tabela Disciplina
CREATE TABLE disciplina (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idCurso INT,
    disciplina VARCHAR(30),
    sigla VARCHAR(5),
    FOREIGN KEY (idCurso) REFERENCES Curso(id)
);

-- Criação da Tabela Questões
CREATE TABLE questao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    enunciado VARCHAR(400),
    pontuacao INT,
    idDisciplina INT,
    FOREIGN KEY (idDisciplina) REFERENCES Disciplina(id)
);

-- Criação da Tabela Alternativa
CREATE TABLE alternativa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idQuestao INT,
    enunciado VARCHAR(400),
    correta BOOLEAN,
    FOREIGN KEY (idQuestao) REFERENCES Questao(id)
);

-- Criação da Tabela Usuário
CREATE TABLE usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    loginUsuario VARCHAR(50),
    email VARCHAR(100),
    senha VARCHAR(30),
    pontuacao INT
);

-- Criação da Tabela Quiz
CREATE TABLE quiz (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dataQuiz DATE,
    idCurso INT,
    idDisciplina INT,
    idUsuario INT,
    idQuestoes01 INT,
    idQuestoes02 INT,
    idQuestoes03 INT,
    idQuestoes04 INT,
    idQuestoes05 INT,
    pontuacao INT,
    FOREIGN KEY (idCurso) REFERENCES Curso(id),
    FOREIGN KEY (idDisciplina) REFERENCES Disciplina(id),
    FOREIGN KEY (idUsuario) REFERENCES Usuario(id),
    FOREIGN KEY (idQuestoes01) REFERENCES Questao(id),
    FOREIGN KEY (idQuestoes02) REFERENCES Questao(id),
    FOREIGN KEY (idQuestoes03) REFERENCES Questao(id),
    FOREIGN KEY (idQuestoes04) REFERENCES Questao(id),
    FOREIGN KEY (idQuestoes05) REFERENCES Questao(id)
);
