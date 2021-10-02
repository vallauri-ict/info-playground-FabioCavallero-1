/*Il codice ed il titolo delle opere di Tiziano, conservate alla "National Gallery"*/
SELECT o.Codice, o.Titolo FROM Opere o WHERE o.NomeArtista='Tiziano' AND o.NomeMuseo='National Gallery'
/*Il nome dell'artista ed il titolo delle opere conservate alla "Galleria degli Uffizi" o alla "National Gallery"*/
SELECT o.NomeArtista, o.Titolo FROM Opere o WHERE o.NomeMuseo='National Gallery' OR o.NomeMuseo='Galleria degli Uffizi'
/*Per ciascun museo di Londra, il numero di opere di artisti italiani ivi conservate*/
SELECT m.NomeMuseo, COUNT(*) AS numeroOpere FROM Artisti a, Opere o, Musei m WHERE a.Nazionalita='IT' AND a.NomeArtista=o.NomeArtista 
AND m.NomeMuseo=o.NomeMuseo AND m.Citta='Londra' GROUP BY m.NomeMuseo
/*Il nome dei musei di Londra, che non conservano opere di Tiziano*/ /* <> -> != */
SELECT DISTINCT m.NomeMuseo FROM Musei m WHERE m.Citta='Londra' AND NOT EXISTS (SELECT * FROM Opere o WHERE o.NomeArtista='Tiziano' 
AND o.NomeMuseo=m.NomeMuseo)
/*Seconda soluzione*/
SELECT * FROM Musei m WHERE m.Citta='Londra' AND 'Tiziano' NOT IN (SELECT o.NomeArtista FROM Opere o WHERE o.NomeMuseo=m.NomeMuseo)
/*Il nome dei musei di Londra, che conservano solo opere di Tiziano*/
SELECT * FROM Musei m WHERE m.Citta='Londra' AND NOT EXISTS (SELECT * FROM Opere o WHERE o.NomeArtista<>'Tiziano' AND o.NomeMuseo=m.NomeMuseo)
/*Seconda soluzione*/
SELECT * FROM Musei m WHERE m.Citta='Londra' AND 'Tiziano' = ALL (SELECT o.NomeArtista FROM Opere o WHERE o.NomeMuseo=m.NomeMuseo)
/*Per ciascun artista, il nome dell'artista ed il numero di sue opere conservate alla Galleria degli Uffizi*/
SELECT a.NomeArtista, COUNT(*) AS numeroOpere FROM Artisti a, Opere o WHERE o.NomeMuseo='Galleria degli Uffizi' 
AND a.NomeArtista=o.NomeArtista GROUP BY a.NomeArtista
/*I musei che conservano almeno 2 opere di artisti italiani*/
SELECT o.NomeMuseo, COUNT(*) as n FROM Opere o, Artisti a WHERE o.NomeArtista=a.NomeArtista AND a.Nazionalita='IT' GROUP BY o.NomeMuseo
HAVING COUNT(*)>1
/*Seconda soluzione*/
SELECT * FROM Musei m WHERE 2<=(SELECT COUNT (*) FROM Opere o, Artisti a WHERE o.NomeArtista=a.NomeArtista AND a.Nazionalita='IT' AND m.NomeMuseo=o.NomeMuseo)
/*Per le opere di artisti italiani che non hanno personaggi. il titolo dell’opera ed il nome dell'artista*/
SELECT a.NomeArtista, o.Titolo FROM Artisti a, Opere o WHERE a.Nazionalita='IT' AND a.NomeArtista=o.NomeArtista AND NOT
EXISTS (SELECT * FROM Personaggi p WHERE p.Codice=o.Codice)
/*Il nome dei musei di Londra che non conservano opere di artisti italiani, eccettuato Tiziano*/
SELECT * FROM Opere o, Musei m WHERE o.NomeMuseo=m.NomeMuseo AND m.Citta='Londra' AND NOT EXISTS(SELECT * FROM Artisti a
WHERE a.NomeArtista=o.NomeArtista AND a.NomeArtista<>'Tiziano' AND a.Nazionalita='IT')
/*Per ogni museo, il numero di opere divise per la nazionalità dell'artista*/
SELECT o.NomeMuseo,a.Nazionalita, COUNT(*) AS numeroOpere FROM Artisti a, Opere o WHERE a.NomeArtista=o.NomeArtista 
GROUP BY o.NomeMuseo,a.Nazionalita ORDER BY o.NomeMuseo
/*Uso dell'UPDATE*/
UPDATE Artisti SET Nazionalita='ES' WHERE NomeArtista='Picasso'