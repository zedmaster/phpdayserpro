/*!40000 ALTER TABLE `palestra` DISABLE KEYS */;
INSERT INTO palestra VALUES(1,'CodeIgniter','O CodeIgniter é um framework leve de curva de aprendizado muito rápida, inspirado no Ruby on Rails está na versão 2.0.2 e vem crescendo rapidamente como opção para desenvolvimento de sistemas e de websites. Possui um bom conjunto de recursos que otimizam a criação de aplicativos e páginas de internet e uma grande flexibilidade possibilitando a extensão do Framework. Durante esta palestra estes serão os temas abordados apresentando alguns exemplos.','2011-05-31 17:00:00');
INSERT INTO palestra VALUES(2,'SCRUM',NULL,'2011-05-31 11:00:00');
INSERT INTO palestra VALUES(3,'Drupal',NULL,'2011-05-31 08:00:00');
INSERT INTO palestra VALUES(4,'Migrando Legado com Zend Framework e Dojo Toolkit',NULL,'2011-05-31 09:00:00');
INSERT INTO palestra VALUES(5,'PHP Security',NULL,'2011-05-31 10:00:00');
INSERT INTO palestra VALUES(6,'Desenvolvimento de Redes Sociais e Sites para Grandes Audiências',NULL,'2011-05-31 14:00:00');
INSERT INTO palestra VALUES(7,'Estrutura e TDD','Visão geral do Zend Framework, suas principais novidades em sua última versão e sua poderosa integração com o phpunit facilitando assim o desenvolvimento baseado em TDD.','2011-05-31 15:00:00');
INSERT INTO palestra VALUES(8,'GIT',NULL,'2011-05-31 16:00:00');
INSERT INTO palestra VALUES(9,'Webservices',NULL,'2011-06-01 08:00:00');
INSERT INTO palestra VALUES(10,'E tem isso no PHP? As novidades no PHP 5.3 e 5.4',NULL,'2011-06-01 09:00:00');
INSERT INTO palestra VALUES(11,'Coding Dojo',NULL,'2011-06-01 10:00:00');
INSERT INTO palestra VALUES(12,'Programação Orientada a Aspecto',NULL,'2011-06-01 11:00:00');
/*!40000 ALTER TABLE `palestra` ENABLE KEYS */;


