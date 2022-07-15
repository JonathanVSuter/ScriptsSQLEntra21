CREATE TABLE ClimaTempo
(
	IdLocal int NOT NULL,
	IdClima int NOT NULL,
	Data_Clima_Tempo Date NOT NULL Default GETDATE(),
	CONSTRAINT Fk_Local FOREIGN KEY (IdLocal)
	REFERENCES Local(Id),
	CONSTRAINT Fk_Clima FOREIGN KEY (IdClima)
	REFERENCES Clima(Id)
);



