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

select imie, nazwisko, zarobki, specjalnosc from szpital.dbo.lekarze l
where l.zarobki < (select avg(zarobki) from szpital.dbo.lekarze l2 where oddzial = l.oddzial group by oddzial)

--14

select oddzial, count(*) as liczba_lekarzy_o_specjalnosci from szpital.dbo.lekarze l
where l.specjalnosc in
(
	SELECT TOP 1 ID as i from 
	(
		select id, opis_specjalnosci
		from szpital.dbo.specjalnosci
		where opis_specjalnosci = 'Mikrobiologia lekarska'
		group by
			opis_specjalnosci, id
	) 
	as specjalnosci
)
group by oddzial

--15

select nazwisko, o.id, l.zarobki - b.avg_zarobki as roznica_od_sredniej_zarobkow from 
szpital.dbo.ordynatorzy o, szpital.dbo.lekarze l, (select avg(zarobki) as "avg_zarobki" from szpital.dbo.lekarze) b
where o.ID_lekarza = l.ID
GO

--16

select nazwisko from szpital.dbo.lekarze l
where l.zarobki > 3000
and l.zarobki < 9000
GO

--17

select id from szpital.dbo.budynki
where id not in (
	select budynek from szpital.dbo.oddzialy
	where id in
	(
		select oddzial from szpital.dbo.lekarze l
		where l.specjalnosc in
		(
			SELECT TOP 1 ID as i from 
			(
				select id, opis_specjalnosci
				from szpital.dbo.specjalnosci
				where opis_specjalnosci = 'Mikrobiologia lekarska'
				group by
					opis_specjalnosci, id
			) 
			as specjalnosci
		)
		group by oddzial
	)
)

--18

select nazwisko from szpital.dbo.pacjenci p
where p.lekarz_rodzinny in
(
	select ID from szpital.dbo.lekarze l
	where 
	l.imie = 'Witold'
	and l.nazwisko = 'Pietrzak'
	group by id
)
GO

--19
/*
ale cyrk xD
takie spaghetti �e ohoho z�oty
a najlepsze �e nie wiem czy dziala xD
ale mam nadziej� �e dziala
*/

select * from szpital.dbo.wizyty w
where 
(datepart(wk, w.data_wizyty) <= datepart(wk, concat(YEAR(w.data_wizyty),'-05-01')) 
and 
datepart(wk, w.data_zakonczenia_wizyty) >= datepart(wk, concat(YEAR(w.data_wizyty),'-05-01'))
and datepart(month, w.data_zakonczenia_wizyty) >= 5)
or 
(datepart(year, w.data_zakonczenia_wizyty) - datepart(year, w.data_wizyty) > 0 
and
(datepart(wk, w.data_zakonczenia_wizyty) > datepart(wk, concat(YEAR(w.data_wizyty),'-05-01'))))


--20

select p.imie as imie_pacjenta, p.nazwisko as nazwisko_pacjenta,
l.imie as imie_lekarza_rodzinnego, l.nazwisko as nazwisko_lekarza_rodzinnego,
w.zalecenia, w.data_wizyty, w.data_zakonczenia_wizyty
from szpital.dbo.pacjenci p,szpital.dbo.lekarze l, szpital.dbo.rodzinni r, szpital.dbo.wizyty w
where p.plec = 'K'
and p.lekarz_rodzinny = r.ID
and l.ID = r.ID_lekarza
and w.pacjent = p.pesel
and w.data_wizyty < GETDATE()
and (w.data_zakonczenia_wizyty > GETDATE() or w.data_zakonczenia_wizyty is null)

--21

