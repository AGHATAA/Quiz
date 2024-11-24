-- =============================================
-- ============== PROCEDORES CURSO ==============
-- =============================================

-- Inserir Curso 

DELIMITER $$

CREATE PROCEDURE inserirCurso(IN curso VARCHAR(30), IN sigla VARCHAR(5))
BEGIN
    INSERT INTO curso (curso, sigla) 
    VALUES (curso, sigla);
END$$

DELIMITER ;


-- Deletar Curso

DELIMITER $$

CREATE PROCEDURE deletarCurso(IN p_id INT)
BEGIN
    DELETE FROM curso WHERE id = p_id;
END $$

DELIMITER ;


-- Alterar Curso

DELIMITER $$

CREATE PROCEDURE alterarCurso(IN p_id INT, IN p_curso VARCHAR(30), IN p_sigla VARCHAR(5))
BEGIN
    UPDATE curso 
    SET curso = p_curso, sigla = p_sigla 
    WHERE id = p_id;
END $$

DELIMITER ;


-- Consultar Curso

DELIMITER $$

CREATE PROCEDURE consultarCurso()
BEGIN
    SELECT * FROM curso;
END $$

DELIMITER ;


-- Consultar Sigla por Curso

DELIMITER $$

CREATE PROCEDURE consultarSiglaPorCurso(IN p_curso VARCHAR(30))
BEGIN
    SELECT * FROM curso WHERE curso = p_curso;
END $$

DELIMITER ;


-- Consultar Curso por Sigla

DELIMITER $$

CREATE PROCEDURE consultarCursoPorSigla(IN p_sigla VARCHAR(5))
BEGIN
    SELECT * FROM curso WHERE sigla = p_sigla;
END $$

DELIMITER ;




-- =============================================
-- ============== PROCEDORES DICIPLINA ==============
-- =============================================


-- Inserir Disciplina

DELIMITER $$

CREATE PROCEDURE inserirDisciplina(IN p_idCurso INT, IN p_disciplina VARCHAR(50), IN p_sigla VARCHAR(5))
BEGIN
    INSERT INTO disciplina (idCurso, disciplina, sigla) 
    VALUES (p_idCurso, p_disciplina, p_sigla);
END $$

DELIMITER ;


-- Deletar Disciplina

DELIMITER $$

CREATE PROCEDURE deletarDisciplina(IN p_id INT)
BEGIN
    DELETE FROM disciplina WHERE id = p_id;
END $$

DELIMITER ;


-- Alterar Disciplina

DELIMITER $$

CREATE PROCEDURE alterarDisciplina(IN p_id INT, IN p_idCurso INT, IN p_disciplina VARCHAR(30), IN p_sigla VARCHAR(5))
BEGIN
    UPDATE disciplina 
    SET idCurso = p_idCurso, disciplina = p_disciplina, sigla = p_sigla
    WHERE id = p_id;
END $$

DELIMITER ;


-- Consultar Disciplina

DELIMITER $$

CREATE PROCEDURE consultarDisciplina()
BEGIN
    SELECT * FROM disciplina;
END $$

DELIMITER ;


-- Consultar Disciplina por ID

DELIMITER $$

CREATE PROCEDURE consultarDisciplinaPorID(IN p_id INT)
BEGIN
    SELECT * 
    FROM disciplina
    WHERE id = p_id;
END$$

DELIMITER ;


-- Consultar Disciplina por Curso

DELIMITER $$

CREATE PROCEDURE consultarDisciplinaPorCurso(IN p_idCurso INT)
BEGIN
    SELECT * FROM disciplina WHERE idCurso = p_idCurso;
END $$

DELIMITER ;




-- =============================================
-- ============== PROCEDORES QUESTÕES ==============
-- =============================================


-- Inserir Questão

DELIMITER $$

CREATE PROCEDURE inserirQuestao(IN p_enunciado VARCHAR(400), IN p_pontuacao INT, IN p_idDisciplina INT)
BEGIN
    INSERT INTO questao (enunciado, pontuacao, idDisciplina) 
    VALUES (p_enunciado, p_pontuacao, p_idDisciplina);
END $$

DELIMITER ;


-- Deletar Questão

DELIMITER $$

CREATE PROCEDURE deletarQuestao(IN p_id INT)
BEGIN
    DELETE FROM questao WHERE id = p_id;
END $$

DELIMITER ;


-- Alterar Questão

DELIMITER $$

CREATE PROCEDURE alterarQuestao(IN p_id INT, IN p_enunciado VARCHAR(50), IN p_pontuacao INT, IN p_idDisciplina INT)
BEGIN
    UPDATE questao 
    SET enunciado = p_enunciado, pontuacao = p_pontuacao, idDisciplina = p_idDisciplina
    WHERE id = p_id;
END $$

