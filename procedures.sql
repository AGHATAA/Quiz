-- Script de Stored Procedures para Gerenciamento de Cursos, Disciplinas, Usuários, Alternativas, Questões e Quizzes

USE Quiz;
GO

-- =============================================
-- ============== PROCEDORES CURSO ==============
-- =============================================

-- Inserir Curso
CREATE PROCEDURE inserirCurso
    @curso VARCHAR(30),
    @sigla VARCHAR(5)
AS
BEGIN 
    INSERT INTO curso VALUES (@curso, @sigla)
    -- EXEC inserirCurso 'Secretariado', 'Sec'
END
GO

-- Deletar Curso
CREATE PROCEDURE deletarCurso
    @id INT
AS
BEGIN 
    DELETE FROM curso WHERE id = @id
    -- EXEC deletarCurso 2
END
GO

-- Alterar Curso
CREATE PROCEDURE alterarCurso
    @id INT,
    @curso VARCHAR(30),
    @sigla VARCHAR(5)
AS
BEGIN
    UPDATE curso SET curso = @curso, sigla = @sigla WHERE id = @id
    -- EXEC alterarCurso 2, 'Secretariado', 'Secre'
END
GO

-- Consultar Curso
CREATE PROCEDURE consultarCurso
AS
BEGIN
    SELECT * FROM curso
    -- EXEC consultarCurso 
END
GO

-- Consultar Sigla Por Curso
CREATE PROCEDURE consultarSiglaPorCurso
    @curso VARCHAR(30)
AS
BEGIN
    SELECT * FROM Curso WHERE curso = @curso
    -- EXEC consultarSiglaPorCurso 'Secretariado'
END
GO

-- Consultar Curso Por Sigla
CREATE PROCEDURE consultarCursoPorSigla
    @sigla VARCHAR(5)
AS
BEGIN
    SELECT * FROM Curso WHERE sigla = @sigla
    -- EXEC consultarCursoPorSigla 'DS'
END
GO


-- =============================================
-- ============== PROCEDORES DISCIPLINA ==========
-- =============================================

-- Inserir Disciplina
CREATE PROCEDURE inserirDisciplina
    @idCurso INT,
    @disciplina VARCHAR(50),
    @sigla VARCHAR(5)
AS 
BEGIN
    INSERT INTO disciplina VALUES (@idCurso, @disciplina, @sigla)
    -- EXEC inserirDisciplina 1, 'Banco de Dados', 'BD'
END
GO

-- Deletar Disciplina
CREATE PROCEDURE deletarDisciplina
    @id INT
AS
BEGIN 
    DELETE FROM disciplina WHERE id = @id
    -- EXEC deletarDisciplina 2
END
GO

-- Alterar Disciplina
CREATE PROCEDURE alterarDisciplina
    @id INT,
    @idCurso INT,
    @disciplina VARCHAR(30),
    @sigla VARCHAR(5)
AS
BEGIN
    UPDATE disciplina SET idCurso = @idCurso, disciplina = @disciplina, sigla = @sigla WHERE id = @id
    -- EXEC alterarDisciplina 1, 2, 'Banco de Dados', 'BD'
END
GO

-- Consultar Disciplina
CREATE PROCEDURE consultarDisciplina
AS
BEGIN
    SELECT * FROM disciplina
    -- EXEC consultarDisciplina 
END
GO

-- Consultar Disciplina Por Curso
CREATE PROCEDURE consultarDisciplinaPorCurso
    @idCurso INT
AS
BEGIN
    SELECT * FROM disciplina WHERE idCurso = @idCurso
    -- EXEC consultarDisciplinaPorCurso 1
END
GO


-- =============================================
-- ============== PROCEDORES USUÁRIO ==============
-- =============================================

-- Inserir Usuário
CREATE PROCEDURE inserirUsuario
    @id INT,
    @loginUsuario VARCHAR(50),
    @email VARCHAR(100),
    @senha VARCHAR(30),
    @pontuacao INT
AS
BEGIN
    INSERT INTO usuario VALUES (@loginUsuario, @email, @senha, @pontuacao)
    -- EXEC inserirUsuario 'etec22', 'alberteinsten@etec.sp.gov.br', '123456', 6.7
END
GO

-- Deletar Usuário
CREATE PROCEDURE deletarUsuario
    @id INT
