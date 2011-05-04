BEGIN TRANSACTION;
CREATE TABLE "minicurso" (
    "id_minicurso" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    "nome_minicurso" TEXT,
    "descricao" TEXT,
    "data_hora" TEXT,
    "sala" TEXT,
    "duracao" TEXT
);
CREATE TABLE "minicurso_tutor" (
    "id_minicurso" INTEGER NOT NULL,
    "id_tutor" INTEGER NOT NULL
);
CREATE TABLE "palestra" (
    "id_palestra" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    "nome_palestra" TEXT,
    "descricao" TEXT,
    "data_hora" TEXT
);
CREATE TABLE "palestra_palestrante" (
    "id_palestra" INTEGER NOT NULL,
    "id_user" INTEGER NOT NULL
);
CREATE TABLE sqlite_sequence(name,seq);
CREATE TABLE user (
    "id_user" INTEGER NOT NULL,
    "nome" TEXT,
    "email" TEXT,
    "site" TEXT,
    "blog" TEXT,
    "twitter" TEXT,
    "curriculo" TEXT,
    "dt_cadastro" TEXT
, "cidade" TEXT, "estado" TEXT);
COMMIT;
