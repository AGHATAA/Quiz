-- =============================================
-- ============== EXEMPLOS PROCEDURES CURSO ==============
-- =============================================

-- SQL Server

--EXEC inserirCurso 'NOME_DO_CURSO', 'SIGLA_CURSO';
EXEC inserirCurso 'Secretariado','Sec';

--EXEC deletarCurso 'ID_CURSO';
EXEC deletarCurso 2;

--EXEC alterarCurso 'ID_CURSO', 'NOME_DO_CURSO', 'SIGLA_CURSO';
EXEC alterarCurso 2, 'Secretariado', 'Secre';

--EXEC consultarCurso 'EXIBE_TUDO';
EXEC consultarCurso;

--EXEC consultarSiglaPorCurso 'NOME_DO_CURSO';
EXEC consultarSiglaPorCurso 'Secretariado';

--EXEC consultarCursoPorSigla 'SIGLA_DO_CURSO';
EXEC consultarCursoPorSigla 'DS';

-- MySQL

--CALL inserirCurso('NOME_DO_CURSO', 'SIGLA_CURSO');
CALL inserirCurso('Secretariado','Sec');

--CALL deletarCurso('ID_CURSO');
CALL deletarCurso(2);

--CALL alterarCurso('ID_CURSO', 'NOME_DO_CURSO', 'SIGLA_CURSO');
CALL alterarCurso(2, 'Secretariado', 'Secre');

--CALL consultarCurso 'EXIBE_TUDO';
CALL consultarCurso;

--CALL consultarSiglaPorCurso('NOME_DO_CURSO');
CALL consultarSiglaPorCurso('Secretariado');

--CALL consultarCursoPorSigla('SIGLA_DO_CURSO');
CALL consultarCursoPorSigla('DS');


-- =============================================
-- ============== EXEMPLOS PROCEDURES DISCIPLINA ==============
-- =============================================

-- SQL Server

--EXEC inserirDisciplina 'ID_CURSO', 'NOME_DO_CURSO', 'SIGLA_CURSO';
EXEC inserirDisciplina 1,'Banco de Dados','BD';

--EXEC deletarDisciplina 'ID_DISCIPLINA';
EXEC deletarDisciplina 2;

--EXEC alterarDisciplina 'ID_DISCIPLINA', 'ID_CURSO', 'NOME_DISCIPLINA', 'SIGLA_CURSO';
EXEC alterarDisciplina 1, 2, 'Banco de Dados', 'BD';

--EXEC consultarDisciplina 'EXIBE_TUDO';
EXEC consultarDisciplina;

--EXEC consultarDisciplinaPorID('ID_DISCIPLINA');
EXEC consultarDisciplinaPorID(1);

--EXEC consultarDisciplinaPorCurso 'ID_CURSO';
EXEC consultarDisciplinaPorCurso 1;

-- MySQL

--CALL inserirDisciplina('ID_CURSO', 'NOME_DO_CURSO', 'SIGLA_CURSO');
CALL inserirDisciplina(1,'Banco de Dados','BD');

--CALL deletarDisciplina('ID_DISCIPLINA');
CALL deletarDisciplina(2);

--CALL alterarDisciplina('ID_DISCIPLINA', 'ID_CURSO', 'NOME_DISCIPLINA', 'SIGLA_CURSO');
CALL alterarDisciplina(1, 2, 'Banco de Dados', 'BD');

--CALL consultarDisciplina 'EXIBE_TUDO';
CALL consultarDisciplina;

--CALL consultarDisciplinaPorID('ID_DISCIPLINA');
CALL consultarDisciplinaPorID(1);

--CALL consultarDisciplinaPorCurso('ID_CURSO');
CALL consultarDisciplinaPorCurso(1);


-- =============================================
-- ============== EXEMPLOS PROCEDURES QUESTÕES ==============
-- =============================================

-- SQL Server

--EXEC inserirQuestao 'INSERIR_ENUNCIADO', 'NIVEL_PONTUACAO', 'ID_DISCIPLINA';
EXEC inserirQuestao 'Oque é Database?', 10, 1;

--EXEC deletarQuestao 'ID_QUESTAO';
EXEC deletarQuestao 2;

