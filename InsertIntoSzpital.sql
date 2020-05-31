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
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(022, 06900, 'Epidemiologia');
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
INSERT INTO szpital.dbo.specjalnosci (ID, min_stawka, opis_specjalnosci) VALUES(034, 07069, 'Kardiologia');
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

INSERT INTO szpital.dbo.lekarze (ID, nazwisko, imie, data_ur, plec, telefon, specjalnosc, zarobki, oddzial, gabinet) Values(001, 'Kowalski', 'Janusz', '19480521', 'M', '+4842621233789', 13, 12876, 8, 203);
INSERT INTO szpital.dbo.lekarze (ID, nazwisko, imie, data_ur, plec, telefon, specjalnosc, zarobki, oddzial, gabinet) Values(002, 'Kowalska', 'Wies³awa', '19510101', 'K', '+4842122239591', 17, 9782, 8, 204);
INSERT INTO szpital.dbo.lekarze (ID, nazwisko, imie, data_ur, plec, telefon, specjalnosc, zarobki, oddzial, gabinet) Values(003, 'Zdrzalik', 'Przemys³aw', '19990721', 'M', '+48665074716', 21, 8650, 8, 205);
INSERT INTO szpital.dbo.lekarze (ID, nazwisko, imie, data_ur, plec, telefon, specjalnosc, zarobki, oddzial, gabinet) Values(004, 'Dudkiewicz', 'Micha³', '19950613', 'M', '+4842664271216', 01, 9250, 7, 202);
INSERT INTO szpital.dbo.lekarze (ID, nazwisko, imie, data_ur, plec, telefon, specjalnosc, zarobki, oddzial, gabinet) Values(005, 'Domañski', 'Karol', '19910208', 'M', '+4842621312456', 54, 7150, 6, 101);
INSERT INTO szpital.dbo.lekarze (ID, nazwisko, imie, data_ur, plec, telefon, specjalnosc, zarobki, oddzial, gabinet) Values(006, 'Pietrzak', 'Witold', '19990429', 'M', '+4842628317123', 69, 12150, 5, 104);
INSERT INTO szpital.dbo.lekarze (ID, nazwisko, imie, data_ur, plec, telefon, specjalnosc, zarobki, oddzial, gabinet) Values(007, 'Wilczyñski', 'Kamil', '19991122', 'M', '+4842631279377', 74, 11111, 4, 205);
INSERT INTO szpital.dbo.lekarze (ID, nazwisko, imie, data_ur, plec, telefon, specjalnosc, zarobki, oddzial, gabinet) Values(008, 'Zo³¹dkowa', 'Izabela', '19990309', 'K', '+4842539128983', 32, 22222, 3, 202);
INSERT INTO szpital.dbo.lekarze (ID, nazwisko, imie, data_ur, plec, telefon, specjalnosc, zarobki, oddzial, gabinet) Values(009, 'Kwiatkowski', 'Kamil', '19990729', 'M', '+4842321357890', 69, 69420, 2, 202);
INSERT INTO szpital.dbo.lekarze (ID, nazwisko, imie, data_ur, plec, telefon, specjalnosc, zarobki, oddzial, gabinet) Values(010, 'Banaszkiewicz', 'Dawid', '19990204', 'M', '+4842123512345', 12, 21200, 1, 201);
INSERT INTO szpital.dbo.lekarze (ID, nazwisko, imie, data_ur, plec, telefon, specjalnosc, zarobki, oddzial, gabinet) Values(011, 'Ró¿añska', 'Natalia', '20010124', 'K', '+4822852908704', 7, 12677, 1, 202);
INSERT INTO szpital.dbo.lekarze (ID, nazwisko, imie, data_ur, plec, telefon, specjalnosc, zarobki, oddzial, gabinet) Values(012, 'Sobczyk', 'Bartosz', '19990814', 'M', '+4842123881299', 44, 44444, 1, 205);
INSERT INTO szpital.dbo.lekarze (ID, nazwisko, imie, data_ur, plec, telefon, specjalnosc, zarobki, oddzial, gabinet) Values(013, 'Stefañski', 'Krystian', '19990218', 'M', '+4842312356870', 32, 17850, 5, 101);
INSERT INTO szpital.dbo.lekarze (ID, nazwisko, imie, data_ur, plec, telefon, specjalnosc, zarobki, oddzial, gabinet) Values(014, 'Kocañda', 'Adrian', '19921014', 'M', '+4842123456789', 56, 12012, 7, 103);
INSERT INTO szpital.dbo.lekarze (ID, nazwisko, imie, data_ur, plec, telefon, specjalnosc, zarobki, oddzial, gabinet) Values(015, 'Marczyk', 'Aleksandra', '19990212', 'K', '+4842807795120', 42, 14567, 5, 102);
INSERT INTO szpital.dbo.lekarze (ID, nazwisko, imie, data_ur, plec, telefon, specjalnosc, zarobki, oddzial, gabinet) Values(016, 'Zawiœlak', 'Ma³gorzata', '20000414', 'K', '+4842312598027', 20, 21370, 3, 104);
INSERT INTO szpital.dbo.lekarze (ID, nazwisko, imie, data_ur, plec, telefon, specjalnosc, zarobki, oddzial, gabinet) Values(017, 'Szymañska', 'Julia', '19990508', 'K', '+4842380167923', 59, 38071, 8, 105);
GO
/*
TOOD:
Pododawaj jeszcze jakiœ lekarzy bo ja ju¿ nie mam pomys³u kogo by daæ a tak z g³owy nie istniej¹cych ludzi mi siê nie chce wymyœlaæ
*/

