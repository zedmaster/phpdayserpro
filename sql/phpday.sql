CREATE TABLE "palestra" (
    "id_palestra" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    "nome_palestra" TEXT,
    "descricao" TEXT,
    "data_hora" TEXT
);
CREATE TABLE sqlite_sequence(name,seq);
CREATE TABLE "palestra_palestrante" (
    "id_palestra" INTEGER NOT NULL,
    "id_user" INTEGER NOT NULL
);
CREATE TABLE "minicurso" (
    "id_minicurso" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    "nome_minicurso" TEXT,
    "descricao" TEXT,
    "data_hora" TEXT,
    "sala" TEXT,
    "duracao" TEXT
);
CREATE TABLE minicurso_tutor (
    "id_minicurso" INTEGER NOT NULL,
    "id_user" INTEGER NOT NULL
);
CREATE TABLE minicurso_aluno (
    "id_minicurso" INTEGER NOT NULL,
    "id_user" INTEGER NOT NULL
);
CREATE TABLE participacao_certificado (
    "id_user" INTEGER,
    "id_participacao_tipo" INTEGER
);
CREATE TABLE "participacao_tipo" (
    "id_participacao_tipo" INTEGER PRIMARY KEY AUTOINCREMENT,
    "descricao" TEXT
);
CREATE TABLE user (
    "id_user" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    "nome" TEXT,
    "email" TEXT,
    "site" TEXT,
    "twitter" TEXT,
    "curriculo" TEXT,
    "dt_cadastro" TEXT,
    "cidade" TEXT,
    "estado" TEXT, 
    "key" TEXT);
CREATE VIEW "v_minicurso" AS SELECT  a.*,
                    c.id_user,
                    c.nome,
		    (SELECT (COUNT(*) ) FROM minicurso_aluno WHERE id_minicurso = a.id_minicurso) AS alunos
FROM minicurso a INNER JOIN minicurso_tutor b ON a.id_minicurso = b.id_minicurso
                INNER JOIN user c ON b.id_user = c.id_user;

