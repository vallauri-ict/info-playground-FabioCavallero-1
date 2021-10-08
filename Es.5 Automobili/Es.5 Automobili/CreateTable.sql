CREATE TABLE Proprietari(
	CodF int PRIMARY KEY IDENTITY,
	Nome varchar(20),
	Residenza varchar(30)
);
CREATE TABLE Assicurazioni(
	CodAss int PRIMARY KEY IDENTITY,
	Nome varchar(20),
	Sede varchar(30)
);
CREATE TABLE Sinistro(
	CodS int PRIMARY KEY IDENTITY,
	Localita varchar(30),
	DataSinistro date
);
CREATE TABLE Automobili(
	Targa varchar(7) PRIMARY KEY NOT NULL,
	Marca varchar(20),
	Cilindrata int,
	Potenza int,
	CodF int FOREIGN KEY REFERENCES Proprietari(CodF),
	CodAss int FOREIGN KEY REFERENCES Assicurazioni(CodAss)
);
CREATE TABLE AutoCoinvolte(
	CodS int FOREIGN KEY REFERENCES Sinistro(CodS),
	Targa varchar(7) FOREIGN KEY REFERENCES Automobili(Targa),
	ImportoDanno int
);