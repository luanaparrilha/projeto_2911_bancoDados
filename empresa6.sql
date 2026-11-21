create database empresa6;
use empresa6;

create table vendedor(
	cod_vended integer primary key auto_increment not null,
    nome_vended varchar(20) not null,
    sexo_vended char(1) not null,
    perc_comissao decimal(19,2) not null
);

create table estoqueProduto(
	cod_produto integer primary key auto_increment not null,
    quant_produto integer not null,
    status_produto varchar(15)
);

create table dependente(
	cod_depen integer primary key auto_increment not null,
    nome_depen varchar(20),
    nascimento_depen datetime,
    sexo_depen char(1),
    cod_vended integer,
    foreign key (cod_vended) references vendedor (cod_vended),
    inep_escola varchar(100)
);

create table venda (
  cod_venda integer primary key not null,
  data_venda datetime not null,
  cod_cliente integer not null,
  nome_cliente varchar(100) not null,
  cidade_venda varchar(45) not null,
  estado_venda varchar(45) not null,
  pais_venda varchar(45) not null,
  cod_produto integer not null,
  foreign key (cod_produto) references estoqueProduto (cod_produto),
  nome_produto varchar(45) not null,
  tipo_produto varchar(45) not null,
  quant_produto integer not null,
  unidade_produto varchar(5) not null,
  valor_unitario decimal(19,2) not null,
  cod_vended integer not null,
  foreign key (cod_vended) references vendedor (cod_vended),
  cod_canalVendas integer not null,
  nome_canalVendas varchar(20) not null,
  status_venda varchar(15) not null,
  deletado_venda char(1) not null
 );
 
insert into vendedor values
(1,'Vendedor 1','1',1.00),(2,'Vendedor 2','1',1.00),
(3,'Vendedor 3','1',1.00),(4,'Vendedor 4','1',0.50),
(5,'Vendedor 5','0',0.50),(6,'Vendedor 6','0',0.50),
(7,'Vendedor 7','0',0.50),(8,'Vendedor 8','0',0.50),
(9,'Vendedor 9','0',0.50),(10,'Vendedor 10','0',0.50);

select * from vendedor;

insert into estoqueProduto values 
(1,20000,'Ativo'),(2,5000,'Ativo'),
(3,2000,'Ativo'),(4,30000,'Ativo'),
(5,2000,'Ativo'),(6,1000,'MVP - validação');

select * from estoqueProduto;

insert into dependente values 
(1,'Dependente 1','2010-02-02','M',1,'11000040'),(2,'Dependente 2','2012-04-05','M',3,'33110360'),
(3,'Dependente 3','2013-03-04','F',3,'33110360'),(4,'Dependente 4','2010-05-05','F',4,'42154413'),
(5,'Dependente 5','2019-07-06','M',4,'42154413'),(6,'Dependente 6','2018-03-02','F',9,'53085000');

