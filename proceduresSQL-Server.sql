use Quiz
go

-- =============================================
-- ============== PROCEDORES CURSO ==============
-- =============================================

-- Inserir Curso 

create proc inserirCurso
@curso varchar (30),
@sigla varchar (5)
as
begin 
insert into curso values (@curso,@sigla)
--exec inserirCurso "Secretariado","Sec"
end
go


-- Deletar Curso 

create proc deletarCurso
@id int
as
begin 
delete curso where id=@id
--exec deletarCurso 2
end
go


-- Alterar Curso 

create proc alterarCurso
@id int,
@curso varchar (30),
@sigla varchar (5)
as
begin
update curso set curso = @curso, sigla = @sigla where id = @id
--exec alterarCurso 2, "Secretariado", "Secre"
end
go


-- Consultar Curso 

create proc consultarCurso
as
begin
select * from curso
--exec consultarCurso 
end
go


-- Consultar Sigla por Curso

create proc consultarSiglaPorCurso
@curso varchar (30)
as
begin
select * from Curso where curso = @curso
--exec consultarSiglaPorCurso
end
go


-- Consultar Curso por Sigla

create proc consultarCursoPorSigla
@sigla varchar (5)
as
begin
select * from Curso where sigla = @sigla
--exec consultarCursoPorSigla "DS"
end
go






-- =============================================
-- ============== PROCEDORES DICIPLINA ==============
-- =============================================


-- Inserir Disciplina 

create proc inserirDisciplina
@idCurso INT,
@disciplina varchar (50),
@sigla varchar (5)
as 
begin
insert into disciplina values ( @idCurso,@disciplina,@sigla)
--exec inserirDisciplina   1,"Banco de Dados","BD"
end
go


-- Deletar Disciplina 

create proc deletarDisciplina
@id int
as
begin 
delete disciplina where id=@id
--exec deletarDisciplina 2
end
go


-- Alterar Disciplina 

create proc alterarDisciplina
@id int,
@idCurso int,
@disciplina varchar(30),
@sigla varchar (5)
as
begin
update disciplina set idCurso = @idCurso, disciplina =  @disciplina, sigla = @sigla where id = @id
--exec alterarDisciplina 1, 2, "Banco de Dados", "BD"
end
go


-- Consultar Disciplina 

create proc consultarDisciplina
as
begin
select * from disciplina
--exec consultarDisciplina 
end
go


-- Consultar Disciplina por ID

CREATE PROCEDURE consultarDisciplina
AS
BEGIN
    SELECT * FROM disciplina;
END;
GO


-- Consultar Disciplina por Curso

create proc consultarDisciplinaPorCurso
@idCurso int
as
begin
select * from disciplina where idCurso = @idCurso
--exec consultarDisciplinaPorCurso 
end
go






-- =============================================
-- ============== PROCEDORES QUESTÕES ==============
-- =============================================


-- Inserir Questão

CREATE PROC inserirQuestao
@enunciado VARCHAR(50),
@pontuacao INT,
@idDisciplina INT
AS
BEGIN
INSERT INTO questoes VALUES (@enunciado, @pontuacao, @idDisciplina)
-- EXEC inserirQuestao 'Oque é Database?', 10, 1
END
GO


-- Deletar Questão

CREATE PROC deletarQuestao
@id INT
AS
BEGIN
DELETE FROM questoes WHERE id = @id
-- EXEC deletarQuestao 2
END
GO


-- Alterar Questão

CREATE PROC alterarQuestao
@id INT,
@enunciado VARCHAR(50),
@pontuacao INT,
@idDisciplina INT
AS
BEGIN
UPDATE questoes SET Enunciado = @enunciado, pontuacao = @pontuacao, idDisciplina = @idDisciplina WHERE id = @id
-- EXEC alterarQuestao 1, 'Oque é Banco de Dados ?', 10, 2
END
GO


-- Alterar Pontuacao Questão

