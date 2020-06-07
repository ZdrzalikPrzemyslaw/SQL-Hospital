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

--10

SELECT data_rozpoczecia_kadencji, imie, nazwisko from szpital.dbo.ordynatorzy o, szpital.dbo.lekarze l
where l.ID = o.ID_lekarza
and year(o.data_rozpoczecia_kadencji) in 
(
	SELECT TOP 1 date_year as i from 
	(
		select datepart(Year, data_budowy) as 'date_year'
		, count(*) as 'numof'
		from szpital.dbo.budynki
		group by
			datepart(Year, data_budowy)
	) 
	as years
	order by years.numof desc
)

--11
SELECT imie, nazwisko from szpital.dbo.lekarze l
where l.id in 
(
	SELECT TOP 3 id from 
	(
		select id, zarobki 
		from szpital.dbo.lekarze
		group by
			id, zarobki
	)
	as zarobki_lekarzy
	order by zarobki_lekarzy.zarobki desc
)
GO

--12

SELECT imie, nazwisko, zarobki * 12 as roczne_zarobki from szpital.dbo.lekarze;
GO

--13

/*
na pewno mozna ladniej
*/
drop table if exists #tmp_oddzial_zarobki
select oddzial, avg(zarobki) as avg_zarobki into #tmp_oddzial_zarobki
	from szpital.dbo.lekarze 
		group by oddzial
SELECT imie, nazwisko, zarobki, specjalnosc from szpital.dbo.lekarze l, #tmp_oddzial_zarobki o
where l.oddzial = o.oddzial
and l.zarobki < o.avg_zarobki
drop table if exists #tmp_oddzial_zarobki
go