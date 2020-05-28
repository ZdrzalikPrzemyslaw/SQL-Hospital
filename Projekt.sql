DROP DATABASE IF EXISTS szpital;
GO
CREATE DATABASE szpital;
GO
/*
Myœlê, ¿e pacjent mo¿e byc 2 razy w jednym szpitalu wiêc
da³bym mu many to many z tabel¹ w której bêdzie data przyjêcia i data wyjazdu oraz oddzia³
edit: od tego mamy kartê pacjenta z histori¹ jego wizyt :)
*/


CREATE TABLE szpital.dbo.specjalnosci (
	ID INT NOT NULL,
	min_stawka MONEY NOT NULL,

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
	data_ur DATETIME2 NOT NULL,
	plec VARCHAR(1),
	telefon VARCHAR(15),
	specjalnosc INT not null,
	/*
	edit: Zostawiam Tobie tego constrainta
	*/
	zarobki MONEY NOT NULL,
	oddzial INT Not null,
	gabinet INT not null, 
	
	PRIMARY KEY(ID),
	FOREIGN KEY (specjalnosc) REFERENCES szpital.dbo.specjalnosci(ID),
	FOREIGN KEY(gabinet, oddzial) REFERENCES szpital.dbo.gabinety(nr_gabinetu, oddzial)
);

CREATE TABLE szpital.dbo.ordynatorzy (
	ID INT NOT NULL,
	data_rozpoczecia_kadencji DATE NOT NULL,
	data_zakonczenia_kadencji DATE NOT NULL,
	ID_lekarza INT NOT NULL,
	
	PRIMARY KEY(ID),
	FOREIGN KEY (ID_lekarza) REFERENCES szpital.dbo.lekarze(ID)
);

CREATE TABLE szpital.dbo.rodzinni (
	ID INT NOT NULL,
	numer_dyplomu VARCHAR(20) NOT NULL,
	ID_lekarza INT NOT NULL,
	
	PRIMARY KEY(ID),
	FOREIGN KEY (ID_lekarza) REFERENCES szpital.dbo.lekarze(ID)
);

CREATE TABLE szpital.dbo.pacjenci (
	pesel VARCHAR(11) NOT NULL,
	nazwisko VARCHAR(25) NOT NULL,
	imie VARCHAR(25) NOT NULL,
	data_ur DATETIME2 NOT NULL,
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
	data_wizyty DATETIME2 NOT NULL,
	data_zakonczenia_wizyty DATETIME2 NULL,

	CONSTRAINT check_dates CHECK (data_wizyty < data_zakonczenia_wizyty),

	PRIMARY KEY (ID),
	FOREIGN KEY (lekarz) REFERENCES szpital.dbo.lekarze(ID),
)

/*
edit: doda³em kartê
*/
CREATE TABLE szpital.dbo.karta (
	ID INT IDENTITY(1,1) NOT NULL, 
	pacjent VARCHAR(11) NOT NULL,
	id_wizyty INT NOT NULL,

	PRIMARY KEY (ID),
	FOREIGN KEY (pacjent) REFERENCES szpital.dbo.pacjenci(pesel),
	FOREIGN KEY (id_wizyty) REFERENCES szpital.dbo.wizyty(ID),
)

/*
wyposa¿enie oddzia³u, przedmioty, umowy i dostawy:
*/

CREATE TABLE szpital.dbo.dostawcy (
	ID INT NOT NULL,
	nazwa VARCHAR (20) NOT NULL,
	kraj VARCHAR (3) NOT NULL,
	ID_umowy INT NOT NULL,

	PRIMARY KEY (ID),
)

CREATE TABLE szpital.dbo.umowy (
	ID INT NOT NULL,
	data_rozpoczecia DATE NOT NULL,
	data_zakonczenia DATE,
	ID_dostawcy INT NOT NULL,
	wartosc INT NOT NULL,

	PRIMARY KEY (ID),
	FOREIGN KEY (ID_dostawcy) REFERENCES szpital.dbo.dostawcy(ID),
)

CREATE TABLE szpital.dbo.hostoria_transakcji (
	ID_umowy INT NOT NULL,
	status_umowy VARCHAR(10) NOT NULL, 


	/* tutaj mozna jebac constrainta smialo na ten status zeby byl zakonczony/ w trakcie czy co tam pasuje */

	CONSTRAINT status_umowy_possible_values
	CHECK ((status_umowy) in ('rozpoczeta', 'zakonczona', 'w trakcie', 'anulowana')), 
	PRIMARY KEY (ID_umowy),
	FOREIGN KEY (ID_umowy) REFERENCES szpital.dbo.umowy(ID),
)

CREATE TABLE szpital.dbo.przedmioty (
	ID INT NOT NULL,
	nazwa VARCHAR (20) NOT NULL,
	umowa INT NOT NULL,
	cena_jednostkowa INT NOT NULL,

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
)



