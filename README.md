# SQL_Project

Baza danych dla szpitala

Zalozenia:

1. Pacjenci są rejestrowani na określony okres, w określonym oddziale. 
2. W szpitalu pracują lekarze różnych specjalności
3. Pacjent jest pod opieką (ma przypisanego) lekarza rodzinnego (lekarz rodzinny to jedna ze specjalności) EDIT: zrobił bym że lekarz rodzinny nie jest specjalnością, tylko po prostu część lekarzy jest 
Też lekarzami rodzinnymi
4. Pacjent może zapisać się na wizytę do dowolnego lekarza na określony dzień i godzinę
5. W ramach każdej specjalności lekarz pacjent ma założoną kartę, na której zapisuje się przebieg leczenia: daty wizyt i zalecenia.
6. Lekarze są pracownikami oddziałów. Jeden z lekarzy jest szefem oddziału. 
7. Każdy Lekarz przyjmuje pacjenta w swoim gabinecie.
8. Gabinety mogę znajdować się w różnych oddziałach (nr gabinetu jest unikalny dla oddziału).
9. W każdym budynku znajduje się co najmniej jeden oddział
10. Każdy oddział posiada swoje wyposażenie w konkretnej liczbie
11. W skład wyposażenia wchodzi przedmiot posiadający swój unikalny numer oraz nazwę
12. Każdy przedmiot jest dostarczany okresowo przez konkretnego dostawcę po określonej cenie
13. Każdy dostawca pochodzi z konkretnego kraju oraz jest z nim podpisana aktualna umowa 
14. Każda umowa ma swoją datę oraz unikalny numer i przypisane są do niej przedmioty, których ona dotyczy
15. Rekordy wszystkich umów zapisane są w historii transakcji