AS
BEGIN 
    DELETE FROM Usuario WHERE id = @id
    -- EXEC deletarUsuario 2
END
GO

-- Alterar Usuário
CREATE PROCEDURE alterarUsuario
    @id INT,
    @loginUsuario VARCHAR(50),
    @email VARCHAR(100),
    @senha VARCHAR(30),
    @pontuacao INT
AS
BEGIN
    UPDATE usuario SET loginUsuario = @loginUsuario, email = @email, senha = @senha, pontuacao = @pontuacao WHERE id = @id
    -- EXEC alterarUsuario 2, 'etec123', 'alberteinsten@etec.sp.gov.br', '765432', 8
END
GO

-- Alterar Senha Por ID
CREATE PROCEDURE alterarSenhaPorID
    @id INT,
    @senha VARCHAR(30)
AS
BEGIN
    UPDATE usuario SET senha = @senha WHERE id = @id
    -- EXEC alterarSenhaPorID 2, '765432'
END
GO

-- Alterar Senha Por Login
CREATE PROCEDURE alterarSenhaPorLogin
    @loginUsuario VARCHAR(50),
    @senha VARCHAR(30)
AS
BEGIN
    UPDATE usuario SET senha = @senha WHERE loginUsuario = @loginUsuario 
    -- EXEC alterarSenhaPorLogin 'etec123', 'novaSenha'
END
GO

-- Consultar Usuário
CREATE PROCEDURE consultarUsuario
AS
BEGIN
    SELECT * FROM Usuario
    -- EXEC consultarUsuario
END
GO

-- Consultar Usuário Por Login
CREATE PROCEDURE consultarUsuarioPorLogin
    @loginUsuario VARCHAR(50)
AS
BEGIN
    SELECT * FROM usuario WHERE loginUsuario = @loginUsuario 
    -- EXEC consultarUsuarioPorLogin 'etec123'
END
GO

-- Consultar Usuário Por Email
CREATE PROCEDURE consultarUsuarioPorEmail
    @email VARCHAR(100)
AS
BEGIN
    SELECT * FROM usuario WHERE email = @email 
    -- EXEC consultarUsuarioPorEmail 'alberteinsten@etec.sp.gov.br'
END
GO

-- Consultar Usuário Por ID
CREATE PROCEDURE consultarUsuarioPorID
    @id INT
AS
BEGIN
    SELECT * FROM usuario WHERE id = @id
    -- EXEC consultarUsuarioPorID 2
END
GO

-- Validar Senha
CREATE PROCEDURE ValidarSenha
    @id INT = NULL,
    @loginUsuario VARCHAR(50) = NULL,
    @senha VARCHAR(30)
AS
BEGIN
    DECLARE @senhaArmazenada VARCHAR(30);
    
    -- Obter a senha armazenada com base no ID ou login do usuário
    SELECT @senhaArmazenada = senha
    FROM usuario
    WHERE (id = @id OR loginUsuario = @loginUsuario);
    
    -- Verificar se a senha informada é igual à senha armazenada
    IF @senhaArmazenada IS NOT NULL AND @senhaArmazenada = @senha
    BEGIN
        RETURN 1 -- Retorna verdadeiro
    END
    ELSE
    BEGIN
        RETURN 0 -- Retorna falso
    END
END
GO

-- Somar Pontuação
CREATE PROCEDURE SomarPontuacao
    @id INT = NULL,
    @loginUsuario VARCHAR(50) = NULL,
    @pontos INT
AS
BEGIN
    DECLARE @novaPontuacao INT;

    -- Atualizar a pontuação do usuário com base no ID ou login
    UPDATE usuario
    SET pontuacao = pontuacao + @pontos
    OUTPUT inserted.pontuacao -- Retorna o novo valor da pontuação
    WHERE (id = @id OR loginUsuario = @loginUsuario);

    -- Verifica se a atualização foi bem-sucedida
    IF @@ROWCOUNT = 0
    BEGIN
        RAISERROR('Usuário não encontrado.', 16, 1);
    END
END
GO

-- Atualizar Senha
CREATE PROCEDURE AtualizarSenha
    @id INT = NULL,
    @loginUsuario VARCHAR(50) = NULL,
    @novaSenha VARCHAR(30)
