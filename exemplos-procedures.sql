-- Curso
EXEC inserirCurso 'Secretariado', 'Sec';
EXEC deletarCurso 2;
EXEC alterarCurso 2, 'Secretariado', 'Secre';
EXEC consultarCurso;
EXEC consultarSiglaPorCurso 'Secretariado';
EXEC consultarCursoPorSigla 'DS';

-- Disciplina
EXEC inserirDisciplina 1, 'Banco de Dados', 'BD';
EXEC deletarDisciplina 2;
EXEC alterarDisciplina 1, 2, 'Banco de Dados', 'BD';
EXEC consultarDisciplina;
EXEC consultarDisciplinaPorCurso 1;

-- Usuário
EXEC inserirUsuario 'etec22', 'alberteinsten@etec.sp.gov.br', '123456', 6.7;
EXEC deletarUsuario 2;
EXEC alterarUsuario 2, 'etec123', 'alberteinsten@etec.sp.gov.br', '765432', 8;
EXEC alterarSenhaPorID 2, '765432';
EXEC alterarSenhaPorLogin 'etec123', 'novaSenha';
EXEC consultarUsuario;
EXEC consultarUsuarioPorLogin 'etec123';
EXEC consultarUsuarioPorEmail 'alberteinsten@etec.sp.gov.br';
EXEC consultarUsuarioPorID 2;
EXEC ValidarSenha NULL, 'etec123', '123456';
EXEC SomarPontuacao NULL, 'etec123', 10;
EXEC AtualizarSenha NULL, 'etec123', 'novaSenha';
EXEC ObterRanking NULL, 'etec123';

-- Questão
EXEC inserirQuestao 1, 'Qual é a capital da França?', 1, 'Múltipla Escolha';
EXEC deletarQuestao 2;
EXEC alterarQuestao 2, 1, 'Qual é a capital do Brasil?', 1, 'Múltipla Escolha';
EXEC consultarQuestao;
EXEC consultarQuestaoPorDisciplina 1;
EXEC consultarQuestaoPorID 1;

-- Alternativa
EXEC inserirAlternativa 1, 'Paris', 1;
EXEC deletarAlternativa 2;
EXEC alterarAlternativa 2, 1, 'Paris', 1;
EXEC consultarAlternativa;
EXEC consultarAlternativaPorEnunciado 'Paris';
EXEC consultarAlternativaPorQuestao 1;

-- Quiz
EXEC inserirQuiz 1, 'Quiz 1', GETDATE(), 60;
EXEC deletarQuiz 2;
EXEC alterarQuiz 2, 1, 'Quiz Atualizado', GETDATE(), 120;
EXEC consultarQuiz;
EXEC consultarQuizPorDisciplina 1;
EXEC consultarQuizPorCurso 1;
EXEC consultarQuizPorUsuario 1;
EXEC consultarQuizPorData GETDATE();
EXEC ObterQuestoesAleatorias 1, 5;