DELIMITER ;


-- Alterar Pontuacao Questão

DELIMITER $$

CREATE PROCEDURE alterarPontuacaoQuestao(IN p_id INT, IN p_pontuacao INT)
BEGIN
    UPDATE questao 
    SET pontuacao = p_pontuacao
    WHERE id = p_id;
END $$

DELIMITER ;


-- Consultar Questões

DELIMITER $$

CREATE PROCEDURE consultarQuestao()
BEGIN
    SELECT * FROM questao;
END $$

DELIMITER ;


-- Consultar Questões por ID

DELIMITER $$

CREATE PROCEDURE consultarQuestaoPorID(IN p_id INT)
BEGIN
    SELECT * 
    FROM questao
    WHERE id = p_id;
END$$

DELIMITER ;


-- Consultar Questão por Enunciado

DELIMITER $$

CREATE PROCEDURE consultarQuestaoPorEnunciado(IN p_enunciado VARCHAR(50))
BEGIN
    SELECT * FROM questao WHERE enunciado = p_enunciado;
END $$

DELIMITER ;


-- Consultar Questão por Disciplina

DELIMITER $$

CREATE PROCEDURE consultarQuestaoPorDisciplina(IN p_idDisciplina INT)
BEGIN
    SELECT * FROM questao WHERE idDisciplina = p_idDisciplina;
END $$

DELIMITER ;



-- =============================================
-- ============== PROCEDORES ALTERNATIVA ==============
-- =============================================


-- Inserir Alternativa

DELIMITER $$

CREATE PROCEDURE inserirAlternativa(IN p_idQuestao INT, IN p_enunciado VARCHAR(400), IN p_correta BOOLEAN)
BEGIN
    INSERT INTO alternativa (idQuestao, enunciado, correta) 
    VALUES (p_idQuestao, p_enunciado, p_correta);
END $$

DELIMITER ;


-- Deletar Alternativa

DELIMITER $$

CREATE PROCEDURE deletarAlternativa(IN p_id INT)
BEGIN
    DELETE FROM alternativa WHERE id = p_id;
END $$

DELIMITER ;


-- Alterar Alternativa

DELIMITER $$

CREATE PROCEDURE alterarAlternativa(IN p_id INT, IN p_idQuestao INT, IN p_enunciado VARCHAR(50), IN p_correta BOOLEAN)
BEGIN
    UPDATE alternativa 
    SET idQuestao = p_idQuestao, enunciado = p_enunciado, correta = p_correta
    WHERE id = p_id;
END $$

DELIMITER ;



-- Consultar Alternativa

DELIMITER $$

CREATE PROCEDURE consultarAlternativa()
BEGIN
    SELECT * FROM alternativa;
END $$

DELIMITER ;


-- Consultar Alternativas por Questão

DELIMITER $$

CREATE PROCEDURE consultarAlternativaPorQuestao(IN p_idQuestao INT)
BEGIN
    SELECT * 
    FROM alternativa 
    WHERE idQuestao = p_idQuestao
    ORDER BY RAND();  -- Ordena aleatoriamente as alternativas
END $$

DELIMITER ;


-- Consultar Alternativa por ID

DELIMITER $$

CREATE PROCEDURE consultarAlternativaPorID(IN p_id INT)
BEGIN
    SELECT * 
    FROM alternativa
    WHERE id = p_id;
END$$

DELIMITER ;


-- Consultar Alternativa por Enunciado

DELIMITER $$

CREATE PROCEDURE consultarAlternativaPorEnunciado(IN p_enunciado VARCHAR(50))
BEGIN
    SELECT * 
    FROM alternativa 
    WHERE enunciado = p_enunciado;
END $$

DELIMITER ;




-- =============================================
-- ============== PROCEDORES QUIZ ==============
-- =============================================


-- Inserir Quiz

DELIMITER $$

CREATE PROCEDURE inserirQuiz(
    IN p_dataQuiz DATE, 
    IN p_idCurso INT, 
    IN p_idDisciplina INT, 
    IN p_idUsuario INT, 
    IN p_idQuestoes01 INT, 
    IN p_idQuestoes02 INT, 
    IN p_idQuestoes03 INT, 
    IN p_idQuestoes04 INT, 
    IN p_idQuestoes05 INT, 
    IN p_pontuacao INT
)
BEGIN
    INSERT INTO quiz (dataQuiz, idCurso, idDisciplina, idUsuario, idQuestoes01, idQuestoes02, idQuestoes03, idQuestoes04, idQuestoes05, pontuacao)
    VALUES (p_dataQuiz, p_idCurso, p_idDisciplina, p_idUsuario, p_idQuestoes01, p_idQuestoes02, p_idQuestoes03, p_idQuestoes04, p_idQuestoes05, p_pontuacao);
END $$

DELIMITER ;


