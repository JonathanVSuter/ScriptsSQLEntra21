CREATE TABLE Clima
(
	Id int IDENTITY(1,1) NOT NULL,
	Descricao_Longa varchar(255) NOT NULL,
	Descricao_Curta varchar(255) NOT NULL,
	TemperaturaMinima float NOT NULL,
	TemperaturaMaxima float NOT NULL,
	Umidade float NOT NULL,
	Data_Clima Date NOT NULL,
	Direcao_Vento varchar(50),
	CONSTRAINT Pk_Clima PRIMARY KEY (Id)
);