/*
SELECT * from szpital.dbo.lekarze;
*/

INSERT INTO szpital.dbo.ordynatorzy(ID, data_rozpoczecia_kadencji, ID_lekarza) VALUES(001, '20180304', 011);
INSERT INTO szpital.dbo.ordynatorzy(ID, data_rozpoczecia_kadencji, ID_lekarza) VALUES(002, '20200101', 009);
INSERT INTO szpital.dbo.ordynatorzy(ID, data_rozpoczecia_kadencji, ID_lekarza) VALUES(003, '20190913', 008);
INSERT INTO szpital.dbo.ordynatorzy(ID, data_rozpoczecia_kadencji, ID_lekarza) VALUES(004, '20131211', 007);
INSERT INTO szpital.dbo.ordynatorzy(ID, data_rozpoczecia_kadencji, ID_lekarza) VALUES(005, '20160531', 015);
INSERT INTO szpital.dbo.ordynatorzy(ID, data_rozpoczecia_kadencji, ID_lekarza) VALUES(006, '20170912', 005);
INSERT INTO szpital.dbo.ordynatorzy(ID, data_rozpoczecia_kadencji, ID_lekarza) VALUES(007, '20180304', 004);
INSERT INTO szpital.dbo.ordynatorzy(ID, data_rozpoczecia_kadencji, ID_lekarza) VALUES(008, '20200203', 003);
GO
/*
SELECT * from szpital.dbo.ordynatorzy;
*/

/*
Jesli zmienimi miejsce nr dyplomu to po prostu przeniesc do odpowiednich lekarzy
*/
INSERT INTO szpital.dbo.rodzinni(numer_dyplomu, ID_lekarza) VALUES('1110/163/96', 017);
INSERT INTO szpital.dbo.rodzinni(numer_dyplomu, ID_lekarza) VALUES('L16318/33324/98', 014);
INSERT INTO szpital.dbo.rodzinni(numer_dyplomu, ID_lekarza) VALUES('2043/SZ/UM/2000', 011);
INSERT INTO szpital.dbo.rodzinni(numer_dyplomu, ID_lekarza) VALUES('4/728/2012', 003);
INSERT INTO szpital.dbo.rodzinni(numer_dyplomu, ID_lekarza) VALUES('15/2009/V', 006);
INSERT INTO szpital.dbo.rodzinni(numer_dyplomu, ID_lekarza) VALUES('1546278', 009);
GO
/*
SELECT * FROM szpital.dbo.lekarze WHERE ID IN
	(SELECT ID_lekarza FROM szpital.dbo.rodzinni)
*/

/* 
mamy wiecej lekarzy ni¿ pacjentów xD
Ale juz taaak mi siê nie chce ich dodawac
*/

