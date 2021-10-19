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

INSERT INTO marca (nomeMarca) values ("bmw"),("audio");


INSERT INTO cliente (nomeCliente,EnderecoCliente) values ("lucas","Hortolandia");
INSERT INTO cliente (nomeCliente,EnderecoCliente) values ("Thiago","Hortolandia");
INSERT INTO cliente (nomeCliente,EnderecoCliente) values ("Acilmar","Hortolandia");
INSERT INTO cliente (nomeCliente,EnderecoCliente) values ("Lucineia","Hortolandia");

INSERT INTO carroo (Modelo,ValorAluguel,RenavamCarro) values ("banco",1000,42523);
INSERT INTO carroo (Modelo,ValorAluguel,RenavamCarro) values ("vermelho",1000,42523);
INSERT INTO carroo (Modelo,ValorAluguel,RenavamCarro) values ("azul",1000,42523);
INSERT INTO carroo (Modelo,ValorAluguel,RenavamCarro) values ("rosa",1000,42523);


create table carroCliente(
idCarroCliente int primary key auto_increment,
fk_marca_idMarca int not null,
fk_carro_idCarro int not null,
fk_cliente_idCliente int not null,
fk_carroCliente_idCarroCliente int not null,
FOREIGN key(fk_Marca_idMarca) REFERENCES marca(idMarca),
FOREIGN key(fk_Cliente_idCliente) REFERENCES cliente(idCliente),
FOREIGN key(fk_carro_idCarro) REFERENCES carro(idCarro),
FOREIGN key(fk_carroCliente_idCarroCliente) REFERENCES carroCliente(idCarroCliente)

);