insert into venda values
(1,'2010-02-01 00:00:00',1,'Cliente AA','Florianópolis','Santa Catarina','Brasil',1,'Produto A','A',4000,'KG',0.34,2,1,'Matriz','Concluído','0'),
(3,'2010-02-01 00:00:00',5,'Cliente BB','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',4200,'KG',0.34,4,1,'Matriz','Concluído','0'),
(4,'2010-02-02 00:00:00',3,'Cliente BC','Baturité','Ceará','Brasil',2,'Produto C','A',250,'KG',7.00,2,1,'Matriz','Concluído','0'),
(5,'2010-02-03 00:00:00',4,'Cliente CC','Fortaleza','Ceará','Brasil',1,'Produto A','A',4500,'KG',0.34,1,1,'Matriz','Concluído','0'),
(7,'2010-03-05 00:00:00',6,'Cliente DD','Goiânia','Goiás','Brasil',1,'Produto A','A',12500,'KG',0.34,2,1,'Matriz','Concluído','0'),
(8,'2010-03-06 00:00:00',7,'Cliente DE','João Pessoa','Paraíba','Brasil',1,'Produto A','A',12000,'KG',0.34,2,1,'Matriz','Concluído','0'),
(9,'2010-04-07 00:00:00',8,'Cliente EE','Natal','Rio Grande do Norte','Brasil',1,'Produto A','A',17500,'KG',0.34,3,1,'Matriz','Concluído','0'),
(11,'2011-12-08 00:00:00',2,'Cliente EF','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',7000,'KG',0.34,9,1,'Matriz','Concluído','0'),
(12,'2012-12-08 00:00:00',2,'Cliente EF','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',8000,'KG',0.34,9,1,'Matriz','Concluído','0'),
(13,'2013-12-08 00:00:00',2,'Cliente EF','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',8000,'KG',0.34,9,1,'Matriz','Concluído','0'),
(14,'2014-12-08 00:00:00',2,'Cliente EF','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',9000,'KG',0.34,9,1,'Matriz','Concluído','0'),
(15,'2015-12-08 00:00:00',2,'Cliente EF','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',9000,'KG',0.34,9,1,'Matriz','Concluído','0'),
(16,'2016-12-08 00:00:00',2,'Cliente EF','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',10000,'KG',0.34,9,1,'Matriz','Concluído','0'),
(17,'2017-12-08 00:00:00',2,'Cliente EF','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',10000,'KG',0.34,9,1,'Matriz','Concluído','0'),
(18,'2018-12-08 00:00:00',2,'Cliente EF','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',11000,'KG',0.34,9,1,'Matriz','Concluído','0'),
(19,'2019-12-08 00:00:00',2,'Cliente EF','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',11000,'KG',0.34,9,1,'Matriz','Concluído','0'),
(20,'2020-12-08 00:00:00',2,'Cliente EF','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',12000,'KG',0.34,9,1,'Matriz','Concluído','0'),
(21,'2021-01-09 00:00:00',2,'Cliente EF','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',5000,'KG',0.34,9,2,'Ecommerce','Concluído','0'),
(22,'2021-03-07 00:00:00',2,'Cliente EF','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',5000,'KG',0.34,9,2,'Ecommerce','Concluído','0'),
(23,'2021-08-07 00:00:00',2,'Cliente EF','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',20000,'KG',0.34,9,2,'Ecommerce','Em aberto','1'),
(24,'2021-08-08 00:00:00',2,'Cliente EF','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',25000,'KG',0.34,9,1,'Matriz','Cancelado','0'),
(25,'2010-04-07 00:00:00',8,'Cliente EE','Natal','Rio Grande do Norte','Brasil',1,'Produto A','A',9000,'KG',0.34,3,1,'Matriz','Concluído','0'),
(26,'2011-04-07 00:00:00',8,'Cliente EE','Natal','Rio Grande do Norte','Brasil',1,'Produto A','A',9500,'KG',0.34,3,1,'Matriz','Concluído','0'),
(27,'2012-04-07 00:00:00',8,'Cliente EE','Natal','Rio Grande do Norte','Brasil',1,'Produto A','A',9500,'KG',0.34,3,1,'Matriz','Concluído','0'),
(28,'2013-04-07 00:00:00',8,'Cliente EE','Natal','Rio Grande do Norte','Brasil',1,'Produto A','A',9500,'KG',0.34,3,1,'Matriz','Concluído','0'),
(29,'2014-04-07 00:00:00',8,'Cliente EE','Natal','Rio Grande do Norte','Brasil',1,'Produto A','A',9500,'KG',0.34,3,1,'Matriz','Concluído','0'),
(30,'2014-04-07 00:00:00',8,'Cliente EE','Natal','Rio Grande do Norte','Brasil',1,'Produto A','A',9500,'KG',0.34,3,1,'Matriz','Concluído','0'),
(31,'2015-04-07 00:00:00',8,'Cliente EE','Natal','Rio Grande do Norte','Brasil',1,'Produto A','A',10500,'KG',0.34,3,1,'Matriz','Concluído','0'),
(32,'2016-04-07 00:00:00',8,'Cliente EE','Natal','Rio Grande do Norte','Brasil',1,'Produto A','A',11500,'KG',0.34,3,1,'Matriz','Concluído','0'),
(33,'2017-04-07 00:00:00',8,'Cliente EE','Natal','Rio Grande do Norte','Brasil',1,'Produto A','A',12500,'KG',0.34,3,1,'Matriz','Concluído','0'),
(34,'2018-04-07 00:00:00',8,'Cliente EE','Natal','Rio Grande do Norte','Brasil',1,'Produto A','A',13500,'KG',0.34,3,1,'Matriz','Concluído','0'),
(35,'2019-04-07 00:00:00',8,'Cliente EE','Natal','Rio Grande do Norte','Brasil',1,'Produto A','A',14500,'KG',0.34,3,1,'Matriz','Concluído','0'),
(36,'2020-04-07 00:00:00',8,'Cliente EE','Natal','Rio Grande do Norte','Brasil',1,'Produto A','A',15500,'KG',0.34,3,1,'Matriz','Concluído','0'),
(37,'2021-04-07 00:00:00',8,'Cliente EE','Natal','Rio Grande do Norte','Brasil',1,'Produto A','A',17500,'KG',0.34,3,2,'Ecommerce','Concluído','0'),
(38,'2021-04-07 00:00:00',2,'Cliente EF','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',10000,'KG',0.34,9,2,'Ecommerce','Concluído','0'),
(39,'2011-02-01 00:00:00',1,'Cliente AA','Florianópolis','Santa Catarina','Brasil',1,'Produto A','A',4000,'KG',0.34,2,1,'Matriz','Concluído','0'),
(40,'2012-02-01 00:00:00',1,'Cliente AA','Florianópolis','Santa Catarina','Brasil',1,'Produto A','A',14000,'KG',0.34,2,1,'Matriz','Em aberto','0'),
(41,'2013-02-01 00:00:00',1,'Cliente AA','Florianópolis','Santa Catarina','Brasil',1,'Produto A','A',24000,'KG',0.34,2,1,'Matriz','Concluído','0'),
(42,'2014-02-01 00:00:00',1,'Cliente AA','Florianópolis','Santa Catarina','Brasil',1,'Produto A','A',34000,'KG',0.34,2,1,'Matriz','Concluído','0'),
(43,'2015-02-01 00:00:00',1,'Cliente AA','Florianópolis','Santa Catarina','Brasil',1,'Produto A','A',44000,'KG',0.34,2,1,'Matriz','Concluído','0'),
(45,'2017-02-01 00:00:00',1,'Cliente AA','Florianópolis','Santa Catarina','Brasil',1,'Produto A','A',4000,'KG',0.34,2,1,'Matriz','Concluído','0'),
(46,'2018-02-01 00:00:00',1,'Cliente AA','Florianópolis','Santa Catarina','Brasil',1,'Produto A','A',4000,'KG',0.34,2,1,'Matriz','Concluído','0'),
(47,'2019-02-01 00:00:00',1,'Cliente AA','Florianópolis','Santa Catarina','Brasil',1,'Produto A','A',4000,'KG',0.34,2,1,'Matriz','Concluído','0'),
(48,'2020-02-01 00:00:00',1,'Cliente AA','Florianópolis','Santa Catarina','Brasil',1,'Produto A','A',4000,'KG',0.34,2,1,'Matriz','Concluído','0'),
(49,'2021-02-01 00:00:00',1,'Cliente AA','Florianópolis','Santa Catarina','Brasil',1,'Produto A','A',14000,'KG',0.34,2,2,'Ecommerce','Concluído','0'),
(50,'2011-02-01 00:00:00',5,'Cliente BB','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',4200,'KG',0.34,4,1,'Matriz','Concluído','0'),
(51,'2012-02-01 00:00:00',5,'Cliente BB','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',4200,'KG',0.34,4,1,'Matriz','Concluído','0'),
(52,'2013-02-01 00:00:00',5,'Cliente BB','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',4200,'KG',0.34,4,1,'Matriz','Concluído','0'),
(53,'2014-02-01 00:00:00',5,'Cliente BB','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',14200,'KG',0.34,4,1,'Matriz','Concluído','0'),
(54,'2015-02-01 00:00:00',5,'Cliente BB','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',14200,'KG',0.34,4,1,'Matriz','Concluído','0'),
(55,'2016-02-01 00:00:00',5,'Cliente BB','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',24200,'KG',0.34,4,1,'Matriz','Em aberto','1'),
(56,'2017-02-01 00:00:00',5,'Cliente BB','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',24200,'KG',0.34,4,1,'Matriz','Concluído','0'),
(57,'2018-02-01 00:00:00',5,'Cliente BB','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',24200,'KG',0.34,4,1,'Matriz','Concluído','0'),
(58,'2019-02-01 00:00:00',5,'Cliente BB','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',24200,'KG',0.34,4,1,'Matriz','Concluído','0'),
(59,'2020-02-01 00:00:00',5,'Cliente BB','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',4200,'KG',0.34,4,1,'Matriz','Concluído','0'),
(60,'2021-08-07 00:00:00',5,'Cliente BB','Belo Horizonte','Minas Gerais','Brasil',1,'Produto A','A',4200,'KG',0.34,4,2,'Ecommerce','Concluído','0'),
(61,'2011-02-01 00:00:00',4,'Cliente CC','Fortaleza','Ceará','Brasil',1,'Produto A','A',4500,'KG',0.34,1,1,'Matriz','Concluído','0'),
(62,'2012-02-03 00:00:00',4,'Cliente CC','Fortaleza','Ceará','Brasil',1,'Produto A','A',4500,'KG',0.34,1,1,'Matriz','Concluído','0'),
(63,'2013-02-02 00:00:00',4,'Cliente CC','Fortaleza','Ceará','Brasil',1,'Produto A','A',14500,'KG',0.34,1,1,'Matriz','Concluído','0'),
(64,'2014-02-03 00:00:00',4,'Cliente CC','Fortaleza','Ceará','Brasil',1,'Produto A','A',14500,'KG',0.34,1,1,'Matriz','Concluído','0'),
(65,'2015-02-03 00:00:00',4,'Cliente CC','Fortaleza','Ceará','Brasil',1,'Produto A','A',14500,'KG',0.34,1,1,'Matriz','Concluído','0'),
(66,'2016-02-03 00:00:00',4,'Cliente CC','Fortaleza','Ceará','Brasil',1,'Produto A','A',14500,'KG',0.34,1,1,'Matriz','Concluído','0'),
(67,'2017-04-04 00:00:00',4,'Cliente CC','Fortaleza','Ceará','Brasil',1,'Produto A','A',14500,'KG',0.34,1,1,'Matriz','Em aberto','1'),
(68,'2018-05-05 00:00:00',4,'Cliente CC','Fortaleza','Ceará','Brasil',1,'Produto A','A',14500,'KG',0.34,1,1,'Matriz','Concluído','0'),
(69,'2019-06-07 00:00:00',4,'Cliente CC','Fortaleza','Ceará','Brasil',1,'Produto A','A',14500,'KG',0.34,1,1,'Matriz','Concluído','0'),
(70,'2020-07-07 00:00:00',4,'Cliente CC','Fortaleza','Ceará','Brasil',1,'Produto A','A',14500,'KG',0.34,1,1,'Matriz','Concluído','0'),
(71,'2021-08-07 00:00:00',4,'Cliente CC','Fortaleza','Ceará','Brasil',1,'Produto A','A',14500,'KG',0.34,1,2,'Ecommerce','Concluído','0'),
(72,'2011-03-05 00:00:00',6,'Cliente DD','Goiânia','Goiás','Brasil',1,'Produto A','A',12500,'KG',0.34,2,1,'Matriz','Concluído','0'),
(73,'2013-03-05 00:00:00',6,'Cliente DD','Goiânia','Goiás','Brasil',1,'Produto A','A',12500,'KG',0.34,2,1,'Matriz','Concluído','0'),
(74,'2015-03-05 00:00:00',6,'Cliente DD','Goiânia','Goiás','Brasil',1,'Produto A','A',12500,'KG',0.34,2,1,'Matriz','Concluído','0'),
(75,'2017-03-05 00:00:00',6,'Cliente DD','Goiânia','Goiás','Brasil',1,'Produto A','A',12500,'KG',0.34,2,1,'Matriz','Concluído','0'),
(76,'2018-03-05 00:00:00',6,'Cliente DD','Goiânia','Goiás','Brasil',1,'Produto A','A',12500,'KG',0.34,2,1,'Matriz','Concluído','0'),
(77,'2019-03-05 00:00:00',6,'Cliente DD','Goiânia','Goiás','Brasil',1,'Produto A','A',12500,'KG',0.34,2,1,'Matriz','Concluído','0'),
(78,'2020-03-05 00:00:00',6,'Cliente DD','Goiânia','Goiás','Brasil',1,'Produto A','A',12500,'KG',0.34,2,1,'Matriz','Concluído','0'),
(79,'2021-03-05 00:00:00',6,'Cliente DD','Goiânia','Goiás','Brasil',1,'Produto A','A',12500,'KG',0.34,2,1,'Matriz','Concluído','0'),
(80,'2021-04-05 00:00:00',6,'Cliente DD','Goiânia','Goiás','Brasil',1,'Produto A','A',12500,'KG',0.34,2,2,'Ecommerce','Concluído','0'),
(81,'2021-08-07 00:00:00',6,'Cliente DD','Goiânia','Goiás','Brasil',1,'Produto A','A',12500,'KG',0.34,2,2,'Ecommerce','Concluído','0'),
(82,'2012-03-06 00:00:00',7,'Cliente DE','João Pessoa','Paraíba','Brasil',1,'Produto A','A',12000,'KG',0.34,2,1,'Matriz','Concluído','0'),
(83,'2014-03-06 00:00:00',7,'Cliente DE','João Pessoa','Paraíba','Brasil',1,'Produto A','A',12000,'KG',0.34,2,1,'Matriz','Cancelado','0'),
(84,'2016-03-06 00:00:00',7,'Cliente DE','João Pessoa','Paraíba','Brasil',1,'Produto A','A',12000,'KG',0.34,2,1,'Matriz','Concluído','0'),
(85,'2019-03-06 00:00:00',7,'Cliente DE','João Pessoa','Paraíba','Brasil',1,'Produto A','A',12000,'KG',0.34,2,1,'Matriz','Concluído','0'),
(86,'2020-03-06 00:00:00',7,'Cliente DE','João Pessoa','Paraíba','Brasil',1,'Produto A','A',22000,'KG',0.34,2,1,'Matriz','Concluído','0'),
(87,'2021-03-06 00:00:00',7,'Cliente DE','João Pessoa','Paraíba','Brasil',1,'Produto A','A',22000,'KG',0.34,2,2,'Ecommerce','Concluído','0'),
(88,'2021-06-06 00:00:00',7,'Cliente DE','João Pessoa','Paraíba','Brasil',1,'Produto A','A',42000,'KG',0.34,2,2,'Ecommerce','Concluído','0'),
(89,'2021-08-07 00:00:00',7,'Cliente DE','João Pessoa','Paraíba','Brasil',1,'Produto A','A',52000,'KG',0.34,2,2,'Ecommerce','Concluído','0'),
(90,'2011-02-02 00:00:00',3,'Cliente BC','Baturité','Ceará','Brasil',2,'Produto C','A',11250,'KG',7.00,2,1,'Matriz','Concluído','0'),
(91,'2012-02-02 00:00:00',3,'Cliente BC','Baturité','Ceará','Brasil',2,'Produto C','A',12250,'KG',7.00,2,1,'Matriz','Concluído','0'),
(92,'2013-02-02 00:00:00',3,'Cliente BC','Baturité','Ceará','Brasil',2,'Produto C','A',13250,'KG',7.00,2,1,'Matriz','Concluído','0'),
(93,'2014-02-02 00:00:00',3,'Cliente BC','Baturité','Ceará','Brasil',2,'Produto C','A',14250,'KG',7.00,2,1,'Matriz','Concluído','0'),
(94,'2015-02-02 00:00:00',3,'Cliente BC','Baturité','Ceará','Brasil',2,'Produto C','A',15250,'KG',7.00,2,1,'Matriz','Concluído','0'),
(95,'2016-02-02 00:00:00',3,'Cliente BC','Baturité','Ceará','Brasil',2,'Produto C','A',16250,'KG',7.00,2,1,'Matriz','Concluído','0'),
(96,'2017-02-02 00:00:00',3,'Cliente BC','Baturité','Ceará','Brasil',2,'Produto C','A',17250,'KG',7.00,2,1,'Matriz','Concluído','0'),
(97,'2018-02-02 00:00:00',3,'Cliente BC','Baturité','Ceará','Brasil',2,'Produto C','A',18250,'KG',7.00,2,1,'Matriz','Concluído','0'),
(98,'2019-02-02 00:00:00',3,'Cliente BC','Baturité','Ceará','Brasil',2,'Produto C','A',19250,'KG',7.00,2,1,'Matriz','Concluído','0'),
(99,'2020-03-02 00:00:00',3,'Cliente BC','Baturité','Ceará','Brasil',2,'Produto C','A',19250,'KG',7.00,2,1,'Matriz','Concluído','0'),
(100,'2021-07-02 00:00:00',3,'Cliente BC','Baturité','Ceará','Brasil',2,'Produto C','A',19250,'KG',7.00,2,1,'Matriz','Concluído','0'),
(101,'2015-02-02 00:00:00',10,'Cliente ABC','São Paulo','São Paulo','Brasil',2,'Produto C','A',15250,'KG',7.00,10,1,'Matriz','Cancelado','0'),
(102,'2016-02-02 00:00:00',10,'Cliente ABC','São Paulo','São Paulo','Brasil',2,'Produto C','A',15250,'KG',7.00,10,1,'Matriz','Concluído','0'),
(103,'2017-02-02 00:00:00',10,'Cliente ABC','São Paulo','São Paulo','Brasil',2,'Produto C','A',15250,'KG',7.00,10,1,'Matriz','Concluído','0'),
(104,'2018-02-02 00:00:00',10,'Cliente ABC','São Paulo','São Paulo','Brasil',2,'Produto C','A',15250,'KG',7.00,10,1,'Matriz','Concluído','0'),
(105,'2019-02-02 00:00:00',10,'Cliente ABC','São Paulo','São Paulo','Brasil',2,'Produto C','A',15250,'KG',7.00,10,1,'Matriz','Concluído','0'),
(106,'2020-02-02 00:00:00',10,'Cliente ABC','São Paulo','São Paulo','Brasil',2,'Produto C','A',15250,'KG',7.00,10,1,'Matriz','Concluído','0'),
(107,'2021-02-02 00:00:00',10,'Cliente ABC','São Paulo','São Paulo','Brasil',2,'Produto C','A',15250,'KG',7.00,10,1,'Matriz','Concluído','0'),
(108,'2021-07-01 00:00:00',10,'Cliente ABC','São Paulo','São Paulo','Brasil',2,'Produto C','A',15250,'KG',7.00,10,2,'Ecommerce','Concluído','0'),
(110,'2015-02-02 00:00:00',9,'Cliente BCA','Rio de Janeiro','Rio de Janeiro','Brasil',2,'Produto C','A',25250,'KG',7.00,8,1,'Matriz','Concluído','0'),
(112,'2016-02-02 00:00:00',9,'Cliente BCA','Rio de Janeiro','Rio de Janeiro','Brasil',2,'Produto C','A',25250,'KG',7.00,8,1,'Matriz','Concluído','0'),
(114,'2017-02-02 00:00:00',9,'Cliente BCA','Rio de Janeiro','Rio de Janeiro','Brasil',2,'Produto C','A',25250,'KG',7.00,8,1,'Matriz','Concluído','0'),
(115,'2018-02-02 00:00:00',9,'Cliente BCA','Rio de Janeiro','Rio de Janeiro','Brasil',2,'Produto C','A',25250,'KG',7.00,8,1,'Matriz','Concluído','0'),
(116,'2018-03-02 00:00:00',9,'Cliente BCA','Rio de Janeiro','Rio de Janeiro','Brasil',2,'Produto C','A',25250,'KG',7.00,8,1,'Matriz','Concluído','0'),
(117,'2020-02-02 00:00:00',9,'Cliente BCA','Rio de Janeiro','Rio de Janeiro','Brasil',2,'Produto C','A',25250,'KG',7.00,8,1,'Matriz','Concluído','0'),
(118,'2021-05-15 00:00:00',9,'Cliente BCA','Rio de Janeiro','Rio de Janeiro','Brasil',2,'Produto C','A',25250,'KG',7.00,8,1,'Matriz','Concluído','0'),
(120,'2010-02-13 00:00:00',11,'Cliente CCC','Salvador','Bahia','Brasil',1,'Produto A','A',4500,'KG',0.34,6,1,'Matriz','Concluído','0'),
(121,'2011-02-03 00:00:00',11,'Cliente CCC','Salvador','Bahia','Brasil',1,'Produto A','A',4500,'KG',0.34,6,1,'Matriz','Concluído','0'),
(122,'2012-02-03 00:00:00',11,'Cliente CCC','Salvador','Bahia','Brasil',1,'Produto A','A',4500,'KG',0.34,6,1,'Matriz','Concluído','0'),
(123,'2013-01-03 00:00:00',11,'Cliente CCC','Salvador','Bahia','Brasil',1,'Produto A','A',4500,'KG',0.34,6,1,'Matriz','Concluído','0'),
(124,'2014-02-03 00:00:00',11,'Cliente CCC','Salvador','Bahia','Brasil',1,'Produto A','A',4500,'KG',0.34,6,1,'Matriz','Concluído','0'),
(125,'2015-02-03 00:00:00',11,'Cliente CCC','Salvador','Bahia','Brasil',1,'Produto A','A',4500,'KG',0.34,6,1,'Matriz','Cancelado','0'),
(126,'2016-02-03 00:00:00',11,'Cliente CCC','Salvador','Bahia','Brasil',1,'Produto A','A',4500,'KG',0.34,6,1,'Matriz','Concluído','0'),
(127,'2017-06-03 00:00:00',11,'Cliente CCC','Salvador','Bahia','Brasil',1,'Produto A','A',14500,'KG',0.34,6,1,'Matriz','Concluído','0'),
(128,'2018-08-03 00:00:00',11,'Cliente CCC','Salvador','Bahia','Brasil',1,'Produto A','A',14500,'KG',0.34,6,1,'Matriz','Concluído','0'),
(129,'2019-05-03 00:00:00',11,'Cliente CCC','Salvador','Bahia','Brasil',1,'Produto A','A',14500,'KG',0.34,6,1,'Matriz','Concluído','0'),
(130,'2020-01-03 00:00:00',11,'Cliente CCC','Salvador','Bahia','Brasil',1,'Produto A','A',34500,'KG',0.34,6,1,'Matriz','Concluído','0'),
(131,'2021-08-04 00:00:00',11,'Cliente CCC','Salvador','Bahia','Brasil',1,'Produto A','A',44500,'KG',0.34,6,2,'Ecommerce','Concluído','0'),
(140,'2011-09-06 00:00:00',13,'Cliente MAC','Maceió','Alagoas','Brasil',1,'Produto A','A',4500,'KG',0.34,7,1,'Matriz','Concluído','0'),
(141,'2012-09-06 00:00:00',13,'Cliente MAC','Maceió','Alagoas','Brasil',1,'Produto A','A',4500,'KG',0.34,7,1,'Matriz','Concluído','0'),
(142,'2013-09-06 00:00:00',13,'Cliente MAC','Maceió','Alagoas','Brasil',1,'Produto A','A',4500,'KG',0.34,7,1,'Matriz','Concluído','0'),
(143,'2014-09-06 00:00:00',13,'Cliente MAC','Maceió','Alagoas','Brasil',1,'Produto A','A',4500,'KG',0.34,7,1,'Matriz','Concluído','0'),
(144,'2015-09-06 00:00:00',13,'Cliente MAC','Maceió','Alagoas','Brasil',1,'Produto A','A',4500,'KG',0.34,7,1,'Matriz','Concluído','0'),
(145,'2016-09-06 00:00:00',13,'Cliente MAC','Maceió','Alagoas','Brasil',1,'Produto A','A',14500,'KG',0.34,7,1,'Matriz','Concluído','0'),
(146,'2018-09-06 00:00:00',13,'Cliente MAC','Maceió','Alagoas','Brasil',1,'Produto A','A',34500,'KG',0.34,7,1,'Matriz','Concluído','0'),
(147,'2019-09-06 00:00:00',13,'Cliente MAC','Maceió','Alagoas','Brasil',1,'Produto A','A',44500,'KG',0.34,7,1,'Matriz','Concluído','0'),
(148,'2020-09-06 00:00:00',13,'Cliente MAC','Maceió','Alagoas','Brasil',1,'Produto A','A',44500,'KG',0.34,7,1,'Matriz','Concluído','0'),
(149,'2021-05-15 00:00:00',13,'Cliente MAC','Maceió','Alagoas','Brasil',1,'Produto A','A',44500,'KG',0.34,7,1,'Matriz','Concluído','0'),
(150,'2010-03-01 00:00:00',14,'Cliente MGS','Campo Grande','Mato Grosso do Sul','Brasil',3,'Produto E','B',730,'KG',2.00,5,1,'Matriz','Concluído','0'),
(151,'2011-03-05 00:00:00',14,'Cliente MGS','Campo Grande','Mato Grosso do Sul','Brasil',3,'Produto E','B',1730,'KG',2.00,5,1,'Matriz','Concluído','0'),
(152,'2012-05-01 00:00:00',14,'Cliente MGS','Campo Grande','Mato Grosso do Sul','Brasil',3,'Produto E','B',2730,'KG',2.00,5,1,'Matriz','Concluído','0'),
(153,'2013-04-03 00:00:00',14,'Cliente MGS','Campo Grande','Mato Grosso do Sul','Brasil',3,'Produto E','B',3730,'KG',2.00,5,1,'Matriz','Concluído','0'),
(154,'2014-07-01 00:00:00',14,'Cliente MGS','Campo Grande','Mato Grosso do Sul','Brasil',3,'Produto E','B',4730,'KG',2.00,5,1,'Matriz','Concluído','0'),
(155,'2015-06-02 00:00:00',14,'Cliente MGS','Campo Grande','Mato Grosso do Sul','Brasil',3,'Produto E','B',5730,'KG',2.00,5,1,'Matriz','Concluído','0'),
(156,'2016-07-29 00:00:00',14,'Cliente MGS','Campo Grande','Mato Grosso do Sul','Brasil',3,'Produto E','B',7730,'KG',2.00,5,1,'Matriz','Concluído','0'),
(157,'2017-03-23 00:00:00',14,'Cliente MGS','Campo Grande','Mato Grosso do Sul','Brasil',3,'Produto E','B',19730,'KG',2.00,5,1,'Matriz','Concluído','0'),
(158,'2019-02-17 00:00:00',14,'Cliente MGS','Campo Grande','Mato Grosso do Sul','Brasil',3,'Produto E','B',19730,'KG',2.00,5,1,'Matriz','Concluído','0'),
(159,'2020-02-14 00:00:00',14,'Cliente MGS','Campo Grande','Mato Grosso do Sul','Brasil',3,'Produto E','B',19730,'KG',2.00,5,1,'Matriz','Concluído','0'),
(160,'2021-07-02 00:00:00',14,'Cliente MGS','Campo Grande','Mato Grosso do Sul','Brasil',3,'Produto E','B',19730,'KG',2.00,5,2,'Ecommerce','Concluído','0'),
(170,'2010-05-21 00:00:00',18,'Cliente GRM','Gramado','Rio Grande do Sul','Brasil',5,'Produto CH','A',10030,'KG',9.00,2,1,'Matriz','Concluído','0'),
(171,'2012-12-21 00:00:00',18,'Cliente GRM','Gramado','Rio Grande do Sul','Brasil',5,'Produto CH','A',10030,'KG',9.00,2,1,'Matriz','Concluído','0'),
(172,'2014-02-01 00:00:00',18,'Cliente GRM','Gramado','Rio Grande do Sul','Brasil',5,'Produto CH','A',10030,'KG',9.00,2,1,'Matriz','Concluído','0'),
(173,'2016-07-05 00:00:00',18,'Cliente GRM','Gramado','Rio Grande do Sul','Brasil',5,'Produto CH','A',10030,'KG',9.00,2,1,'Matriz','Concluído','0'),
(174,'2017-08-11 00:00:00',18,'Cliente GRM','Gramado','Rio Grande do Sul','Brasil',5,'Produto CH','A',10030,'KG',9.00,2,1,'Matriz','Concluído','0'),
(175,'2018-06-25 00:00:00',18,'Cliente GRM','Gramado','Rio Grande do Sul','Brasil',5,'Produto CH','A',10030,'KG',9.00,2,1,'Matriz','Concluído','0'),
(176,'2019-05-28 00:00:00',18,'Cliente GRM','Gramado','Rio Grande do Sul','Brasil',5,'Produto CH','A',20030,'KG',9.00,2,1,'Matriz','Concluído','0'),
(177,'2020-03-30 00:00:00',18,'Cliente GRM','Gramado','Rio Grande do Sul','Brasil',5,'Produto CH','A',20030,'KG',9.00,2,1,'Matriz','Concluído','0'),
(178,'2021-04-01 00:00:00',18,'Cliente GRM','Gramado','Rio Grande do Sul','Brasil',5,'Produto CH','A',20030,'KG',9.00,2,1,'Matriz','Concluído','0'),
(180,'2010-03-15 00:00:00',16,'Cliente PIR','Piripiri','Piauí','Brasil',4,'Produto SL','A',750,'KG',0.50,1,1,'Matriz','Concluído','0'),
(181,'2012-04-30 00:00:00',16,'Cliente PIR','Piripiri','Piauí','Brasil',4,'Produto SL','A',1750,'KG',0.50,1,1,'Matriz','Concluído','0'),
(182,'2013-12-25 00:00:00',16,'Cliente PIR','Piripiri','Piauí','Brasil',4,'Produto SL','A',2750,'KG',0.50,1,1,'Matriz','Cancelado','0'),
(183,'2014-11-21 00:00:00',16,'Cliente PIR','Piripiri','Piauí','Brasil',4,'Produto SL','A',3750,'KG',0.50,1,1,'Matriz','Concluído','0'),
(184,'2015-03-16 00:00:00',16,'Cliente PIR','Piripiri','Piauí','Brasil',4,'Produto SL','A',4750,'KG',0.50,1,1,'Matriz','Concluído','0'),
(185,'2017-03-11 00:00:00',16,'Cliente PIR','Piripiri','Piauí','Brasil',4,'Produto SL','A',6750,'KG',0.50,1,1,'Matriz','Concluído','0'),
(186,'2018-06-05 00:00:00',16,'Cliente PIR','Piripiri','Piauí','Brasil',4,'Produto SL','A',5750,'KG',0.50,1,1,'Matriz','Concluído','0'),
(187,'2019-05-04 00:00:00',16,'Cliente PIR','Piripiri','Piauí','Brasil',4,'Produto SL','A',18750,'KG',0.50,1,1,'Matriz','Concluído','0'),
(188,'2020-07-02 00:00:00',16,'Cliente PIR','Piripiri','Piauí','Brasil',4,'Produto SL','A',19750,'KG',0.50,1,1,'Matriz','Concluído','0'),
(189,'2021-08-01 00:00:00',16,'Cliente PIR','Piripiri','Piauí','Brasil',4,'Produto SL','A',20750,'KG',0.50,1,1,'Matriz','Concluído','0'),
(190,'2021-08-03 00:00:00',16,'Cliente PIR','Piripiri','Piauí','Brasil',4,'Produto SL','A',20750,'KG',0.50,1,2,'Ecommerce','Concluído','0'),
(191,'2021-08-05 00:00:00',16,'Cliente PIR','Piripiri','Piauí','Brasil',4,'Produto SL','A',20750,'KG',0.50,1,2,'Ecommerce','Concluído','0'),
(192,'2021-08-07 00:00:00',16,'Cliente PIR','Piripiri','Piauí','Brasil',4,'Produto SL','A',30750,'KG',0.50,1,2,'Ecommerce','Concluído','0'),
(200,'2021-03-15 00:00:00',17,'Cliente MTG','Palmas','Tocantins','Brasil',6,'Produto TN','C',1750,'KG',0.25,5,2,'Ecommerce','Concluído','0'),
(201,'2021-04-05 00:00:00',17,'Cliente MTG','Palmas','Tocantins','Brasil',6,'Produto TN','C',11750,'KG',0.25,5,2,'Ecommerce','Concluído','0'),
(202,'2021-05-15 00:00:00',17,'Cliente MTG','Palmas','Tocantins','Brasil',6,'Produto TN','C',21750,'KG',0.25,5,2,'Ecommerce','Concluído','0'),
(203,'2021-05-16 00:00:00',17,'Cliente MTG','Palmas','Tocantins','Brasil',6,'Produto TN','C',31750,'KG',0.25,5,2,'Ecommerce','Concluído','0'),
(204,'2021-07-01 00:00:00',17,'Cliente MTG','Palmas','Tocantins','Brasil',6,'Produto TN','C',41750,'KG',0.25,5,2,'Ecommerce','Concluído','0'),
(205,'2021-07-15 00:00:00',17,'Cliente MTG','Palmas','Tocantins','Brasil',6,'Produto TN','C',51750,'KG',0.25,5,2,'Ecommerce','Concluído','0'),
(206,'2021-08-01 00:00:00',17,'Cliente MTG','Palmas','Tocantins','Brasil',6,'Produto TN','C',71750,'KG',0.25,5,2,'Ecommerce','Concluído','0'),
(207,'2021-08-07 00:00:00',17,'Cliente MTG','Palmas','Tocantins','Brasil',6,'Produto TN','C',91750,'KG',0.25,5,2,'Ecommerce','Cancelado','0');

