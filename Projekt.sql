DROP DATABASE IF EXISTS szpital;
GO
CREATE DATABASE szpital;
GO
/*
Myœlê, ¿e pacjent mo¿e byc 2 razy w jednym szpitalu wiêc
da³bym mu many to many z tabel¹ w której bêdzie data przyjêcia i data wyjazdu oraz oddzia³
edit: od tego mamy kartê pacjenta z histori¹ jego wizyt :)
*/


/*
TODO: pododawaj constrainty na liczby które powinny byæ wieksze od 0
np iloœæ czegoœ, zarobki itp.
*/

CREATE TABLE szpital.dbo.specjalnosci (
	ID INT NOT NULL,
	min_stawka MONEY NOT NULL,
	opis_specjalnosci varchar(100),

	PRIMARY KEY (ID)
)

/*
TODO: uzupe³nic budynki, bo w budynku ma byc minimum jeden oddzial
edit: chyba nie trzeba nic uzupe³niaæ jeœli chodzi o budynki. Wystarczy, ¿e oddzia³ jest many-to-one do budynku. 
Doda³em tylko rok budowy dla urozmaicenia
*/
CREATE TABLE szpital.dbo.budynki (
	ID INT NOT NULL,
	PRIMARY KEY (ID),
	data_budowy DATE NOT NULL
)

CREATE TABLE szpital.dbo.oddzialy (
	ID INT NOT NULL,
	budynek INT not null,
	opis_oddzialu varchar(100),
	/*
	Tak mysle co z tym szefem, i narazie nie wiem xD
	edit: Dodaj¹c tutaj szefa duplikujemy informacjê w bazie danych (to info ju¿ jest w innej nowej tabeli). 
	Lepiej zrobiæ ISA
	*/

	PRIMARY KEY(ID),
	FOREIGN KEY (budynek) REFERENCES szpital.dbo.budynki(ID),
)

CREATE TABLE szpital.dbo.gabinety (
	nr_gabinetu INT not null,
	oddzial INT not null,

	FOREIGN KEY (oddzial) REFERENCES szpital.dbo.oddzialy(ID),
	/*
	ja nie jestem pewien czy ten primary key jest git, ale siê nie pluje sql wiec chyba git xdd
	edit: chyba git :P
	*/
	PRIMARY KEY (nr_gabinetu, oddzial)
)

CREATE TABLE szpital.dbo.lekarze (
	ID INT NOT NULL,
	nazwisko VARCHAR(25) NOT NULL,
	imie VARCHAR(25) NOT NULL,
	data_ur DATE NOT NULL,
	plec VARCHAR(1),
	telefon VARCHAR(15),
	specjalnosc INT not null,
	/*
	edit: Zostawiam Tobie tego constrainta
	edit 28.05.2020: Próbowa³em zrobiæ podobny constraint dla tabeli ordynatorów i mi nie zbyt idzie wiec narazie zostawiam
	*/
	zarobki MONEY NOT NULL,
	oddzial INT Not null,
	gabinet INT not null, 
	szef int,
	
	PRIMARY KEY(ID),
	FOREIGN KEY (specjalnosc) REFERENCES szpital.dbo.specjalnosci(ID),
	FOREIGN KEY(gabinet, oddzial) REFERENCES szpital.dbo.gabinety(nr_gabinetu, oddzial),
	foreign key(szef) references szpital.dbo.lekarze(ID),
	UNIQUE(gabinet, oddzial)
);
GO

CREATE OR ALTER FUNCTION dbo.getOddzial(@ID_LEKARZA INT)
RETURNS INT
AS 
BEGIN
	DECLARE @oddzial_ID INT
	SELECT @oddzial_ID = oddzial
	FROM szpital.dbo.lekarze
	where ID = @ID_LEKARZA
	RETURN @oddzial_ID
END

GO


CREATE TABLE szpital.dbo.ordynatorzy (
	ID INT NOT NULL,
	data_rozpoczecia_kadencji DATE NOT NULL,
	data_zakonczenia_kadencji DATE,
	ID_lekarza INT NOT NULL,

	CONSTRAINT check_dates_kadencji CHECK (data_rozpoczecia_kadencji < data_zakonczenia_kadencji or data_zakonczenia_kadencji = NULL),
	
	PRIMARY KEY(ID),
	FOREIGN KEY (ID_lekarza) REFERENCES szpital.dbo.lekarze(ID)
);
GO
/*
Próbujê zrobiæ funckjê sprawdzaj¹c¹ unikalnoœæ oddzialu lekarza, ¿eby nie by³o 2 szefów jednego oddzialu
i tak se mi to idzie xd
*/
CREATE OR ALTER PROCEDURE dbo.checkOddzialUnique(@ID_wyb_lekarza INT)
as 
begin
	select top 1000 * from szpital.dbo.ordynatorzy
	where dbo.getOddzial(ID_lekarza) = dbo.getOddzial(@ID_wyb_lekarza)
end

Go