--EXEC alterarQuestao 'ID_QUESTAO', 'INSERIR_ENUNCIADO', 'NIVEL_PONTUACAO', 'ID_DISCIPLINA';
EXEC alterarQuestao 1, 'Oque é Banco de Dados ?', 10, 2;

--EXEC alterarPontuacaoQuestao 'ID_QUESTAO', 'NIVEL_PONTUACAO';
EXEC alterarPontuacaoQuestao 1, 4;

--EXEC consultarQuestao 'EXIBE_TUDO';
EXEC consultarQuestao;

--EXEC consultarQuestaoPorID 'ID_QUESTAO';
EXEC consultarQuestaoPorID 1;

--EXEC consultarQuestaoPorEnunciado 'INSERIR_ENUNCIADO';
EXEC consultarQuestaoPorEnunciado 'Qual a capital da França?';

--EXEC consultarQuestaoPorDisciplina 'ID_DISCIPLINA';
EXEC consultarQuestaoPorDisciplina 1;

-- MySQL

--CALL inserirQuestao('INSERIR_ENUNCIADO', 'NIVEL_PONTUACAO', 'ID_DISCIPLINA');
CALL inserirQuestao('Oque é Database?', 10, 1);

--CALL deletarQuestao('ID_QUESTAO');
CALL deletarQuestao(2);

--CALL alterarQuestao('ID_QUESTAO', 'INSERIR_ENUNCIADO', 'NIVEL_PONTUACAO', 'ID_DISCIPLINA');
CALL alterarQuestao(1, 'Oque é Banco de Dados ?', 10, 2);

--CALL alterarPontuacaoQuestao('ID_QUESTAO', 'NIVEL_PONTUACAO');
CALL alterarPontuacaoQuestao(1, 4);

--CALL consultarQuestao 'EXIBE_TUDO';
CALL consultarQuestao;

--CALL consultarQuestaoPorID('ID_QUESTAO');
CALL consultarQuestaoPorID(1);

--CALL consultarQuestaoPorEnunciado('INSERIR_ENUNCIADO');
CALL consultarQuestaoPorEnunciado('Qual a capital da França?');

--CALL consultarQuestaoPorDisciplina('ID_DISCIPLINA');
CALL consultarQuestaoPorDisciplina(1);


-- =============================================
-- ============== EXEMPLOS PROCEDURES ALTERNATIVA ==============
-- =============================================

-- SQL Server

--EXEC inserirAlternativa 'ID_QUESTAO', 'INSERIR_ENUNCIADO', '0 para falso e 1 para verdadeiro';
EXEC inserirAlternativa 1, 'Alternativa A', 1;

--EXEC deletarAlternativa 'ID_ALTERNATIVA';
EXEC deletarAlternativa 2;

--EXEC alterarAlternativa 'ID_ALTERNATIVA', 'ID_QUESTAO', 'INSERIR_ENUNCIADO', '0 para falso e 1 para verdadeiro';
EXEC alterarAlternativa 1, 2, 'Alternativa A Alterada', 0

--EXEC consultarAlternativa 'EXIBE_TUDO';
EXEC consultarAlternativa;

--EXEC consultarAlternativaPorQuestao 'ID_QUESTAO';
EXEC consultarAlternativaPorQuestao 1;

--EXEC consultarAlternativaPorID 'ID_ALTERNATIVA';
EXEC consultarAlternativaPorID 1;

--EXEC consultarAlternativaPorEnunciado 'INSERIR_ENUNCIADO';
EXEC consultarAlternativaPorEnunciado 'Alternativa A';

-- MySQL

--CALL inserirAlternativa('ID_QUESTAO', 'INSERIR_ENUNCIADO', '0 para falso e 1 para verdadeiro');
CALL inserirAlternativa(1, 'Alternativa A', 1);

--CALL deletarAlternativa('ID_ALTERNATIVA');
CALL deletarAlternativa(2);

--CALL alterarAlternativa('ID_ALTERNATIVA', 'ID_QUESTAO', 'INSERIR_ENUNCIADO', '0 para falso e 1 para verdadeiro');
CALL alterarAlternativa(1, 2, 'Alternativa A Alterada', 0);

--CALL consultarAlternativa 'EXIBE_TUDO';
CALL consultarAlternativa;

--CALL consultarAlternativaPorQuestao('ID_QUESTAO');
CALL consultarAlternativaPorQuestao(1);

