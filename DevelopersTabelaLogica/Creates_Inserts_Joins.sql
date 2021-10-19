
create table Professor (
	Nome varchar(50),
    CPF int PRIMARY KEY,
    idade int
);

create table Aluno (
	Nome varchar(50),
    Idade int,
    ID_Aluno int PRIMARY KEY AUTO_INCREMENT,
    Nome_do_Responsavel varchar(50),
    
    fk_Professor_CPF int,
    
    FOREIGN KEY (fk_Professor_CPF) REFERENCES Professor(CPF)
);

create table Disciplina (
	Nome_da_disciplina varchar(50),
    ID_disciplina int PRIMARY KEY AUTO_INCREMENT
);

create table Frequenta(
	fk_Aluno_ID_Aluno int,
    fk_Disciplina_ID_Disciplina int,
    
    FOREIGN KEY (fk_Aluno_ID_Aluno) REFERENCES Aluno(ID_Aluno),
    FOREIGN KEY (fk_Disciplina_ID_Disciplina) REFERENCES Disciplina(ID_disciplina)
);

INSERT INTO Professor(Nome, CPF, idade) VALUES ("Alciomar", 11111, 26);
INSERT INTO Professor(Nome, CPF, idade) VALUES ("Ackley Will", 22222, 43);
INSERT INTO Professor(Nome, CPF, idade) VALUES ("André", 33333, 45);

INSERT INTO Aluno(Nome, Idade, Nome_do_Responsavel) VALUES ("Guilherme", 19, "Gisele", 33333);
INSERT INTO Aluno(Nome, Idade, Nome_do_Responsavel) VALUES ("Tiago", 28, "Ana", 22222);
INSERT INTO Aluno(Nome, Idade, Nome_do_Responsavel) VALUES ("Lucas", 27, "Neuza", 11111);

INSERT INTO Disciplina(Nome_da_disciplina) VALUES ("Geografia");
INSERT INTO Disciplina(Nome_da_disciplina) VALUES ("História");
INSERT INTO Disciplina(Nome_da_disciplina) VALUES ("Matemática");

INSERT INTO Frequenta(fk_Aluno_ID_Aluno, fk_Disciplina_ID_Disciplina) VALUES (1, 2);
INSERT INTO Frequenta(fk_Aluno_ID_Aluno, fk_Disciplina_ID_Disciplina) VALUES (2, 3);
INSERT INTO Frequenta(fk_Aluno_ID_Aluno, fk_Disciplina_ID_Disciplina) VALUES (3, 1);

select a.ID_Aluno, a.Nome, p.Nome as "Nome Professor", p.CPF as "CPF Professor" from aluno a inner join professor p where a.fk_Professor_CPF = p.CPF and p.Nome = 'André';
select a.Nome as "Nome Aluno", d.Nome_da_disciplina as "Nome Disciplina" from aluno a inner join frequenta f on a.ID_Aluno = f.fk_Aluno_ID_Aluno inner join disciplina d on f.fk_Disciplina_ID_Disciplina where d.ID_disciplina = 1;