CREATE PROCEDURE alterarPontuacaoQuestao
    @p_id INT,
    @p_pontuacao INT
AS
BEGIN
    UPDATE questao
    SET pontuacao = @p_pontuacao
    WHERE id = @p_id;
END;
GO


-- Consultar Questões

CREATE PROC consultarQuestao
AS
BEGIN
SELECT * FROM questoes
-- EXEC consultarQuestao
END
GO


-- Consultar Questões por ID

CREATE PROCEDURE consultarQuestaoPorID
    @p_id INT
AS
BEGIN
    SELECT * 
    FROM questao
    WHERE id = @p_id;
END;
GO


-- Consultar Questão por Enunciado

CREATE PROC consultarQuestaoPorEnunciado
@enunciado VARCHAR(50)
AS
BEGIN
SELECT * FROM questoes WHERE Enunciado = @enunciado
-- EXEC consultarQuestaoPorEnunciado 'Qual a capital da França?'
END
GO


-- Consultar Questão por Disciplina

CREATE PROC consultarQuestaoPorDisciplina
@idDisciplina INT
AS
BEGIN
SELECT * FROM questoes WHERE idDisciplina = @idDisciplina
-- EXEC consultarQuestaoPorDisciplina 1
END
GO






-- =============================================
-- ============== PROCEDORES ALTERNATIVA ==============
-- =============================================


-- Inserir Alternativa

CREATE PROC inserirAlternativa
@idQuestao INT,
@enunciado VARCHAR(50),
@correta BIT
AS
BEGIN
INSERT INTO Alternativa VALUES (@idQuestao, @enunciado, @correta)
-- EXEC inserirAlternativa 1, 'Alternativa A', 1
END
GO


-- Deletar Alternativa

CREATE PROC deletarAlternativa
@id INT
AS
BEGIN
DELETE FROM Alternativa WHERE id = @id
-- EXEC deletarAlternativa 2
END
GO


-- Alterar Alternativa

CREATE PROC alterarAlternativa
@id INT,
@idQuestao INT,
@enunciado VARCHAR(50),
@correta BIT
AS
BEGIN
UPDATE Alternativa SET idQuestao = @idQuestao, Enunciado = @enunciado, correta = @correta WHERE id = @id
-- EXEC alterarAlternativa 1, 2, 'Alternativa A Alterada', 0
END
GO


-- Consultar Alternativa

CREATE PROC consultarAlternativa
AS
BEGIN
SELECT * FROM Alternativa
-- EXEC consultarAlternativa
END
GO


-- Consultar Alternativas por Questão

CREATE PROC consultarAlternativaPorQuestao
@idQuestao INT
AS
BEGIN
SELECT * FROM Alternativa WHERE idQuestao = @idQuestao
ORDER BY NEWID() -- Ordena aleatoriamente as alternativas
-- EXEC consultarAlternativaPorQuestao 1
END
GO

-- Consultar Alternativa por ID

CREATE PROCEDURE consultarAlternativaPorID
    @p_id INT
AS
BEGIN
    SELECT * 
    FROM alternativa
    WHERE id = @p_id;
END;
GO


-- Consultar Alternativa por Enunciado

CREATE PROC consultarAlternativaPorEnunciado
@enunciado VARCHAR(50)
AS
BEGIN
SELECT * FROM Alternativa WHERE Enunciado = @enunciado
-- EXEC consultarAlternativaPorEnunciado 'Alternativa A'
END
GO






-- =============================================
-- ============== PROCEDORES QUIZ ==============
-- =============================================


-- Inserir Quiz

CREATE PROC inserirQuiz
    @dataquiz DATE,
    @idCurso INT,
    @idDisciplina INT,
    @idUsuario INT,
    @idQuestoes01 INT,
    @idQuestoes02 INT,
    @idQuestoes03 INT,
    @idQuestoes04 INT,
    @idQuestoes05 INT,
    @pontuacao INT