INSERT INTO szpital.dbo.pacjenci(pesel, nazwisko, imie, data_ur, plec, telefon, lekarz_rodzinny) VALUES ('35102312345', 'Franke', 'Egon', '19351023', 'M', '+4842123456789', 001);
INSERT INTO szpital.dbo.pacjenci(pesel, nazwisko, imie, data_ur, plec, telefon, lekarz_rodzinny) VALUES ('41060454321', 'Magnan', 'Jean-Claide', '19410604', 'M', '+4842987654321', 002);
INSERT INTO szpital.dbo.pacjenci(pesel, nazwisko, imie, data_ur, plec, telefon, lekarz_rodzinny) VALUES ('42120598765', 'Revenu', 'Daniel', '19421205', 'M', '+4842789654321', 003);
INSERT INTO szpital.dbo.pacjenci(pesel, nazwisko, imie, data_ur, plec, telefon, lekarz_rodzinny) VALUES ('38012723457', '¯danowicz', 'Wiktor', '19380127', 'M', '+4842789634521', 004);
INSERT INTO szpital.dbo.pacjenci(pesel, nazwisko, imie, data_ur, plec, telefon, lekarz_rodzinny) VALUES ('37051567890', 'Sisikin', 'Jurij', '19370515', 'M', '+4842789634125', 005);
INSERT INTO szpital.dbo.pacjenci(pesel, nazwisko, imie, data_ur, plec, telefon, lekarz_rodzinny) VALUES ('40122409876', 'Kriss', 'Grigorij', '19401224', 'M', '+4842098123456', 006);
INSERT INTO szpital.dbo.pacjenci(pesel, nazwisko, imie, data_ur, plec, telefon, lekarz_rodzinny) VALUES ('31031906543', 'Hoskyns', 'Bill', '19310319', 'M', '+4842987456123', 001);
INSERT INTO szpital.dbo.pacjenci(pesel, nazwisko, imie, data_ur, plec, telefon, lekarz_rodzinny) VALUES ('35111501293', 'Pézsa', 'Tibor', '19351115', 'M', '+4842765312435', 002);
INSERT INTO szpital.dbo.pacjenci(pesel, nazwisko, imie, data_ur, plec, telefon, lekarz_rodzinny) VALUES ('37092467584', 'Mawlichanow', 'Umar', '19370724', 'M', '+4842192837465', 003);
INSERT INTO szpital.dbo.pacjenci(pesel, nazwisko, imie, data_ur, plec, telefon, lekarz_rodzinny) VALUES ('40060619283', 'Ragno-Lonzi', 'Antonella', '19400606', 'K', '+48420908765432', 004);
INSERT INTO szpital.dbo.pacjenci(pesel, nazwisko, imie, data_ur, plec, telefon, lekarz_rodzinny) VALUES ('99072106392', 'Zdrzalik', 'Przemys³aw', '19990721', 'M', '+48665074716', 005);
INSERT INTO szpital.dbo.pacjenci(pesel, nazwisko, imie, data_ur, plec, telefon, lekarz_rodzinny) VALUES ('38120598236', 'Schmid', 'Heidi', '19381205', 'K', '+4822192837465', 006);
GO
/*
SELECT * FROM szpital.dbo.pacjenci;
*/

INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (003, '99072106392', '2007-05-08 12:35', '2007-05-18 13:00', null);
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (003, '99072106392', '2012-03-11 11:11', '2012-03-27 12:12', 'Nie choruj ju¿ bo nie chce ¿ebyœ tutaj 3 raz trafi³');
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (003, '99072106392', '2020-05-11 20:00', null, 'Covid :(');
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (001, '35102312345', '2012-11-12 19:45', '2012-11-30 21:37', 'Zgon w szpitalu :={');
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (002, '41060454321', '2017-10-31 10:00', '2018-01-12 13:45', null);
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (004, '42120598765', '2019-10-31 10:00', '2019-11-02 12:12', 'Kto przychodzi do szpitala z katarkiem');
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (017, '99072106392', '2020-03-01 08:00', '2020-05-27 23:35', 'Chory na kompo');
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (005, '38012723457', '2012-06-23 14:00', '2012-06-27 14:35', null);
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (006, '37051567890', '2015-03-12 15:00', '2015-03-27 12:20', null);
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (007, '40122409876', '2018-03-10 10:00', '2018-03-27 12:20', null);
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (008, '31031906543', '2014-01-01 08:00', '2015-01-01 09:20', 'Rok, godzina i 20 min w szpitalu, szok');
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (009, '35111501293', '2012-09-09 08:00', '2012-09-12 16:15', null);
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (010, '38120598236', '2016-10-05 12:00', '2016-10-05 12:40', 'Wizyta kontrolna');
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (010, '38120598236', '2017-10-05 12:00', '2017-10-05 12:40', 'Wizyta kontrolna');
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (011, '38120598236', '2018-10-05 11:00', '2018-10-05 11:35', 'Wizyta kontrolna');
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (012, '38120598236', '2019-10-05 14:00', '2019-10-05 14:55', 'Wizyta kontrolna');
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (013, '38120598236', '2020-10-05 12:00', '2020-10-05 12:35', 'Wizyta kontrolna');
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (005, '99072106392', '2020-03-01 08:00', '2020-04-28 16:30', 'Chory na Tele');
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (014, '37092467584', '2019-10-12 09:00', '2019-11-03 09:09', null);
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (015, '37092467584', '2017-06-17 12:00', '2017-07-03 12:12', null);
INSERT INTO szpital.dbo.wizyty(lekarz, pacjent, data_wizyty, data_zakonczenia_wizyty, zalecenia) VALUES (015, '37092467584', '2018-08-23 15:00', '2018-09-28 13:00', null);
GO
/*
SELECT * FROM szpital.dbo.wizyty;
*/

/* 
TODO: Rozbi³ bym powi¹zanie dostawców i umów na many to many tak mysle
*/