select * from venda;

-- 1. Quantidade de dependentes

select count(*) as quant_depen
from dependente;

-- 2. Quantidade de dependentes por sexo

select count(*) as quant_depen, sexo_depen
from dependente
group by sexo_depen;

-- 3. Quantidade de clientes da região sul

select count(*) as quant_clientes, estado_venda
from venda
where estado_venda in ("Paraná", "Santa Catarina", "Rio Grande do Sul")
group by estado_venda;

-- 4. Uma descrição breve dos produtos da empresa (código, nome, tipo)

select cod_produto, nome_produto, tipo_produto
from venda;

-- 5. Os 5 produtos mais vendidos, em quantidade, de 2021

select nome_produto as produtos_mais_vendidos_2021, sum(quant_produto)
from venda
where year(data_venda) = 2021
group by nome_produto
limit 5;

-- 6. Nome, nome em maiúsculo, nome em minúsculo dos vendedores do sexo feminino

select nome_vended as nome_vendedora, upper(nome_vended) as nome_maiuscula_vendedora, lower(nome_vended) as nome_minusculo_vendedora
from vendedor
where sexo_vended = 1;

-- 7. Nome e idade de todos os dependentes, ordenados do mais velho para o mais novo

select nome_depen, nascimento_depen
from dependente
order by nascimento_depen asc;