AS
BEGIN
    -- Atualizar a senha do usuário com base no ID ou login
    UPDATE usuario
    SET senha = @novaSenha
    WHERE (id = @id OR loginUsuario = @loginUsuario);

    -- Verifica se a atualização foi bem-sucedida
    IF @@ROWCOUNT = 0
    BEGIN
        RAISERROR('Usuário não encontrado ou senha não atualizada.', 16, 1);
    END
    ELSE
    BEGIN
        PRINT 'Senha atualizada com sucesso.';
    END
END
GO

-- Obter Ranking
CREATE PROCEDURE ObterRanking
    @id INT = NULL,
    @loginUsuario VARCHAR(50) = NULL
AS
BEGIN
    WITH Ranking AS (
        SELECT 
            id,
            loginUsuario,
            pontuacao,
            ROW_NUMBER() OVER (ORDER BY pontuacao DESC) AS Colocacao
        FROM usuario
    ),
    UsuarioLogado AS (
        SELECT 
            Colocacao,
            id,
            loginUsuario,
            pontuacao
        FROM Ranking
        WHERE (id = @id OR loginUsuario = @loginUsuario)
    )
    
    SELECT 
        r.Colocacao,
        r.loginUsuario,
        r.pontuacao
    FROM Ranking r
    LEFT JOIN UsuarioLogado u ON r.id = u.id
    ORDER BY r.Colocacao;
END
GO

-- =============================================
-- ============== PROCEDORES QUESTÃO ==============
-- =============================================

-- Inserir Questão
CREATE PROCEDURE inserirQuestao
    @idDisciplina INT,
    @enunciado VARCHAR(255),
    @nivelDificuldade INT,
    @tipoQuestao VARCHAR(20)
AS
BEGIN
    INSERT INTO questao VALUES (@idDisciplina, @enunciado, @nivelDificuldade, @tipoQuestao)
    -- EXEC inserirQuestao 1, 'Qual é a capital da França?', 1, 'Múltipla Escolha'
END
GO

-- Deletar Questão
CREATE PROCEDURE deletarQuestao
    @id INT
AS
BEGIN 
    DELETE FROM questao WHERE id = @id
    -- EXEC deletarQuestao 2
END
GO

-- Alterar Questão
CREATE PROCEDURE alterarQuestao
    @id INT,
    @idDisciplina INT,
    @enunciado VARCHAR(255),
    @nivelDificuldade INT,
    @tipoQuestao VARCHAR(20)
AS
BEGIN
    UPDATE questao 
    SET idDisciplina = @idDisciplina, enunciado = @enunciado, nivelDificuldade = @nivelDificuldade, tipoQuestao = @tipoQuestao 
    WHERE id = @id
    -- EXEC alterarQuestao 2, 1, 'Qual é a capital do Brasil?', 1, 'Múltipla Escolha'
END
GO

-- Consultar Questão
CREATE PROCEDURE consultarQuestao
AS
BEGIN
    SELECT * FROM questao
    -- EXEC consultarQuestao 
END
GO

-- Consultar Questão Por Disciplina
CREATE PROCEDURE consultarQuestaoPorDisciplina
    @idDisciplina INT
AS
BEGIN
    SELECT * FROM questao WHERE idDisciplina = @idDisciplina
    -- EXEC consultarQuestaoPorDisciplina 1
END
GO

-- Consultar Questão Por ID
CREATE PROCEDURE consultarQuestaoPorID
    @id INT
AS
BEGIN
    SELECT * FROM questao WHERE id = @id
    -- EXEC consultarQuestaoPorID 1
END
GO


-- =============================================
-- ============== PROCEDORES ALTERNATIVA ==============
-- =============================================

-- Inserir Alternativa
CREATE PROCEDURE inserirAlternativa
    @idQuestao INT,
    @enunciado VARCHAR(255),
    @correta BIT
AS
BEGIN
    INSERT INTO alternativa VALUES (@idQuestao, @enunciado, @correta)
    -- EXEC inserirAlternativa 1, 'Paris', 1
END
GO

-- Deletar Alternativa
CREATE PROCEDURE deletarAlternativa
    @id INT
AS
BEGIN 
    DELETE FROM alternativa WHERE id = @id
    -- EXEC deletarAlternativa 2
END
GO

-- Alterar Alternativa
CREATE PROCEDURE alterarAlternativa
    @id INT,
    @idQuestao INT,
    @enunciado VARCHAR(255),
    @correta BIT