-- Deletar Quiz

DELIMITER $$

CREATE PROCEDURE deletarQuiz(IN p_id INT)
BEGIN
    DELETE FROM quiz WHERE id = p_id;
END $$

DELIMITER ;


-- Alterar Quiz

DELIMITER $$

CREATE PROCEDURE alterarQuiz(
    IN p_id INT,
    IN p_dataQuiz DATE,
    IN p_idCurso INT,
    IN p_idDisciplina INT,
    IN p_idUsuario INT,
    IN p_idQuestoes01 INT,
    IN p_idQuestoes02 INT,
    IN p_idQuestoes03 INT,
    IN p_idQuestoes04 INT,
    IN p_idQuestoes05 INT,
    IN p_pontuacao INT
)
BEGIN
    UPDATE quiz 
    SET dataQuiz = p_dataQuiz,
        idCurso = p_idCurso,
        idDisciplina = p_idDisciplina,
        idUsuario = p_idUsuario,
        idQuestoes01 = p_idQuestoes01,
        idQuestoes02 = p_idQuestoes02,
        idQuestoes03 = p_idQuestoes03,
        idQuestoes04 = p_idQuestoes04,
        idQuestoes05 = p_idQuestoes05,
        pontuacao = p_pontuacao
    WHERE id = p_id;
END $$

DELIMITER ;



-- Consultar Quiz

DELIMITER $$

CREATE PROCEDURE consultarQuiz()
BEGIN
    SELECT * FROM quiz;
END $$

DELIMITER ;


-- Consultar Quiz por Curso

DELIMITER $$

CREATE PROCEDURE consultarQuizPorCurso(IN p_idCurso INT)
BEGIN
    SELECT * 
    FROM quiz 
    WHERE idCurso = p_idCurso;
END $$

DELIMITER ;


-- Consultar Quiz por Disciplina

DELIMITER $$

CREATE PROCEDURE consultarQuizPorDisciplina(IN p_idDisciplina INT)
BEGIN
    SELECT * 
    FROM quiz 
    WHERE idDisciplina = p_idDisciplina;
END $$

DELIMITER ;


-- Consultar Quiz por Usuário

DELIMITER $$

CREATE PROCEDURE consultarQuizPorUsuario(IN p_idUsuario INT)
BEGIN
    SELECT * 
    FROM quiz 
    WHERE idUsuario = p_idUsuario;
END $$

DELIMITER ;


-- Consultar Quiz por Data

DELIMITER $$

CREATE PROCEDURE consultarQuizPorData(IN p_dataQuiz DATE)
BEGIN
    SELECT * 
    FROM quiz 
    WHERE dataQuiz = p_dataQuiz;
END $$

DELIMITER ;


-- Obter Questões Aleatórias

DELIMITER $$

CREATE PROCEDURE ObterQuestoesAleatorias(IN p_idDisciplina INT)
BEGIN
    SELECT * 
    FROM questoes
    WHERE idDisciplina = p_idDisciplina
    ORDER BY RAND()  -- Ordena aleatoriamente em MySQL
    LIMIT 5;         -- Limita a 5 resultados
END $$

DELIMITER ;




-- =============================================
-- ============== PROCEDORES USUARIOS ==============
-- =============================================


-- Inserir Usuario

DELIMITER $$

CREATE PROCEDURE inserirUsuario(
    IN p_loginUsuario VARCHAR(50),
    IN p_email VARCHAR(100),
    IN p_senha VARCHAR(30),
    IN p_pontuacao INT
)
BEGIN
    INSERT INTO usuario (loginUsuario, email, senha, pontuacao)
    VALUES (p_loginUsuario, p_email, p_senha, p_pontuacao);
END $$

DELIMITER ;


-- Deletar Usuario

DELIMITER $$

CREATE PROCEDURE deletarUsuario(IN p_id INT)
BEGIN
    DELETE FROM usuario WHERE id = p_id;
END $$

DELIMITER ;


-- Alterar Usuario

DELIMITER $$

CREATE PROCEDURE alterarUsuario(
    IN p_id INT,
    IN p_loginUsuario VARCHAR(50),
    IN p_email VARCHAR(100),
    IN p_senha VARCHAR(30),
    IN p_pontuacao INT
)
BEGIN
    UPDATE usuario 
    SET loginUsuario = p_loginUsuario, 
        email = p_email, 
        senha = p_senha, 
        pontuacao = p_pontuacao
    WHERE id = p_id;
END $$

DELIMITER ;



-- Alterar Senha por ID 

DELIMITER $$

CREATE PROCEDURE alterarSenhaPorID (
    IN p_id INT,
    IN p_senha VARCHAR(30)
)
BEGIN
    UPDATE usuario 
    SET senha = p_senha 
    WHERE id = p_id;
END;

//