AS
BEGIN
INSERT INTO quiz VALUES (@dataquiz, @idCurso, @idDisciplina, @idUsuario, @idQuestoes01, @idQuestoes02, @idQuestoes03, @idQuestoes04, @idQuestoes05, @pontuacao)
-- EXEC inserirQuiz '2023-10-09', 1, 1, 1, 1, 2, 3, 4, 5, 10
END
GO


-- Deletar Quiz

CREATE PROC deletarQuiz
@id INT
AS
BEGIN
DELETE FROM quiz WHERE id = @id
-- EXEC deletarQuiz 2
END
GO


-- Alterar Quiz

CREATE PROC alterarQuiz
    @id INT,
    @dataquiz DATE,
    @idCurso INT,
    @idDisciplina INT,
    @idUsuario INT,
    @idQuestoes01 INT,
    @idQuestoes02 INT,
    @idQuestoes03 INT,
    @idQuestoes04 INT,
    @idQuestoes05 INT,
    @pontuacao INT
AS
BEGIN
 UPDATE quiz SET dataquiz = @dataquiz,
     idCurso = @idCurso,
     idDisciplina = @idDisciplina,
     idUsuario = @idUsuario,
     idQuestoes01 = @idQuestoes01,
     idQuestoes02 = @idQuestoes02,
     idQuestoes03 = @idQuestoes03,
     idQuestoes04 = @idQuestoes04,
     idQuestoes05 = @idQuestoes05,
     pontuacao = @pontuacao

WHERE id = @id
-- EXEC alterarQuiz 1, '2023-10-10', 1, 1, 1, 1, 2, 3, 4, 5, 15
END
GO


-- Consultar Quiz

CREATE PROC consultarQuiz
AS
BEGIN
SELECT * FROM quiz
-- EXEC consultarQuiz
END
GO


-- Consultar Quiz por Curso

CREATE PROC consultarQuizPorCurso
@idCurso INT
AS
BEGIN
SELECT * FROM quiz WHERE idCurso = @idCurso
-- EXEC consultarQuizPorCurso 1
END
GO


-- Consultar Quiz por Disciplina

CREATE PROC consultarQuizPorDisciplina
@idDisciplina INT
AS
BEGIN
SELECT * FROM quiz WHERE idDisciplina = @idDisciplina
-- EXEC consultarQuizPorDisciplina 1
END
GO


-- Consultar Quiz por Usuário

CREATE PROC consultarQuizPorUsuario
@idUsuario INT
AS
BEGIN
SELECT * FROM quiz WHERE idUsuario = @idUsuario
-- EXEC consultarQuizPorUsuario 1
END
GO


-- Consultar Quiz por Data

CREATE PROC consultarQuizPorData
@dataquiz DATE
AS
BEGIN
SELECT * FROM quiz WHERE dataquiz = @dataquiz
-- EXEC consultarQuizPorData '2023-10-09'
END
GO


--obter questoes aleatorias

CREATE PROCEDURE ObterQuestoesAleatorias
    @idDisciplina INT
AS
BEGIN
    SELECT TOP 5 *
    FROM questoes
    WHERE idDisciplina = @idDisciplina
    ORDER BY NEWID() -- Ordena aleatoriamente
END
--select * from curso;






-- =============================================
-- ============== PROCEDORES USUARIOS ==============
-- =============================================


-- Inserir Usuario 

create proc inserirUsuario
@id int,
@loginUsuario varchar (50),
@email varchar (100),
@senha varchar (30),
@pontuacao int
as
begin
insert into usuario values(@loginUsuario,@email,@senha,@pontuacao)
--exec inserirUsuario "etec22","albert einsten@etec.sp.gov.br",123456,6.7
end
go


-- Deletar Usuario 

create proc deletarUsuario
@id int
as
begin 
delete Usuario where id=@id
--exec deletarUsuario 2
end
go


-- Alterar Usuario 

