--1

SELECT nazwisko, ID, data_ur FROM szpital.dbo.lekarze
WHERE nazwisko = 'Zdrzalik' OR nazwisko = 'Dudkiewicz'
ORDER BY data_ur ASC;

