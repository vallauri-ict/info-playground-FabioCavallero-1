INSERT INTO Automobili(Targa,Marca,Cilindrata,Potenza,CodF,CodAss) VALUES 
('EG924XL','Ford',1600,115,1,1);
INSERT INTO Automobili(Targa,Marca,Cilindrata,Potenza,CodF,CodAss) VALUES 
('FF199RF','Fiat',1100,95,1,2);
INSERT INTO Automobili(Targa,Marca,Cilindrata,Potenza,CodF,CodAss) VALUES 
('BS340JF','Renault',1200,60,2,2);
INSERT INTO Automobili(Targa,Marca,Cilindrata,Potenza,CodF,CodAss) VALUES 
('ZK003GC','Fiat',1100,60,3,3);
INSERT INTO Proprietari(Nome,Residenza) VALUES ('Renato Cavallero', 'Asti');
INSERT INTO Proprietari(Nome,Residenza) VALUES ('Maria Morra', 'Bra');
INSERT INTO Proprietari(Nome,Residenza) VALUES ('Teresa Morra', 'Bra');
INSERT INTO Assicurazioni(Nome,Sede) VALUES ('Allianz', 'Bra');
INSERT INTO Assicurazioni(Nome,Sede) VALUES ('CazziTua', 'Torino');
INSERT INTO Assicurazioni(Nome,Sede) VALUES ('Ahia', 'Asti');
INSERT INTO Sinistro(Localita,DataSinistro) VALUES ('Cuneo','5/05/2002');
INSERT INTO Sinistro(Localita,DataSinistro) VALUES ('Loano','11/05/2001');
INSERT INTO Sinistro(Localita,DataSinistro) VALUES ('Rimini','11/09/2001');
INSERT INTO AutoCoinvolte(CodS,Targa,ImportoDanno) VALUES ('4','ZK003GC',500);
INSERT INTO AutoCoinvolte(CodS,Targa,ImportoDanno) VALUES ('7','EG924XL',200);
INSERT INTO AutoCoinvolte(CodS,Targa,ImportoDanno) VALUES ('5','BS340JF',300);
INSERT INTO AutoCoinvolte(CodS,Targa,ImportoDanno) VALUES ('6','EG924XL',1000);