-- 8. Somatória do valor total de vendas (concluídas e não deletadas) por estado

select sum(quant_produto) as total_vendas, estado_venda
from venda
group by estado_venda;

-- 9. Somatória de unidades vendidas (concluídas e não deletadas) por produto

select count(unidade_produto) as total_unidades_vendidas, nome_produto
from venda
group by nome_produto;

-- 10. Média do valor total de vendas por estado

select avg(quant_produto) as media_total_vendas, estado_venda
from venda
group by estado_venda;

-- 11. Nome dos clientes que compraram produto 1

select nome_cliente, nome_produto
from venda
where cod_produto = 1;

-- 12. Quantidade mínima e e qual o respectivo produto

select quant_produto, nome_produto
from venda
order by quant_produto asc
limit 1;

-- 13. Descrição detalhada dos produtos da empresa (código, nome, tipo, quantidade)

select cod_produto, nome_produto, tipo_produto, quant_produto
from venda;

-- 14. Nome dos vendedores que realizaram determinadas vendas (código da venda, data da venda, produto e nome do vendedor)

select venda.cod_venda, venda.data_venda, venda.nome_produto, vended.nome_vended
from vendedor vended
right join venda venda
on vended.cod_vended = venda.cod_vended;

-- 15. View com relação com o nome dos vendedores e seus respectivos dependentes (nome e data de nascimento)

create view vw_relacao_vendedor_dependente as
select vended.nome_vended, depen.nome_depen, depen.nascimento_depen
from vendedor vended
right join dependente depen
on vended.cod_vended = depen.cod_vended;

select * from vw_relacao_vendedor_dependente;

-- 16. View com informações de vendas concluídas (produto, estoque, cliente e vendedores)

create view vw_informacoes_vendas_concluidas as
select venda.nome_produto, estoqueProduto.quant_produto as quant_estoque, venda.nome_cliente, vended.nome_vended, status_venda
from venda venda
left join estoqueProduto estoqueProduto
on venda.cod_produto = estoqueProduto.cod_produto
left join vendedor vended
on venda.cod_vended = vended.cod_vended
where status_venda = "Concluído";

select * from vw_informacoes_vendas_concluidas;

-- 17. View de quantidade de vendas por canal

create view vw_quantidades_vendas_por_canal as
select nome_canalVendas, sum(quant_produto)
from venda
group by nome_canalVendas;

select * from vw_quantidades_vendas_por_canal;