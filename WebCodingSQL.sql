CREATE DATABASE WebCoding2;
USE WebCoding2;
CREATE TABLE voluntarios (
  id_voluntarios integer unsigned not null auto_increment  PRIMARY KEY,
  nome varchar(50) not null,
  cpf integer,
  telefone integer
);

CREATE TABLE endereco (
  id_endereco integer unsigned not null auto_increment PRIMARY KEY,
  cep integer,
  rua varchar(50),
  bairro varchar(50),
  cidade varchar(50),
  numero integer,
  estado varchar(50),
  pais varchar(50)
);

CREATE TABLE empresas_doadoras (
  id_doadores integer unsigned not null auto_increment PRIMARY KEY,
  nome varchar(50) not null,
  cnpj varchar(50)
);


ALTER TABLE voluntarios MODIFY COLUMN cpf BIGINT;
ALTER TABLE voluntarios MODIFY COLUMN telefone BIGINT;

ALTER TABLE endereco MODIFY COLUMN cep BIGINT;

ALTER TABLE empresas_doadoras MODIFY COLUMN cnpj BIGINT;


INSERT INTO endereco(cep, rua, bairro,cidade,numero,estado,pais) VALUES
(52010000, 'Rua do Paissandú','Paissandú', 'Recife',112,'Pernambuco','Brasil'),
(22451220,'Rua Mary Pessoa','Gávea', 'Rio de Janeiro',274,'Rio de Janeiro','Brasil'),
(13035370, 'Rua Vinte Quatro de Maio', 'Vila Industrial','Campinas',963, 'São Paulo', 'Brasil');


INSERT INTO empresas_doadoras(nome,cnpj) VALUES	
('CESAR SCHOOL',01203327000123),
('Shopping Riomar', 08853970000141);



INSERT INTO voluntarios(nome, cpf, telefone) VALUES
('João Pedro Barbosa', 85510147067, 8137557646),
('Marta Cavalcanti de Carvalho', 69097678016, 8110740964),
('Pedro Henrique Silva', 68590178012, 8117640284),
('Caio Jorge Pereira', 64509395400, 8139576273),
('Anna Vitoria Arruda', 60093176792, 8147740004),
('Artur Cabral de Souza', 22372153417, 8111230534),
('Diego Souza Lima', 87878787087, 8120082008);



