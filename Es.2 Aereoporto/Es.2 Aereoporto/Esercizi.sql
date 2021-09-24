/*Le città da cui partono i voli per Roma, in ordine alfabetico*/
SELECT DISTINCT v.CittaPart FROM Volo v WHERE v.CittaArr='Roma' ORDER BY v.CittaPart
/*Città con aeroporto con numero di piste non noto*/
SELECT a.Città FROM Aeroporto a WHERE a.NumPiste IS NULL
/*Per ogni volo misto(sia merci che passaggeri): codice volo e dati di trasporto*/
SELECT v.IdVolo, a.QtaMerci, a.NumPasseggeri FROM Aereo a, Volo v WHERE a.TipoAereo=v.TipoAereo AND a.QtaMerci>0 AND a.NumPasseggeri>0