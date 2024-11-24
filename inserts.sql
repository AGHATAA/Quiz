CALL inserirCurso('Analise Desenvolvimento', 'DS');





CALL inserirDisciplina(1, 'Inteligência Artificial', 'IA');
CALL inserirDisciplina(1, 'Desenvolvimento Web', 'Web');
CALL inserirDisciplina(1, 'Análise de Sistemas', 'AS');
CALL inserirDisciplina(1, 'Ciência de Dados', 'Dados');
CALL inserirDisciplina(1, 'Desenvolvimento Mobile', 'Mob');
CALL inserirDisciplina(1, 'Internet das Coisas', 'IoT');
CALL inserirDisciplina(1, 'Machine Learning', 'ML');
CALL inserirDisciplina(1, 'Desenvolvimento de Software', 'Dev');
CALL inserirDisciplina(1, 'Cibersegurança', 'Cib');
CALL inserirDisciplina(1, 'Programação Funcional', 'Prog');
CALL inserirDisciplina(1, 'Design de Interação', 'Desi');
CALL inserirDisciplina(1, 'Desenvolvimento de Jogos', 'Jogos');
CALL inserirDisciplina(1, 'Prog Orientada Objetos', 'POO');
CALL inserirDisciplina(1, 'Computação em Nuvem', 'Nuvem');
CALL inserirDisciplina(1, 'Análise de Dados', 'Dados');
CALL inserirDisciplina(1, 'Algoritmos', 'Alg');
CALL inserirDisciplina(1, 'Blockchain', 'Block');
CALL inserirDisciplina(1, 'Realidade Aumentada', 'RA');
CALL inserirDisciplina(1, 'User Experience', 'UX');
CALL inserirDisciplina(1, 'Testes de Software', 'Test');
CALL inserirDisciplina(1, 'Engenharia de Software', 'Eng');
CALL inserirDisciplina(1, 'Interface do Usuário', 'UI');
CALL inserirDisciplina(1, 'E-commerce', 'Ecom');
CALL inserirDisciplina(1, 'Programação Web', 'Web');
CALL inserirDisciplina(1, 'Desenvolvimento de Aplicativos', 'Apps');
CALL inserirDisciplina(1, 'DevOps', 'DvOps');
CALL inserirDisciplina(1, 'Desenvolvimento Ágil', 'Ágil');
CALL inserirDisciplina(1, 'Realidade Virtual', 'RV');
CALL inserirDisciplina(1, 'Desenvolvimento de Games', 'Games');
CALL inserirDisciplina(1, 'Arquitetura de Software', 'Arq');
CALL inserirDisciplina(1, 'Sistemas Operacionais', 'SO');
CALL inserirDisciplina(1, 'Desenvolvimento Front-end', 'Front');










CALL inserirQuestao('Qual dos seguintes modelos de dados é mais adequado para representar dados não estruturados, como documentos e imagens?', 10, 4);
CALL inserirQuestao('Qual comando SQL é utilizado para criar uma nova tabela em um banco de dados?', 10, 4);
CALL inserirQuestao('A terceira forma normal (3NF) é atingida quando ?', 10, 4);
CALL inserirQuestao('O que significa a propriedade "Isolamento" em uma transação ACID', 10, 4);
CALL inserirQuestao('Qual das seguintes afirmações sobre índices em bancos de dados é verdadeira?', 10, 4);
CALL inserirQuestao('Qual das seguintes opções é uma característica comum de bancos de dados NoSQL?', 10, 4);
CALL inserirQuestao('Qual das seguintes plataformas é utilizada para desenvolver aplicativos nativos para Android?', 10, 13);
CALL inserirQuestao('Qual dos seguintes frameworks é amplamente utilizado para desenvolver aplicativos móveis híbridos?', 10, 13);
CALL inserirQuestao('O que é o conceito de "Material Design" no desenvolvimento de aplicativos Android?', 10, 13);
CALL inserirQuestao('Qual das seguintes opções é uma solução de armazenamento local para aplicativos móveis?', 10, 13);
CALL inserirQuestao('Qual das seguintes práticas é recomendada para otimizar o desempenho de um aplicativo móvel?', 10, 13);
CALL inserirQuestao('Qual das seguintes ferramentas é comumente usada para testes automatizados de aplicativos móveis?', 10, 13);
CALL inserirQuestao('Qual das seguintes linguagens é amplamente utilizada para a programação do lado do cliente (front-end) em desenvolvimento web?', 10, 8);
CALL inserirQuestao('Qual elemento HTML é usado para definir o cabeçalho de uma página?', 10, 8);
CALL inserirQuestao('Qual dos seguintes frameworks é conhecido por facilitar a construção de interfaces de usuário reativas?', 10, 8);
CALL inserirQuestao('Qual propriedade CSS é usada para alterar a cor do texto de um elemento?', 10, 8);
CALL inserirQuestao('O que significa REST em desenvolvimento de APIs?', 10, 8);







CALL inserirAlternativa(1, 'Modelo Orientado a Documentos', 1);
CALL inserirAlternativa(1, 'Modelo Relacional', 0);
CALL inserirAlternativa(1, 'Modelo Hierárquico', 0);
CALL inserirAlternativa(1, 'Modelo de Rede', 0);
CALL inserirAlternativa(1, 'Modelo Orientado a Objetos', 0);

CALL inserirAlternativa(2, 'CREATE TABLE', 1);
CALL inserirAlternativa(2, 'ADD TABLE', 0);
CALL inserirAlternativa(2, 'NEW TABLE', 0);
CALL inserirAlternativa(2, 'INSERT TABLE', 0);
CALL inserirAlternativa(2, 'MAKE TABLE', 0);

