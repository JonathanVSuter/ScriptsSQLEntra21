--Criando tabela pessoa
CREATE TABLE Pessoa
(
	Id int IDENTITY(1,1) NOT NULL,
	Nome varchar(255) NOT NULL,
	Cpf varchar(11) NOT NULL,
	CONSTRAINT Pk_Pessoa PRIMARY KEY (Id)
);

--Criando a tabela telefone
CREATE TABLE Telefone 
(
	Id int IDENTITY(1,1) NOT NULL,
	DDD varchar(5) NOT NULL,
	Numero varchar(20) NOT NULL,
	IdPessoa int NOT NULL,
	CONSTRAINT Pk_Telefone PRIMARY KEY (Id),
	CONSTRAINT FK_Id_Pessoa FOREIGN KEY (IdPessoa)
	REFERENCES Pessoa(Id)
);










