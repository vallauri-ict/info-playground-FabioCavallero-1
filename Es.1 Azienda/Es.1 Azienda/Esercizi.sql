/* 1.Selezionare il nome, l'età ed il salario degli impiegati con più di 50 anni */
SELECT nome,eta,salario FROM Impiegato WHERE eta>50; /* ; -> facoltativo */
/* 2.Le informazioni degli acquisti di item=2 */
SELECT * FROM Acquisto WHERE Item=2;
/* 3.Nome,titolo e salario dei programmatori con salario > 1400 */
SELECT nome,titolo,salario FROM Impiegato WHERE salario>1400 AND titolo='Programmatore';
/* 4.Nome di tutti i programmatori ed analisti */
SELECT nome FROM Impiegato WHERE titolo='Programmatore' OR titolo='Analista';
/* 5.Le diverse eta degli impiegati (DISTINCT -> senza ripetizioni) */
SELECT DISTINCT eta FROM Impiegato;
/* 6.Stipendio medio degli impiegati */
SELECT AVG(salario) FROM Impiegato; 
/* 7.Tutti i dati di impiegati ordinati per salario dal maggiore al minore */
SELECT * FROM Impiegato ORDER BY salario DESC; /*DESC -> Dal più grande al più piccolo */
/* 8.Tutti i dati di impiegati ordinati per salario e per età dal maggiore al minore */
SELECT * FROM Impiegato ORDER BY salario DESC, eta DESC;
/* 9.Tutti i dati degli impiegati: Marta, Fabio ed Ivan */
SELECT * FROM Impiegato WHERE nome IN ('Marta','Fabio','Ivan'); /* In -> = ' ' OR*/
/* 10.Tutti i dati degli impiegati tranne: Marta, Fabio ed Ivan */
SELECT * FROM Impiegato WHERE nome NOT IN ('Marta','Fabio','Ivan');
/* 11.Tutti i dati degli impiegati con età compresa tra i 20 e 30 anni */
SELECT * FROM Impiegato WHERE eta BETWEEN 20 and 30; /* Oppure età>=20 AND età <=30 */
/* 12.Per ogni acquisto il nome del cliente ed il prezzo del prodotto */
SELECT * FROM Acquisto a, Cliente c WHERE a.IdCliente=c.IdCliente; 