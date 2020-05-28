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

INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(030, 12300, 'Hipertensjologia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(031, 06200, 'Immunologia kliniczna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(032, 03700, 'Intensywna terapia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(033, 06900, 'Kardiochirurgia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(033, 07069, 'Kardiologia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(034, 02300, 'Kardiologia dzieciêca');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(035, 07200, 'Medycyna lotnicza');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(036, 03700, 'Medycyna morska i tropikalna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(037, 06900, 'Medycyna nuklearna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(038, 09000, 'Medycyna paliatywna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(039, 04300, 'Medycyna pracy');

INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(040, 12300, 'Medycyna ratunkowa');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(041, 06200, 'Medycyna rodzinna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(042, 03700, 'Medycyna s¹dowa');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(043, 06900, 'Medycyna sportowa');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(044, 07069, 'Mikrobiologia lekarska');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(045, 02300, 'Nefrologia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(046, 07200, 'Nefrologia dzieciêca');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(047, 03700, 'Neonatologia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(048, 06900, 'Neurochirurgia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(049, 09000, 'Neurologia');

INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(050, 04300, 'Neurologia dzieciêca');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(051, 12300, 'Neuropatologia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(052, 06200, 'Okulistyka');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(053, 03700, 'Onkologia i hematologia dzieciêca');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(054, 06900, 'Onkologia kliniczna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(055, 07069, 'Ortopedia i traumatologia narz¹du ruchu');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(056, 02300, 'Otorynolaryngologia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(057, 07200, 'Otorynolaryngologia dzieciêca');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(058, 03700, 'Patomorfologia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(059, 06900, 'Pediatria');

INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(060, 09000, 'Pediatria metaboliczna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(061, 04300, 'Perinatologia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(062, 12300, 'Po³o¿nictwo i ginekologia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(063, 06200, 'Psychiatria');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(064, 03700, 'Psychiatria dzieci i m³odzie¿y');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(065, 06900, 'Radiologia i diagnostyka obrazowa');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(066, 07069, 'Radioterapia onkologiczna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(067, 02300, 'Rehabilitacja medyczna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(068, 07200, 'Reumatologia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(069, 03700, 'Seksuologia');

INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(070, 06900, 'Toksykologia kliniczna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(071, 09000, 'Transfuzjologia kliniczna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(072, 04300, 'Transplantologia kliniczna');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(073, 12300, 'Urologia');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(074, 06200, 'Urologia dzieciêca');
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(075, 03700, 'Zdrowie publiczne');

GO
/*
SELECT * from szpital.dbo.specjalnosci;
*/