DELIMITER ;


-- Alterar Senha por Login

DELIMITER //

CREATE PROCEDURE alterarSenhaPorLogin (
    IN p_loginUsuario VARCHAR(50),
    IN p_senha VARCHAR(30)
)
BEGIN
    UPDATE usuario 
    SET senha = p_senha 
    WHERE LoginUsuario = p_loginUsuario;
END;

//

DELIMITER ;


-- Consultar Usuario  

DELIMITER //

CREATE PROCEDURE consultarUsuario()
BEGIN
    SELECT * FROM usuario;
END;

//

DELIMITER ;



-- Consultar Usuario por Login

DELIMITER //

CREATE PROCEDURE consultarUsuarioPorLogin (
    IN p_loginUsuario VARCHAR(50)
)
BEGIN
    SELECT * 
    FROM usuario 
    WHERE loginUsuario = p_loginUsuario;
END;

//

DELIMITER ;


-- Consultar Usuario por Email

DELIMITER //

CREATE PROCEDURE consultarUsuarioPorEmail (
    IN p_email VARCHAR(100)
)
BEGIN
    SELECT * 
    FROM usuario 
    WHERE email = p_email;
END;

//

DELIMITER ;


-- Consultar Usuario por ID

DELIMITER //

CREATE PROCEDURE consultarUsuarioPorID (
    IN p_id INT
)
BEGIN
    SELECT * 
    FROM usuario 
    WHERE id = p_id;
END;

//

DELIMITER ;


-- Validar Senha

DELIMITER //

CREATE PROCEDURE ValidarSenha (
    IN p_id INT,
    IN p_loginUsuario VARCHAR(50),
    IN p_senha VARCHAR(30),
    OUT resultado INT
)
BEGIN
    DECLARE senhaArmazenada VARCHAR(30);

    -- Obter a senha armazenada com base no ID ou login do usuário
    SELECT senha 
    INTO senhaArmazenada
    FROM usuario
    WHERE (id = p_id OR loginUsuario = p_loginUsuario);

    -- Verificar se a senha informada é igual à senha armazenada
    IF senhaArmazenada IS NOT NULL AND senhaArmazenada = p_senha THEN
        SET resultado = 1; -- Verdadeiro
    ELSE
        SET resultado = 0; -- Falso
    END IF;
END;

//

DELIMITER ;



-- Somar Pontuação

DELIMITER //

CREATE PROCEDURE SomarPontuacao (
    IN p_id INT,
    IN p_loginUsuario VARCHAR(50),
    IN p_pontos INT,
    OUT novaPontuacao INT
)
BEGIN
    -- Atualizar a pontuação do usuário com base no ID ou login
    UPDATE usuario
    SET pontuacao = pontuacao + p_pontos
    WHERE (id = p_id OR loginUsuario = p_loginUsuario);

    -- Verifica se o registro foi atualizado
    IF ROW_COUNT() = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Usuário não encontrado.';
    END IF;

    -- Obter o novo valor da pontuação
    SELECT pontuacao
    INTO novaPontuacao
    FROM usuario
    WHERE (id = p_id OR loginUsuario = p_loginUsuario);
END;

//

DELIMITER ;



-- Atualizar Senha

DELIMITER //

CREATE PROCEDURE AtualizarSenha (
    IN p_id INT,
    IN p_loginUsuario VARCHAR(50),
    IN p_novaSenha VARCHAR(30)
)
BEGIN
    -- Atualizar a senha do usuário com base no ID ou login
    UPDATE usuario
    SET senha = p_novaSenha
    WHERE (id = p_id OR loginUsuario = p_loginUsuario);

    -- Verifica se a atualização foi bem-sucedida
    IF ROW_COUNT() = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Usuário não encontrado ou senha não atualizada.';
    ELSE
        -- Mensagem opcional de sucesso
        SELECT 'Senha atualizada com sucesso.' AS mensagem;
    END IF;
END;

//

DELIMITER ;



-- Obter Ranking

DELIMITER //

CREATE PROCEDURE ObterRanking (
    IN p_id INT,
    IN p_loginUsuario VARCHAR(50)
)
BEGIN
    -- CTE para calcular o ranking
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
        WHERE (id = p_id OR loginUsuario = p_loginUsuario)
    )
    
    -- Selecionar o ranking de todos os usuários, com o usuário logado destacado
    SELECT 
        r.Colocacao,
        r.loginUsuario,
        r.pontuacao
    FROM Ranking r
    JOIN UsuarioLogado ul ON ul.pontuacao >= r.pontuacao
    ORDER BY 
        CASE 
            WHEN r.loginUsuario = p_loginUsuario THEN 0 
            ELSE 1 
        END,
        r.Colocacao
    LIMIT 10; -- Limita a 10 resultados
END;

//

DELIMITER ;