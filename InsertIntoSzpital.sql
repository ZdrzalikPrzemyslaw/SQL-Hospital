INSERT INTO szpital.dbo.budynki (ID, data_budowy) VALUES (101, '20120618');
INSERT INTO szpital.dbo.budynki (ID, data_budowy) VALUES (102, '20120912');
INSERT INTO szpital.dbo.budynki (ID, data_budowy) VALUES (201, '20050921');
INSERT INTO szpital.dbo.budynki (ID, data_budowy) VALUES (301, '19740517');
INSERT INTO szpital.dbo.budynki (ID, data_budowy) VALUES (302, '19751003');
GO

INSERT INTO szpital.dbo.oddzialy (ID, budynek, opis_oddzialu) VALUES (1, 101, 'Dermatologiczny');
INSERT INTO szpital.dbo.oddzialy (ID, budynek, opis_oddzialu) VALUES (2, 101, 'Anestezjologii i Intensywnej Terapii');
INSERT INTO szpital.dbo.oddzialy (ID, budynek, opis_oddzialu) VALUES (3, 102, 'Chirurgiczny Ogólny i Chirurgii Onkologicznej');
INSERT INTO szpital.dbo.oddzialy (ID, budynek, opis_oddzialu) VALUES (4, 102, 'Endokrynologiczny');
INSERT INTO szpital.dbo.oddzialy (ID, budynek, opis_oddzialu) VALUES (5, 201, 'Ginekologiczno-Po³o¿niczy');
INSERT INTO szpital.dbo.oddzialy (ID, budynek, opis_oddzialu) VALUES (6, 201, 'Chirurgii Urazowo-Ortopedycznej');
INSERT INTO szpital.dbo.oddzialy (ID, budynek, opis_oddzialu) VALUES (7, 301, 'Chorób Wewnêtrznych');
INSERT INTO szpital.dbo.oddzialy (ID, budynek, opis_oddzialu) VALUES (8, 302, 'Oddzia³ Neonatologiczny');
GO

/*
SELECT * FROM szpital.dbo.oddzialy
SELECT * FROM szpital.dbo.budynki
*/
 
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (101, 1);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (102, 1);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (103, 1);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (104, 1);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (105, 1);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (201, 1);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (202, 1);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (203, 1);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (204, 1);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (205, 1);

INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (101, 2);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (102, 2);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (103, 2);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (104, 2);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (105, 2);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (201, 2);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (202, 2);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (203, 2);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (204, 2);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (205, 2);

INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (101, 3);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (102, 3);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (103, 3);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (104, 3);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (105, 3);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (201, 3);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (202, 3);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (203, 3);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (204, 3);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (205, 3);

INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (101, 4);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (102, 4);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (103, 4);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (104, 4);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (105, 4);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (201, 4);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (202, 4);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (203, 4);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (204, 4);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (205, 4);

INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (101, 5);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (102, 5);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (103, 5);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (104, 5);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (105, 5);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (201, 5);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (202, 5);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (203, 5);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (204, 5);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (205, 5);

INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (101, 6);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (102, 6);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (103, 6);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (104, 6);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (105, 6);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (201, 6);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (202, 6);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (203, 6);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (204, 6);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (205, 6);

INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (101, 7);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (102, 7);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (103, 7);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (104, 7);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (105, 7);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (201, 7);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (202, 7);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (203, 7);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (204, 7);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (205, 7);

INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (101, 8);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (102, 8);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (103, 8);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (104, 8);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (105, 8);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (201, 8);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (202, 8);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (203, 8);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (204, 8);
INSERT INTO szpital.dbo.gabinety (nr_gabinetu, oddzial) VALUES (205, 8);
GO

/*
SELECT * from szpital.dbo.gabinety;
*/

INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(001, 03100, 'Alergologia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(002, 04300, 'Anestezjologia i intensywna terapia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(003, 03900, 'Angiologia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(004, 02500, 'Audiologia i foniatria');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(005, 08900, 'Balneologia i medycyna fizykalna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(006, 07100, 'Chirurgia dzieciêca');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(007, 10500, 'Chirurgia klatki piersiowej');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(008, 14300, 'Chirurgia naczyniowa');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(009, 17200, 'Chirurgia ogólna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(010, 03700, 'Chirurgia onkologiczna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(011, 06900, 'Chirurgia plastyczna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(012, 42069, 'Chirurgia szczêkowo-twarzowa');

INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(013, 02100, 'Choroby p³uc');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(014, 05300, 'Choroby p³uc dzieci');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(015, 03700, 'Choroby wewnêtrzne');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(016, 02100, 'Choroby zakaŸne');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(017, 08200, 'Dermatologia i wenerologia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(018, 05600, 'Diabetologia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(019, 10100, 'Diagnostyka laboratoryjna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(020, 12300, 'Endokrynologia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(021, 06200, 'Endokrynologia ginekologiczna i rozrodczoœæ');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(022, 03700, 'Endokrynologia i diabetologia dzieciêca');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(023, 06900, 'Epidemiologia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(023, 07069, 'Farmakologia kliniczna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(024, 02300, 'Gastroenterologia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(025, 07200, 'Gastroenterologia dzieciêca');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(026, 03700, 'Genetyka kliniczna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(027, 06900, 'Geriatria');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(028, 09000, 'Ginekologia onkologiczna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(029, 04300, 'Hematologia');