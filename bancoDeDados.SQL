-- Table 'user'
CREATE TABLE "user" (
  "id" SERIAL PRIMARY KEY,
  "nome" VARCHAR(100),
  "e_mail" VARCHAR(100),
  "senha" VARCHAR(100),
  "linha_de_producao" VARCHAR(150),
  "funcao" VARCHAR(100),
  "cpf" BIGINT
);

-- Table 'manuais'
CREATE TABLE "manuais" (
  "id" SERIAL PRIMARY KEY,
  "leitura" VARCHAR(100),
  "id_user" INTEGER,
  "id_manual" INTEGER,
  FOREIGN KEY ("id_user") REFERENCES "user" ("id"),
  FOREIGN KEY ("id_manual") REFERENCES "manual" ("id")
);

-- Table 'aparelhos'
CREATE TABLE "aparelhos" (
  "id" SERIAL PRIMARY KEY,
  "nome" VARCHAR(100),
  "modelo" VARCHAR(100),
  "tipo" VARCHAR,
  "ano" INTEGER
);

-- Table 'manual'
CREATE TABLE "manual" (
  "id" SERIAL PRIMARY KEY,
  "versao" VARCHAR(50),
  "descricao" VARCHAR(900),
  "id_aparelhos" INTEGER,
  "id_materiais" INTEGER,
  FOREIGN KEY ("id_aparelhos") REFERENCES "aparelhos" ("id"),
  FOREIGN KEY ("id_materiais") REFERENCES "materiais" ("id")
);

-- Table 'materiais'
CREATE TABLE "materiais" (
  "id" SERIAL PRIMARY KEY,
  "tipo" VARCHAR(100),
  "arquivo" VARCHAR(100),
  "descricao" VARCHAR(900)
);