CALL inserirAlternativa(3, 'Não há dependências transitivas entre atributos', 1);
CALL inserirAlternativa(3, 'Todos os atributos são atômicos', 0);
CALL inserirAlternativa(3, 'Todos os atributos são únicos', 0);
CALL inserirAlternativa(3, 'Não há duplicação de dados', 0);
CALL inserirAlternativa(3, 'Cada tabela tem uma chave primária', 0);

CALL inserirAlternativa(4, 'As transações não devem interferir umas nas outras', 1);
CALL inserirAlternativa(4, 'As transações devem ser executadas em um ambiente seguro', 0);
CALL inserirAlternativa(4, 'As transações devem ser executadas completamente ou não executadas', 0);
CALL inserirAlternativa(4, 'As transações devem ser registradas para recuperação futura', 0);
CALL inserirAlternativa(4, 'As transações devem ser consistentes em todas as tabelas', 0);

CALL inserirAlternativa(5, 'Índices podem melhorar o desempenho de consultas, mas podem desacelerar operações de inserção e atualização', 1);
CALL inserirAlternativa(5, 'Índices são criados automaticamente pelo sistema de gerenciamento de banco de dados', 0);
CALL inserirAlternativa(5, 'Índices sempre aumentam o tempo de consulta e devem ser evitados', 0);
CALL inserirAlternativa(5, 'Índices podem ser criados em qualquer coluna de uma tabela, mas não devem ser usados em colunas com muitos valores duplicados', 0);
CALL inserirAlternativa(5, 'Índices são usados apenas para melhorar operações de escrita', 0);

CALL inserirAlternativa(6, 'Flexibilidade na estrutura de dados', 1);
CALL inserirAlternativa(6, 'Estrutura de dados fixa', 0);
CALL inserirAlternativa(6, 'Suporte a transações ACID rigorosas', 0);
CALL inserirAlternativa(6, 'Escalabilidade vertical apenas', 0);
CALL inserirAlternativa(6, 'Uso exclusivo de SQL para consultas', 0);

CALL inserirAlternativa(7, 'Kotlin', 1);
CALL inserirAlternativa(7, 'Swift', 0);
CALL inserirAlternativa(7, 'JavaScript', 0);
CALL inserirAlternativa(7, 'Ruby', 0);
CALL inserirAlternativa(7, 'C#', 0);

CALL inserirAlternativa(8, 'React Native', 1);
CALL inserirAlternativa(8, 'Angular', 0);
CALL inserirAlternativa(8, 'Django', 0);
CALL inserirAlternativa(8, 'Flask', 0);
CALL inserirAlternativa(8, 'Ruby on Rails', 0);

CALL inserirAlternativa(9, 'Um conjunto de diretrizes de design para criar interfaces de usuário intuitivas', 1);
CALL inserirAlternativa(9, 'Um padrão de segurança para aplicativos', 0);
CALL inserirAlternativa(9, 'Uma linguagem de programação específica para Android', 0);
CALL inserirAlternativa(9, 'Um framework para testes de aplicativos', 0);
CALL inserirAlternativa(9, 'Um tipo de banco de dados para aplicativos móveis', 0);

CALL inserirAlternativa(10, 'SQLite', 1);
CALL inserirAlternativa(10, 'Firebase Firestore', 0);
CALL inserirAlternativa(10, 'Amazon S3', 0);
CALL inserirAlternativa(10, 'Google Cloud Storage', 0);
CALL inserirAlternativa(10, 'Microsoft Azure', 0);

CALL inserirAlternativa(11, 'Utilizar lazy loading para carregar dados conforme necessário', 1);
CALL inserirAlternativa(11, 'Usar imagens de alta resolução em todas as telas', 0);
CALL inserirAlternativa(11, 'Minimizar o uso de animações', 0);
CALL inserirAlternativa(11, 'Carregar todos os dados na inicialização do aplicativo', 0);
CALL inserirAlternativa(11, 'Ignorar o gerenciamento de memória', 0);

CALL inserirAlternativa(13, 'JavaScript', 1);
CALL inserirAlternativa(13, 'PHP', 0);
CALL inserirAlternativa(13, 'Python', 0);
CALL inserirAlternativa(13, 'Ruby', 0);
CALL inserirAlternativa(13, 'Java', 0);

CALL inserirAlternativa(14, '<header>', 1);
CALL inserirAlternativa(14, '<footer>', 0);
CALL inserirAlternativa(14, '<section>', 0);
CALL inserirAlternativa(14, '<article>', 0);
CALL inserirAlternativa(14, '<nav>', 0);

CALL inserirAlternativa(15, 'React', 1);
CALL inserirAlternativa(15, 'Django', 0);
CALL inserirAlternativa(15, 'Flask', 0);
CALL inserirAlternativa(15, 'Ruby on Rails', 0);
CALL inserirAlternativa(15, 'Laravel', 0);

CALL inserirAlternativa(16, 'color', 1);
CALL inserirAlternativa(16, 'background-color', 0);
CALL inserirAlternativa(16, 'text-color', 0);
CALL inserirAlternativa(16, 'font-color', 0);
CALL inserirAlternativa(16, 'text-style', 0);

CALL inserirAlternativa(17, 'Representational State Transfer', 1);
CALL inserirAlternativa(17, 'Remote Execution and State Transfer', 0);
CALL inserirAlternativa(17, 'Real-time Event Streaming Technology', 0);
CALL inserirAlternativa(17, 'Representational Event State Transfer', 0);
CALL inserirAlternativa(17, 'Rapid Execution of State Transactions', 0);