--CALL consultarAlternativaPorID('ID_ALTERNATIVA');
CALL consultarAlternativaPorID(1);

--CALL consultarAlternativaPorEnunciado('INSERIR_ENUNCIADO');
CALL consultarAlternativaPorEnunciado('Alternativa A');


-- =============================================
-- ============== EXEMPLOS PROCEDURES QUIZ ==============
-- =============================================

-- SQL Server

--EXEC inserirQuiz 'DATA_QUIZ', 'ID_CURSO', 'ID_DISCIPLINA', 'ID_USUARIO', 'ID_QUESTÃO_1', 'ID_QUESTÃO_2', 'ID_QUESTÃO_3', 'ID_QUESTÃO_4', 'ID_QUESTÃO_5', 'PONTUAÇÃO';
EXEC inserirQuiz '2024-11-24', 1, 2, 1, 4, 5, 1, 4, 5, 10;

--EXEC deletarQuiz 'ID_QUIZ';
EXEC deletarQuiz 1;

--EXEC alterarQuiz 'ID_QUIZ', 'DATA_QUIZ', 'ID_CURSO', 'ID_DISCIPLINA', 'ID_USUARIO', 'ID_QUESTÃO_1', 'ID_QUESTÃO_2', 'ID_QUESTÃO_3', 'ID_QUESTÃO_4', 'ID_QUESTÃO_5', 'PONTUAÇÃO';
EXEC alterarQuiz 1, '2024-11-24', 1, 2, 1, 4, 5, 1, 4, 5, 10;

--EXEC consultarQuiz 'EXIBE_TUDO';
EXEC consultarQuiz;

--EXEC consultarQuizPorCurso 'ID_CURSO';
EXEC consultarQuizPorCurso 2;

--EXEC consultarQuizPorDisciplina 'ID_DISCIPLINA';
EXEC consultarQuizPorDisciplina 1;

--EXEC consultarQuizPorUsuario 'ID_USUARIO';
EXEC consultarQuizPorUsuario 1;

--EXEC consultarQuizPorData 'DATA_QUIZ';
EXEC consultarQuizPorData '2024-11-24';

--EXEC ObterQuestoesAleatorias 'ID_DISCIPLINA';
EXEC ObterQuestoesAleatorias 2;

-- MySQL

--CALL inserirQuiz('DATA_QUIZ', 'ID_CURSO', 'ID_DISCIPLINA', 'ID_USUARIO', 'ID_QUESTÃO_1', 'ID_QUESTÃO_2', 'ID_QUESTÃO_3', 'ID_QUESTÃO_4', 'ID_QUESTÃO_5', 'PONTUAÇÃO');
CALL inserirQuiz('2024-11-24', 1, 2, 1, 4, 5, 1, 4, 5, 10);

--CALL deletarQuiz('ID_QUIZ');
CALL deletarQuiz(1);

--CALL alterarQuiz('ID_QUIZ', 'DATA_QUIZ', 'ID_CURSO', 'ID_DISCIPLINA', 'ID_USUARIO', 'ID_QUESTÃO_1', 'ID_QUESTÃO_2', 'ID_QUESTÃO_3', 'ID_QUESTÃO_4', 'ID_QUESTÃO_5', 'PONTUAÇÃO');
CALL alterarQuiz(1, '2024-11-24', 1, 2, 1, 4, 5, 1, 4, 5, 10);

--CALL consultarQuiz 'EXIBE_TUDO';
CALL consultarQuiz;

--CALL consultarQuizPorCurso('ID_CURSO');
CALL consultarQuizPorCurso(2);

--CALL consultarQuizPorDisciplina('ID_DISCIPLINA');
CALL consultarQuizPorDisciplina(1);

--CALL consultarQuizPorUsuario('ID_USUARIO');
CALL consultarQuizPorUsuario(1);

--CALL consultarQuizPorData('DATA_QUIZ');
CALL consultarQuizPorData('2024-11-24');

--CALL ObterQuestoesAleatorias('ID_DISCIPLINA');
CALL ObterQuestoesAleatorias(2);


-- =============================================
-- ============== EXEMPLOS PROCEDURES USUARIO ==============
-- =============================================

-- SQL Server

--EXEC inserirUsuario 'NOME_USUARIO', 'EMAIL', 'SENHA', 'PONTUAÇÃO';
EXEC inserirUsuario 'etec22','einsten@etec.sp.gov.br',123456,8;

