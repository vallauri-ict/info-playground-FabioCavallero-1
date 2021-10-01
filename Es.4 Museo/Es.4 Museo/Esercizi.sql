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