/*!40000 ALTER TABLE `minicurso` DISABLE KEYS */;
INSERT INTO minicurso VALUES(1,'CakePHP: Framework para des. WEB ágil',NULL,'2011-06-01 14:00:00','1','4');
INSERT INTO minicurso VALUES(2,'PreparedKata',NULL,'2011-06-01 14:00:00','2','4');
INSERT INTO minicurso VALUES(3,'GIT',NULL,'2011-06-01 08:00:00','1','4');
/*!40000 ALTER TABLE `minicurso` ENABLE KEYS */;

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO user VALUES(1,'Alexandre F. Martins','zedmaster@gmail.com','http://uzed.com.br',NULL,NULL,'2011-05-03 23:39:00','Curitiba','PR',NULL);
INSERT INTO user VALUES(2,'Ademir Cristiano Gabardo','ademir.gabbardo@gmail.com','http://www.ademirgabardo.com.br',NULL,'Ademir Gabardo é Autor do livro CodeIgniter Framework PHP, Professor e Instrutor, Desenvolvedor web, entusiasta PHP e de software livre. Articulista do site imasters.com.br. Atualmente desenvolvendo sistemas baseados em PHP e MySQL com apoio em frameworks MVC e orientação a objetos. Também ministra cursos nas áreas de Software livre.','2011-05-03 23:39:00','São Bento do Sul','SC',NULL);
INSERT INTO user VALUES(3,'Ricardo Delcastanher','delcastanher@gmail.com','http://br.linkedin.com/in/delcastanher','http://twitter.com/delcastanher','Desenvolvedor de Rich Internet Applications (RIA) e Web Services, analista de sistemas e administrador de migração e manutenção de ambientes Linux. Interesse em desenvolver novas ferramentas na internet utilizando metodologia ágil para gerenciamento de projetos.','2011-05-03 23:39:00','Curitibanos','SC',NULL);
INSERT INTO user VALUES(4,'Wesley Willians Ramos da Silva','wsilva@schoolofnet.com','http://www.schoolofnet.com',NULL,'Especialista em PHP e Zend Framework. Bacharel em Tecnologia e Mídias Digitais pela PUC-SP, fazendo especialização em Eng. de Software pelo ITA e realizando MBA no Ibmec-RJ (Instituto Brasileiro de Mercados e Capitais) em Gestão de Negócios. Atualmente é sócio da School of Net (www.schoolofnet.com) onde ministra treinamentos voltados para Web.','2011-05-03 23:39:00','Indaiatuba','SP',NULL);
INSERT INTO user VALUES(5,'Wesley Klewerton Guez Assunção','wesleyklewerton@gmail.com','http://www.wesleyk.com',NULL,'Graduado em Sistemas de Informação, 2 especializações, Mestrando em Informática pela
UFPR (Ênfase em Engenharia de Software - Teste de Software), desenvolvedor PHP desde
2004, colaborador do time de tradução da documentação do CakePHP, participante da tra-
dução do Ubuntu.','2011-05-04 22:00:00','Toledo','PR',NULL);
INSERT INTO user VALUES(6,'Fernando Michelotti','fernando.michelotti@gmail.com','http://www.frustrado.com.br',NULL,'Tenho como formação acadêmica os cursos de Técnico em Desenho Industrial pelo Centro Federal de Educação Técnológica do Paraná (CEFET-PR), atual Universidade Tecnológica Federal do Paraná (UTFPR), bacharelado em gravura pela Escola de Música e Belas Artes do Paraná e especialização em História da Arte do Século XX pela mesma instituição. Atualmente estou concluindo meu mestrado no Programa de Pós-Graduação em Tecnologia da UTFPR. 
Academicamente tenho desenvolvido pesquisas nas áreas de artes, tecnologia e sociedade, histórias em quadrinhos e design. 
Nas comunidades de Software Livre sou mais conhecido como artista.frustrado, apelido que adotei em 2004 ao logar pela primeira vez nos canais de IRC da freenode.net. Sou membro ativo do GUD-BR-PR (Grupo de Usuários Debian do Paraná), membro fundador das comunidades Debian for Dummies e Yguá de pesquisa em Tecnologias Livres. ','2011-05-04 22:00:00','Curitiba','PR',NULL);
INSERT INTO user VALUES(7,'Flávio Gomes da Silva Lisboa','flaviogomesdasilvalisboa@gmail.com','http://fgsl.eti.br',NULL,'Bacharel em Ciência da Computação com pós-graduação em Aplicações Corporativas usando Orientação a Objetos e Tecnologia Java pela Universidade Tecnológica Federal do Paraná. Já atuou como programador em empresas privadas de informática e funcionário de carreira do Banco do Brasil, onde chegou a analista na diretoria internacional. Atualmente é consultor tecnológico da Coordenação Estratégica de Tecnologia do Serviço Federal de Processamento de Dados (Serpro). Foi professor na pós-graduação da UNICID e é instrutor de cursos técnicos na Tempo Real Eventos. Foi membro do time oficial de tradução do Zend Framework e autor de três livros sobre o tema. Tem experiência na área de Ciência da Computação, com ênfase em Software Livre, atuando principalmente nos seguintes temas: Java, PHP, padrões, frameworks, MVC e objetos.','2011-05-04 22:00:00','Curitiba','PR',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

INSERT INTO minicurso_tutor VALUES(1,5);
INSERT INTO minicurso_tutor VALUES(2,7);
INSERT INTO minicurso_tutor VALUES(3,6);

INSERT INTO minicurso_aluno VALUES(1,1);
INSERT INTO minicurso_aluno VALUES(1,2);