--EXEC deletarUsuario 'ID_USUARIO';
EXEC deletarUsuario 2;

--EXEC alterarUsuario 'ID_USUARIO', 'NOME_USUARIO', 'EMAIL', 'SENHA', 'PONTUAÇÃO';
EXEC alterarUsuario 2, 'etec123', 'alberteinsten@etec.sp.gov.br', '765432', 8;

--EXEC alterarSenhaPorID 'ID_USUARIO', 'SENHA';
EXEC alterarSenhaPorID 2, '765432';

--EXEC alterarSenhaPorLogin 'NOME_USUARIO', 'SENHA';
EXEC alterarSenhaPorLogin 'etec123', '765432';

--EXEC consultarUsuario 'EXIBE_TUDO';
EXEC consultarUsuario;

--EXEC consultarUsuarioPorLogin 'NOME_USUARIO';
EXEC consultarUsuarioPorLogin 'etec123';

--EXEC consultarUsuarioPorEmail 'EMAIL';
EXEC consultarUsuarioPorEmail 'alberteinsten@etec.sp.gov.br';

--EXEC consultarUsuarioPorID 'ID_USUARIO';
EXEC consultarUsuarioPorID 2;

--EXEC ValidarSenha 'ID_USUARIO', 'NOME_USUARIO', 'SENHA', 'RETORNA 1=VERDADEIRO OU 0=FALSO';
EXEC ValidarSenha 2, 'etec123', 'etec123', 1;

--EXEC SomarPontuacao 'ID_USUARIO', 'NOME_USUARIO', 'PONTUAÇÃO', 'RETORNA_NOVA_PONTUAÇÃO';
EXEC SomarPontuacao 2, 'etec123', 6, 8;

--EXEC AtualizarSenha 'ID_USUARIO', 'NOME_USUARIO', 'NOVA_SENHA';
EXEC AtualizarSenha 2, 'etec123', 'etec123etec123';

--EXEC ObterRanking 'ID_USUARIO', 'NOME_USUARIO';
EXEC ObterRanking 2, 'etec123';

-- MySQL

--CALL inserirUsuario('NOME_USUARIO', 'EMAIL', 'SENHA', 'PONTUAÇÃO');
CALL inserirUsuario('etec22','einsten@etec.sp.gov.br', 123456, 8);

--CALL deletarUsuario('ID_USUARIO');
CALL deletarUsuario(2);

--CALL alterarUsuario('ID_USUARIO', 'NOME_USUARIO', 'EMAIL', 'SENHA', 'PONTUAÇÃO');
CALL alterarUsuario(2, 'etec123', 'alberteinsten@etec.sp.gov.br', '765432', 8);

--CALL alterarSenhaPorID('ID_USUARIO', 'SENHA');
CALL alterarSenhaPorID(2, '765432');

--CALL alterarSenhaPorLogin('NOME_USUARIO', 'SENHA');
CALL alterarSenhaPorLogin('etec123', '765432');

--CALL consultarUsuario 'EXIBE_TUDO';
CALL consultarUsuario;

--CALL consultarUsuarioPorLogin('NOME_USUARIO');
CALL consultarUsuarioPorLogin('etec123');

--CALL consultarUsuarioPorEmail('EMAIL');
CALL consultarUsuarioPorEmail('alberteinsten@etec.sp.gov.br');

--CALL consultarUsuarioPorID('ID_USUARIO');
CALL consultarUsuarioPorID(2);

--CALL ValidarSenha('ID_USUARIO', 'NOME_USUARIO', 'SENHA', 'RETORNA 1=VERDADEIRO OU 0=FALSO');
CALL ValidarSenha(2, 'etec123', 'etec123', 1);

--CALL SomarPontuacao('ID_USUARIO', 'NOME_USUARIO', 'PONTUAÇÃO', 'RETORNA_NOVA_PONTUAÇÃO');
CALL SomarPontuacao(2, 'etec123', 6, 8);

--CALL AtualizarSenha('ID_USUARIO', 'NOME_USUARIO', 'NOVA_SENHA');
CALL AtualizarSenha(2, 'etec123', 'etec123etec123');

--CALL ObterRanking('ID_USUARIO', 'NOME_USUARIO');
CALL ObterRanking(2, 'etec123');