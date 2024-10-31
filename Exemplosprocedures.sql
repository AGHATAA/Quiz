-- =============================================
-- ============== EXEMPLOS PROCEDORES CURSO ==============
-- =============================================

exec inserirCurso "NOME_DO_CURSO", "SIGLA_CURSO";
exec inserirCurso "Secretariado","Sec";

exec deletarCurso ID_CURSO;
exec deletarCurso 2;

exec alterarCurso ID_CURSO, "NOME_DO_CURSO", "SIGLA_CURSO";
exec alterarCurso 2, "Secretariado", "Secre";

exec consultarCurso EXIBE_TUDO;
exec consultarCurso;

exec consultarSiglaPorCurso "NOME_DO_CURSO";
exec consultarSiglaPorCurso "Secretariado";

exec consultarCursoPorSigla "SIGLA_DO_CURSO";
exec consultarCursoPorSigla "DS";



-- =============================================
-- ============== EXEMPLOS PROCEDORES DISCIPLINA ==============
-- =============================================

exec inserirDisciplina ID_CURSO, "NOME_DO_CURSO", "SIGLA_CURSO";
exec inserirDisciplina 1,"Banco de Dados","BD";

exec deletarDisciplina ID_CURSO;
exec deletarDisciplina 2;

exec alterarDisciplina ID_CURSO, "NOME_DISCIPLINA", "SIGLA_CURSO";
exec alterarDisciplina 1, 2, "Banco de Dados", "BD";

exec consultarDisciplina EXIBE_TUDO;
exec consultarDisciplina;

exec consultarDisciplinaPorCurso ID_CURSO;
exec consultarDisciplinaPorCurso 1;



-- =============================================
-- ============== EXEMPLOS PROCEDORES QUESTÕES ==============
-- =============================================

EXEC inserirQuestao "INSERIR_ENUNCIADO", "NIVEL_PONTUACAO", "ID_DISCIPLINA";
EXEC inserirQuestao 'Oque é Database?', 10, 1;

EXEC deletarQuestao "ID_QUESTAO";
EXEC deletarQuestao 2;

EXEC inserirQuestao "ID_QUESTAO", "INSERIR_ENUNCIADO", "NIVEL_PONTUACAO", "ID_DISCIPLINA";
EXEC alterarQuestao 1, 'Oque é Banco de Dados ?', 10, 2;

EXEC consultarQuestao EXIBE_TUDO;
EXEC consultarQuestao;

EXEC consultarQuestaoPorEnunciado "INSERIR_ENUNCIADO";
EXEC consultarQuestaoPorEnunciado 'Qual a capital da França?';

EXEC consultarQuestaoPorDisciplina "ID_DISCIPLINA";
EXEC consultarQuestaoPorDisciplina 1;


-- =============================================
-- ============== EXEMPLOS PROCEDORES ALTERNATIVA ==============
-- =============================================

EXEC inserirAlternativa "ID_QUESTAO", "INSERIR_ENUNCIADO", "0 para falso e 1 para verdadeiro";
EXEC inserirAlternativa 1, 'Alternativa A', 1;

EXEC deletarAlternativa 2;
EXEC deletarAlternativa "ID_ALTERNATIVA";

EXEC alterarAlternativa 1, 2, 'Alternativa A Alterada', 0
EXEC alterarAlternativa "ID_ALTERNATIVA", "ID_QUESTAO", "INSERIR_ENUNCIADO", "0 para falso e 1 para verdadeiro";

EXEC consultarAlternativa EXIBE_TUDO;
EXEC consultarAlternativa;

EXEC consultarAlternativaPorQuestao "ID_QUESTAO";
EXEC consultarAlternativaPorQuestao 1;

EXEC consultarAlternativaPorEnunciado "INSERIR_ENUNCIADO";
EXEC consultarAlternativaPorEnunciado 'Alternativa A';



-- =============================================
-- ============== EXEMPLOS PROCEDORES USUARIO ==============
-- =============================================

exec inserirUsuario "etec22","albert einsten@etec.sp.gov.br",123456,6.7

exec deletarUsuario 2

exec alterarUsuario 2, "etec123", "alberteinsten@etec.sp.gov.br","765432",8

exec alterarUsuario 2,"765432"

exec alterarUsuario 2,  "etec123"

exec consultarUsuario

exec  consultarUsuarioPorLogin  "etec123"

exec consultarUsuarioPorEmail "alberteinsten@etec.sp.gov.br"

exec consultarUsuarioPorID "alberteinsten@etec.sp.gov.br"

exec ValidarSenha 2, "etec123", "alberteinsten@etec.sp.gov.br"