AS
BEGIN
    UPDATE alternativa 
    SET idQuestao = @idQuestao, enunciado = @enunciado, correta = @correta 
    WHERE id = @id
    -- EXEC alterarAlternativa 2, 1, 'Paris', 1
END
GO

-- Consultar Alternativa
CREATE PROCEDURE consultarAlternativa
AS
BEGIN
    SELECT * FROM alternativa
    -- EXEC consultarAlternativa 
END
GO

-- Consultar Alternativa Por Enunciado
CREATE PROCEDURE consultarAlternativaPorEnunciado
    @enunciado VARCHAR(255)
AS
BEGIN
    SELECT * FROM alternativa WHERE enunciado = @enunciado
    -- EXEC consultarAlternativaPorEnunciado 'Paris'
END
GO

-- Consultar Alternativa Por Questão
CREATE PROCEDURE consultarAlternativaPorQuestao
    @idQuestao INT
AS
BEGIN
    SELECT * FROM alternativa WHERE idQuestao = @idQuestao
    -- EXEC consultarAlternativaPorQuestao 1
END
GO

-- =============================================
-- ============== PROCEDORES QUIZ ==============
-- =============================================

-- Inserir Quiz
CREATE PROCEDURE inserirQuiz
    @idDisciplina INT,
    @nomeQuiz VARCHAR(50),
    @dataCriacao DATE,
    @tempoLimite INT
AS
BEGIN
    INSERT INTO quiz VALUES (@idDisciplina, @nomeQuiz, @dataCriacao, @tempoLimite)
    -- EXEC inserirQuiz 1, 'Quiz 1', GETDATE(), 60
END
GO

-- Deletar Quiz
CREATE PROCEDURE deletarQuiz
    @id INT
AS
BEGIN 
    DELETE FROM quiz WHERE id = @id
    -- EXEC deletarQuiz 2
END
GO

-- Alterar Quiz
CREATE PROCEDURE alterarQuiz
    @id INT,
    @idDisciplina INT,
    @nomeQuiz VARCHAR(50),
    @dataCriacao DATE,
    @tempoLimite INT
AS
BEGIN
    UPDATE quiz 
    SET idDisciplina = @idDisciplina, nomeQuiz = @nomeQuiz, dataCriacao = @dataCriacao, tempoLimite = @tempoLimite 
    WHERE id = @id
    -- EXEC alterarQuiz 2, 1, 'Quiz Atualizado', GETDATE(), 120
END
GO

-- Consultar Quiz
CREATE PROCEDURE consultarQuiz
AS
BEGIN
    SELECT * FROM quiz
    -- EXEC consultarQuiz 
END
GO

-- Consultar Quiz Por Disciplina
CREATE PROCEDURE consultarQuizPorDisciplina
    @idDisciplina INT
AS
BEGIN
    SELECT * FROM quiz WHERE idDisciplina = @idDisciplina
    -- EXEC consultarQuizPorDisciplina 1
END
GO

-- Consultar Quiz Por Curso
CREATE PROCEDURE consultarQuizPorCurso
    @idCurso INT
AS
BEGIN
    SELECT q.* 
    FROM quiz q
    INNER JOIN disciplina d ON q.idDisciplina = d.id
    WHERE d.idCurso = @idCurso
    -- EXEC consultarQuizPorCurso 1
END
GO

-- Consultar Quiz Por Usuario
CREATE PROCEDURE consultarQuizPorUsuario
    @idUsuario INT
AS
BEGIN
    SELECT q.* 
    FROM quiz q
    INNER JOIN usuario u ON q.id = u.id
    WHERE u.id = @idUsuario
    -- EXEC consultarQuizPorUsuario 1
END
GO

-- Consultar Quiz Por Data
CREATE PROCEDURE consultarQuizPorData
    @dataCriacao DATE
AS
BEGIN
    SELECT * FROM quiz WHERE dataCriacao = @dataCriacao
    -- EXEC consultarQuizPorData GETDATE()
END
GO

-- Obter Questões Aleatórias
CREATE PROCEDURE ObterQuestoesAleatorias
    @idDisciplina INT,
    @quantidade INT
AS
BEGIN
    SELECT TOP(@quantidade) * 
    FROM questao 
    WHERE idDisciplina = @idDisciplina
    ORDER BY NEWID()
    -- EXEC ObterQuestoesAleatorias 1, 5
END
GO
