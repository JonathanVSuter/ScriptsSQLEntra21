CREATE TABLE Local
(
	Id int IDENTITY(1,1) NOT NULL,
	Descricao varchar(255) NOT NULL,
	Latitude float NOT NULL,
	Longitude float NOT NULL,
	CONSTRAINT Pk_Local PRIMARY KEY (Id)
);


