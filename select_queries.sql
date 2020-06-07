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

--4
SELECT l.nazwisko AS lekarz, l.oddzial, r.nazwisko AS kolega
FROM szpital.dbo.lekarze l, szpital.dbo.lekarze r
WHERE l.oddzial = r.oddzial
	AND l.ID != r.ID
ORDER BY l.oddzial, l.nazwisko, r.nazwisko;

--5
SELECT nazwisko FROM szpital.dbo.lekarze
WHERE oddzial = 
(SELECT oddzial FROM szpital.dbo.lekarze 
WHERE ID = 
(SELECT ID_lekarza FROM szpital.dbo.ordynatorzy
WHERE ID_lekarza IN 
(SELECT ID FROM szpital.dbo.lekarze WHERE nazwisko = 'Dudkiewicz'))) AND nazwisko != 'Dudkiewicz';

--6
SELECT imie, nazwisko, zarobki FROM szpital.dbo.lekarze
WHERE telefon IS NOT NULL;

--7
SELECT imie + ' ' + nazwisko AS lekarze FROM szpital.dbo.lekarze
WHERE nazwisko LIKE '__a%';

--8
SELECT imie, nazwisko, oddzial, specjalnosc 
FROM szpital.dbo.lekarze
WHERE oddzial IN 
(SELECT ID FROM szpital.dbo.oddzialy WHERE budynek = '101');

--9
SELECT oddzial, 
(SELECT MIN(zarobki) FROM szpital.dbo.lekarze l
WHERE l.oddzial = r.oddzial) AS najnizsza_pensja
FROM szpital.dbo.lekarze r
WHERE r.oddzial = 
(SELECT TOP 1 oddzial FROM szpital.dbo.lekarze
GROUP BY oddzial
ORDER BY AVG(zarobki) DESC);