/*
jakies dziwne to z tym nr dyplomu ¿e to jest tutaj a nie po prostu u lekarzy
*/
CREATE TABLE szpital.dbo.rodzinni (
	ID INT NOT NULL IDENTITY(1,1),
	numer_dyplomu VARCHAR(20) NOT NULL,
	ID_lekarza INT NOT NULL,
	
	PRIMARY KEY(ID),
	FOREIGN KEY (ID_lekarza) REFERENCES szpital.dbo.lekarze(ID)
);

CREATE TABLE szpital.dbo.pacjenci (
	pesel VARCHAR(11) NOT NULL,
	nazwisko VARCHAR(25) NOT NULL,
	imie VARCHAR(25) NOT NULL,
	data_ur DATE NOT NULL,
	plec VARCHAR(1),
	telefon VARCHAR(15),
	/* 
	Nie wiem tego lekarza rodzinnego tbh
	edit: ISA, done
	*/
	lekarz_rodzinny INT NOT NULL,

	CONSTRAINT peselConstraint
	CHECK (pesel like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CONSTRAINT plecConstraint
	CHECK (plec like '[K|M]'),

	PRIMARY KEY(pesel),
	FOREIGN KEY (lekarz_rodzinny) REFERENCES szpital.dbo.rodzinni(ID)
);

CREATE TABLE szpital.dbo.wizyty (
	ID INT IDENTITY(1,1) NOT NULL, 
	lekarz INT NOT NULL,
	zalecenia VARCHAR(100),
	/*
	czy powinno byc ograniczenie ze to musi byc w czasie kiedy pacjent jest w szpitalu?
	edit: doda³em datê zakoñczenia i zalecenia
	*/
	pacjent VARCHAR(11) NOT NULL,
	data_wizyty DATETIME2 NOT NULL,
	data_zakonczenia_wizyty DATETIME2 NULL,

	CONSTRAINT check_dates CHECK (data_wizyty < data_zakonczenia_wizyty),

	PRIMARY KEY (ID),
	FOREIGN KEY (lekarz) REFERENCES szpital.dbo.lekarze(ID),
	FOREIGN KEY (pacjent) REFERENCES szpital.dbo.pacjenci(pesel),
)

/*
edit: doda³em kartê
*/


/*
EDIT: robiê to i stwierdzam ¿e karta nic nie daje, równie dobrze mo¿emy mieæ w wizycie ID pacjenta
CREATE TABLE szpital.dbo.karta (
	ID INT IDENTITY(1,1) NOT NULL, 
	pacjent VARCHAR(11) NOT NULL,
	id_wizyty INT NOT NULL,

	PRIMARY KEY (ID),
	FOREIGN KEY (pacjent) REFERENCES szpital.dbo.pacjenci(pesel),
	FOREIGN KEY (id_wizyty) REFERENCES szpital.dbo.wizyty(ID),
)
*/

/*
wyposa¿enie oddzia³u, przedmioty, umowy i dostawy:
*/

/*
co to tak wgl ma byc wartosc tutaj? ¯e suma wartosci przedmiotów w umowie?
*/

CREATE TABLE szpital.dbo.umowy (
	ID INT NOT NULL,
	data_rozpoczecia DATE NOT NULL,
	data_zakonczenia DATE,

	PRIMARY KEY (ID),
)

/* 
TODO: Rozbi³ bym powi¹zanie dostawców i umów na many to many tak mysle
*/

CREATE TABLE szpital.dbo.dostawcy (
	ID INT NOT NULL,
	umowa INT NOT NULL,
	nazwa VARCHAR (20) NOT NULL,
	kraj VARCHAR (3) NOT NULL,

	PRIMARY KEY (ID),
	FOREIGN KEY (umowa) REFERENCES szpital.dbo.umowy(ID),
)


CREATE TABLE szpital.dbo.historia_transakcji (
	ID_umowy INT NOT NULL,
	status_umowy VARCHAR(10) NOT NULL, 


	/* tutaj mozna jebac constrainta smialo na ten status zeby byl zakonczony/ w trakcie czy co tam pasuje */

	CONSTRAINT status_umowy_possible_values
	CHECK ((status_umowy) in ('rozpoczeta', 'zakonczona', 'w trakcie', 'anulowana')), 
	PRIMARY KEY (ID_umowy),
	FOREIGN KEY (ID_umowy) REFERENCES szpital.dbo.umowy(ID),
)

CREATE TABLE szpital.dbo.przedmioty (
	ID INT NOT NULL IDENTITY(10001, 1),
	nazwa VARCHAR (100) NOT NULL,
	umowa INT NOT NULL,
	cena_jednostkowa MONEY NOT NULL,

	PRIMARY KEY (ID),
	FOREIGN KEY (umowa) REFERENCES szpital.dbo.umowy(ID),
)

CREATE TABLE szpital.dbo.wyposazenie (
	ID_oddzialu INT NOT NULL, 
	ID_przedmiotu INT NOT NULL,
	liczba INT NOT NULL,

	PRIMARY KEY (ID_oddzialu, ID_przedmiotu),
	FOREIGN KEY (ID_oddzialu) REFERENCES szpital.dbo.oddzialy(ID),
	FOREIGN KEY (ID_przedmiotu) REFERENCES szpital.dbo.przedmioty(ID),
	CONSTRAINT liczba_wieksza_od_0
	CHECK (liczba > 0),
)