INSERT INTO szpital.dbo.umowy(ID, data_rozpoczecia, data_zakonczenia, wartosc) VALUES(1001, '2013-07-21', null, 100000);
INSERT INTO szpital.dbo.umowy(ID, data_rozpoczecia, data_zakonczenia, wartosc) VALUES(1002, '2011-03-12', '2018-01-20', 13370);
INSERT INTO szpital.dbo.umowy(ID, data_rozpoczecia, data_zakonczenia, wartosc) VALUES(1003, '2015-07-31', null, 42069);
INSERT INTO szpital.dbo.umowy(ID, data_rozpoczecia, data_zakonczenia, wartosc) VALUES(1004, '2017-04-15', null, 220020);
INSERT INTO szpital.dbo.umowy(ID, data_rozpoczecia, data_zakonczenia, wartosc) VALUES(1005, '2020-04-28', null, 1337420);
GO

/*
SELECT * FROM szpital.dbo.umowy;
*/

INSERT INTO szpital.dbo.dostawcy(ID, umowa, nazwa, kraj) VALUES (101, 1001, 'Szampi Corp', 'PL');
INSERT INTO szpital.dbo.dostawcy(ID, umowa, nazwa, kraj) VALUES (102, 1002, 'Labrador Company', 'PL');
INSERT INTO szpital.dbo.dostawcy(ID, umowa, nazwa, kraj) VALUES (103, 1003, 'Bosch', 'DE');
INSERT INTO szpital.dbo.dostawcy(ID, umowa, nazwa, kraj) VALUES (104, 1004, 'Najlepszy Dostawca', 'PL');
INSERT INTO szpital.dbo.dostawcy(ID, umowa, nazwa, kraj) VALUES (105, 1005, 'Drogi Dostawca', 'PL');
GO

/*
SELECT * FROM szpital.dbo.dostawcy;
*/

INSERT INTO szpital.dbo.historia_transakcji(ID_umowy, status_umowy) VALUES (1001, 'rozpoczeta');
INSERT INTO szpital.dbo.historia_transakcji(ID_umowy, status_umowy) VALUES (1002, 'zakonczona');
INSERT INTO szpital.dbo.historia_transakcji(ID_umowy, status_umowy) VALUES (1003, 'rozpoczeta');
INSERT INTO szpital.dbo.historia_transakcji(ID_umowy, status_umowy) VALUES (1004, 'rozpoczeta');
INSERT INTO szpital.dbo.historia_transakcji(ID_umowy, status_umowy) VALUES (1005, 'rozpoczeta');
GO
/*
SELECT * FROM szpital.dbo.historia_transakcji;
*/

/*
http://www.setpon.pl/wyposazenie-gabinetow-i-szpitali
*/


INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('B-02 Bok ³ózka szpitalnego - kozetki', 1001, 580);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('Lampy Dezynfekcyjne do Sterylizacji Pomieszczeñ', 1001, 369);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('KOZETKA DO TRANSPORTU/MASA¯U Z NAPÊDEM ELEKTRYCZNYM', 1001, 120);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('SRZ3/KO - SIEDZISKO BASENOWE NIERDZEWNE', 1001, 1200);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('S1- Kozetka z elektryzn¹ zmian¹ wysokoœci', 1001, 369);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('BB-01 Basen z r¹czk¹ i wieczkiem', 1001, 28);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('Statyw Kroplówki œcienne wysówanej', 1001, 690);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('AS-2 AS STOLIK POD WAGÊ DLA NIEMOWL¥T I APARATURÊ MEDYCZN¥', 1001, 1200);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('AP 10 - Stolik dwupó³kowy', 1001, 1400);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('WYS - dwubiegowy sufitowy', 1001, 380);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('WYS - dwubiegowy', 1001, 280);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('Szafa na leki przeszklona', 1001, 1480);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('Szafka kartotekowa', 1001, 1180);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('Kozetka S1 - sk³adana na œcianê', 1001, 1280);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('SZ 8', 1001, 1200);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('SZ 7', 1001, 1040);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('S1 Guardian - Kozetka stó³ z bokami do zabiegów do badañ dzieci.', 1001, 2400);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('WZ KA-3', 1002, 1420);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('WZ A-2', 1002, 1200);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('WZ- KA1', 1002, 1200);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('WZ A1', 1002, 1200);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('Taca Nierdzewna KO pod instrumenty medyczne TN-03', 1002, 89);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('Taca Nierdzewna KO pod instrumenty medyczne', 1002, 102);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('AP 9 - stolik salowy na leki', 1002, 1008.60);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('MATA ZB-10 ZABEZPIECZAJ¥CA', 1002, 90);
INSERT INTO szpital.dbo.przedmioty(nazwa, umowa, cena_jednostkowa) VALUES('Stolik pod aparaturê medyczn¹ DMG', 1002, 460);



