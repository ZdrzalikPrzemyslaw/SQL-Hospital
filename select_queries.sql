--1
SELECT nazwisko, ID, data_ur FROM szpital.dbo.lekarze
WHERE nazwisko = 'Zdrzalik' OR nazwisko = 'Dudkiewicz'
ORDER BY data_ur ASC;

--2 
SELECT szpital.dbo.lekarze.nazwisko, data_rozpoczecia_kadencji,
DATEADD(WEEK, DATEDIFF(WEEK, 0, DATEADD(MONTH, 6, data_rozpoczecia_kadencji)), 0) AS kiedy 
FROM szpital.dbo.ordynatorzy
INNER JOIN szpital.dbo.lekarze ON szpital.dbo.ordynatorzy.ID_lekarza=szpital.dbo.lekarze.ID;

--3
SELECT nazwisko, specjalnosc, oddzial FROM szpital.dbo.lekarze
WHERE oddzial IN 
(SELECT szpital.dbo.oddzialy.ID FROM szpital.dbo.oddzialy 
WHERE szpital.dbo.oddzialy.budynek = 
(SELECT TOP 1 szpital.dbo.budynki.ID FROM szpital.dbo.budynki ORDER BY data_budowy ASC));