create proc alterarUsuario
@id int,
@loginUsuario varchar (50),
@email varchar (100),
@senha varchar (30),
@pontuacao int
as
begin
update usuario set loginUsuario = @loginUsuario,email = @email, senha = @senha, pontuacao = @pontuacao where id=@id
--exec alterarUsuario 2, "etec123", "alberteinsten@etec.sp.gov.br","765432",8
end
go


-- Alterar Senha por ID 

create proc alterarSenhaPorID
@id int,
@senha varchar (30)
as
begin
update usuario set senha = @senha where id=@id
--exec alterarUsuario 2,"765432"
end
go


-- Alterar Senha por Login

create proc alterarSenhaPorLogin
@loginUsuario varchar (50),
@senha varchar (30)
as
begin
update usuario set senha = @senha where LoginUsuario=@loginUsuario 
--exec alterarUsuario 2,  "etec123"
end
go


-- Consultar Usuario  

create proc consultarUsuario
as
begin
select * from Usuario
--exec consultarUsuario
end
go


-- Consultar Usuario por Login

create proc consultarUsuarioPorLogin
@loginUsuario varchar (50)
as
begin
select * from usuario where loginUsuario = @loginUsuario 
--exec  consultarUsuarioPorLogin  "etec123"
end
go


-- Consultar Usuario por Email

create proc consultarUsuarioPorEmail
@email varchar (100)
as
begin
select * from usuario where email  = @email 
--exec consultarUsuarioPorEmail "alberteinsten@etec.sp.gov.br"
end
go


-- Consultar Usuario por ID

create proc consultarUsuarioPorID
@id int
as
begin
select * from usuario where id=@id
--exec consultarUsuarioPorEmail "alberteinsten@etec.sp.gov.br"
end
go


-- Validar Senha

CREATE PROCEDURE ValidarSenha
    @id INT = NULL,
    @loginUsuario VARCHAR(50) = NULL,
    @senha VARCHAR(30)
AS
BEGIN
    DECLARE @senhaArmazenada VARCHAR(30)
    
    -- Obter a senha armazenada com base no ID ou login do usuário
    SELECT @senhaArmazenada = senha
    FROM usuario
    WHERE (id = @id OR loginUsuario = @loginUsuario)
    
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
go


-- Somar Pontuação

CREATE PROCEDURE SomarPontuacao
    @id INT = NULL,
    @loginUsuario VARCHAR(50) = NULL,
    @pontos INT
AS
BEGIN
    DECLARE @novaPontuacao INT

    -- Atualizar a pontuação do usuário com base no ID ou login
    UPDATE usuario
    SET pontuacao = pontuacao + @pontos
    OUTPUT inserted.pontuacao -- Retorna o novo valor da pontuação
    WHERE (id = @id OR loginUsuario = @loginUsuario)

    -- Verifica se a atualização foi bem-sucedida
    IF @@ROWCOUNT = 0
    BEGIN
        RAISERROR('Usuário não encontrado.', 16, 1)
    END
END
go


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
    WHERE (id = @id OR loginUsuario = @loginUsuario)

    -- Verifica se a atualização foi bem-sucedida
    IF @@ROWCOUNT = 0
    BEGIN
        RAISERROR('Usuário não encontrado ou senha não atualizada.', 16, 1)
    END
    ELSE
    BEGIN
        PRINT 'Senha atualizada com sucesso.'
    END
END
go


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
    JOIN UsuarioLogado ul ON ul.pontuacao >= r.pontuacao
    ORDER BY 
        CASE 
            WHEN r.loginUsuario = @loginUsuario THEN 0 
            ELSE 1 
        END,
        r.Colocacao
    OFFSET 0 ROWS
    FETCH NEXT 10 ROWS ONLY;
END
go


-- Obter Top 10 Usuarios

CREATE PROCEDURE ObterTop10Usuarios()
BEGIN
    SELECT 
        loginUsuario, 
        pontuacao
    FROM 
        usuario
    ORDER BY 
        pontuacao DESC
    LIMIT 10;
END
go
