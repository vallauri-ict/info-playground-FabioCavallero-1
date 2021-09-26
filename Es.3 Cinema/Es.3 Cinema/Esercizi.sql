/*Film Fellini prodotti dopo il 1960*/
SELECT Titolo FROM Film WHERE Regista='Fellini' AND AnnoProduzione>1960
/*Il titolo e la durata dei film di fantascienza giapponesi o francesi, prodotti dopo il 1990*/
SELECT * FROM Film f WHERE f.Genere='Fantascienza' AND (f.Nazionalita='JP' OR f.Nazionalita='FR') AND f.AnnoProduzione>1990
/*Il titolo del film di fantascienza giapponesi, prodotti dopo il 1990, oppure francesi*/
SELECT Titolo FROM Film f WHERE f.Genere='Fantascienza' AND ((f.Nazionalita='JP' AND f.AnnoProduzione>1990) OR (f.Nazionalita='FR'))
/*Il titolo dei film dello stesso regista di "Casablanca"*/
SELECT * FROM Film f WHERE f.Regista=(SELECT f1.Regista FROM Film f1 WHERE f1.Titolo='Casablanca')
/*Il titolo ed il genere dei film proiettati il giorno di Natale 2004*/
SELECT DISTINCT f.Titolo, f.Genere FROM Film f, Proiezioni p WHERE f.CodFilm=p.CodFilm AND p.DataProiezione='20041225'
/*Il titolo ed il genere dei film proiettati a Napoli il giorno di Natale 2004*/
SELECT f.Titolo, f.Genere FROM Film f, Proiezioni p, Sale s WHERE f.CodFilm=p.CodFilm AND p.CodSala=s.CodSala  AND p.DataProiezione='20041225' 
AND s.Citta='Napoli'
/*I nomi delle sale di Napoli in cui il giorno di Natale 2004 è stato proiettato un film con R.Williams*/
SELECT DISTINCT s.Nome FROM Proiezioni p, Sale s, Attori a, Recita r WHERE r.CodFilm=p.CodFilm AND p.CodSala=s.CodSala AND r.CodFilm=p.CodFilm 
AND p.DataProiezione='20041225' AND s.Citta='Napoli' AND a.Nome='R.Williams'
/*Il titolo dei film in cui recita M.Mastroianni oppure S.Loren*/
SELECT f.Titolo FROM Film f, Attori a, Recita r WHERE a.CodAttore=r.CodAttore AND f.CodFilm=r.CodFilm AND a.Nome='M.Mastroianni' OR a.Nome='S.Loren'
/*Il titolo dei film in cui recitano M. Mastroianni e S.Loren*/
/*Prima soluzione*/
SELECT f.Titolo FROM Film f, Attori a, Recita r WHERE a.CodAttore=r.CodAttore AND f.CodFilm=r.CodFilm AND f.CodFilm IN (SELECT f.CodFilm FROM Film f,
Attori a, Recita r WHERE a.CodAttore=r.CodAttore AND f.CodFilm=r.CodFilm AND a.Nome='M.Mastroianni') AND a.nome='S.Loren'
/*Seconda soluzione*/
SELECT f.Titolo FROM Film f, Attori a, Recita r, Recita r2, Attori a2 WHERE a.CodAttore=r.CodAttore AND f.CodFilm=r.CodFilm AND a.Nome='M.Mastroianni' 
AND f.CodFilm=r2.CodFilm AND r2.CodAttore=a2.CodAttore AND a.Nome='S.Loren'
/*Terza soluzione*/
SELECT f.Titolo FROM Film f WHERE 'Mastroianni' IN (SELECT a.Nome FROM Attori a, Recita r WHERE r.CodAttore=a.CodAttore AND r.CodFilm=f.CodFilm) 
AND 'Loren' IN (SELECT a.Nome FROM Attori a, Recita r WHERE r.CodAttore=a.CodAttore AND r.CodFilm=f.CodFilm)
/*Per ogni film in cui recita un attore francese, il titolo del film e il nome dell’attore*/
SELECT f.Titolo, a.Nome FROM Film f, Attori a WHERE a.Nazionalita='FR'
/*Per ogni film che è stato proiettato a Pisa nel gennaio 2005, il titolo del film e il nome della sala.*/
SELECT f.Titolo, s.Nome FROM Film f, Sale s, Proiezioni p WHERE f.CodFilm=p.CodFilm AND p.CodSala=s.CodSala AND s.Citta='Pisa' AND p.DataProiezione BETWEEN '20050101' AND '20050131'
/*Il numero di sale di Pisa con più di 60 posti*/
SELECT * FROM Sale WHERE Citta='Pisa' AND Posti>60