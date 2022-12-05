| Tesztelő: vámos Ákos János | Időpont: 2022.12.04. 20:15 | Böngésző: Google Chrome |
| -------------------------------------|----------|-------------------------|

| Időpont | Teszt                | Eredmény | Megjegyzés                                                            |
|:-------:|----------------------|----------|-----------------------------------------------------------------------|
| 20:15 | Regisztráció menüpont | Sikeres | Kattintás után átírányít a regisztrációs ablakba |
| 20:16 | Regisztráció bármely adat kihagyása esetén, hibát várok vissza | Sikeres | A mezők kötelezettsége miatt hibaüzenetet kapok vissza a mezők kitöltetlensége miatt |
| 20:16 | Regisztráció rövid jelszó, hibát várok vissza | Sikeres | A regisztráció megtagadásra kerül, amíg a jelszó rövdebb, mint 8 karakterből áll |
| 20:17 | Regisztráció az elvártaknak megfelelően | Sikeres | A regisztráció sikeres, az adataink elmentésre kerülnek az adatbázisban |
| 20:18 | Bejelentkezés menüpont hibás adatokkal, hibát várok vissza | Sikeres | Hibás adatokkal hibaüzenet fogad, a bejelentkezés sikertelen |
| 20:19 | Bejelentkezés menüpont | Sikeres | Helyes adatokkal a bejelentkezés sikeres, átirányít a Home page-re |
| 20:19 | Új kérdőív létrehozása gomb | Sikeres | Átirányít a létrehozandó kérdőív üres felületére |
| 20:20 | Új kérdőív címe vagy szándék leírásának elmulasztása, hibát várok vissza | Sikeres | Hibaüzenet fogad, nem lehet üres egyik mező sem |
| 20:21 | Új kérdés hozzáadása gomb | Sikeres | Átirányít a kérdőív egy üres kérdés-válasz megadás vázához |
| 20:22 | Kérdőív megosztási linkje | Sikeres | Átirányít az adott kérdőívre |
| 20:23 | Kérdőív kitöltése (vendégként/felhasználóként) | Sikeres | Minden mező kitöltésével megköszönő üzenetet kaptam |
| 20:23 | Kérdőív kitöltése 1-1 válasz kihagyásával | Sikeres | Kihagyott válasz elküldése esetén az már megadott válaszaink elmentődnek, a kihagyottakra hibaüzenetet kapok vissza |
| 20:24 | Statisztikák megtekintése | Sikeres | A már kitöltött kérdőívek megnyitásával egyértelmű adatokat kapunk a válaszok arányáról |
| 20:25 | Vissza navigálás a főoldalra (felhasználóként) | Sikeres | A sikeres kérdőív kitöltése után lévő visszalépés a főoldalra sikeresen átirányít a főoldalra |
| 20:25 | Vissza navigálás a főoldalra (vendégként) | Sikeres | A sikeres kérdőív kitöltése után lévő visszalépés a főoldalra gomb a bejelentkező felületre irányít, ugyanis a vendégnek nincs fiókja |
| 20:26 | Kijelentkezés | Sikeres | A felhasználót kilépteti a rendszer |