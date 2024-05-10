CREATE TABLE "Carros" (
  "id" integer PRIMARY KEY,
  "modelo" char(50),
  "marca" char(50),
  "ano" date,
  "placa" varchar(7),
  "cor" varchar(25),
  "manual" bool,
  "valor" double
);

CREATE TABLE "Clientes" (
  "id" integer PRIMARY KEY,
  "nome" varchar(200),
  "email" varchar(200),
  "telefone" varchar(20),
  "endereco" varchar(200)
);

CREATE TABLE "Vendas" (
  "id" integer PRIMARY KEY,
  "carro_id" integer,
  "cliente_id" integer,
  "data_venda" date,
  "valor" double
);

ALTER TABLE "Vendas" ADD FOREIGN KEY ("carro_id") REFERENCES "Carros" ("id");

ALTER TABLE "Vendas" ADD FOREIGN KEY ("cliente_id") REFERENCES "Clientes" ("id");

