CREATE TABLE "categoria" (
  "id_categoria" integer PRIMARY KEY,
  "nome" varchar(100)
);

CREATE TABLE "assinatura" (
  "id_assinatura" integer PRIMARY KEY,
  "nome_servico" varchar(150),
  "valor" decimal,
  "moeda" char(3),
  "ciclo_cobranca" varchar(20),
  "status" boolean,
  "data_renovacao" date,
  "id_categoria" integer
);

ALTER TABLE "assinatura" ADD FOREIGN KEY ("id_categoria") REFERENCES "categoria" ("id_categoria") DEFERRABLE INITIALLY IMMEDIATE;
