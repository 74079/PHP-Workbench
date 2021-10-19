create table cliente(
IdCliente Int primary key auto_increment,
nomeCliente varchar(50) not null,
EnderecoCliente varchar(50) not null
);

Create table Carro (
idModelo int  primary key auto_increment,
Modelo varchar(50) not null,
ValorAluguel varchar (50) not null,
RenavamCarro varchar(50) not null
);

create table marca(
idMarca int   primary key auto_increment,
NomeMarca varchar(50) not null
);

INSERT INTO carro (nomeMarca) values ("bmw"),("audio");


INSERT INTO cliente (nomeCliente,EnderecoCliente) values ("lucas","Hortolandia");
INSERT INTO cliente (nomeCliente,EnderecoCliente) values ("Thiago","Hortolandia");

