# Funkcionális specifikáció

## 1. Áttekintés
A megrendelő cég egy olyan utazási iroda, amely felszeretné mérni hazai ügyfelei utazási igényeit.
Ennek megvalósításához egy kérdőív alapú weboldalt rendeltek. 
Fontos számukra, hogy jogosultság alapján az oldalon elkülönüljön a regisztrált (kérdőívet kitöltő) felhasználó és az utazási iroda (kérdőíveket létrehozó) munkatársai.
A rendszer méri a különböző kérdőívekben leadott válaszadási arányokat és ebből készít egy átfogó statisztikát megrendelőnk számára. 
Ők később ezen adatok felhasználásval alakítják kínálatukat és reklámfogásaikat.


## 2. Jelenlegi helyzet
A megrendelő különböző statisztikákat szeretne kimutatni a felhasználói / ügyfelei igényeiről.
Ennek segítségéül egy olyan weboldalt készítünk el, ahol kérdőívek hozhatóak létre és ezekre különböző válaszok megadására van opció.
A felhasználók közül manuálisan tudunk jogosultságot adni annak az utazási iroda munkatársainak akik a kérdőívek feltöltését végzik.
A kitöltendő kérdőíveket csak regisztrált felhasználók tudják kitölteni, akik válaszából egy összesített statisztika megtekintésére van lehetőség.
A felhasználók anonimítása érdekében a kliensek adatait nem használjuk fel semmilyen cél érdekében, kizárólag a válaszaiból nyerjük ki a statisztikákat.
Továbbá a felhasználók kényelmessége érdekében lehetőségük van keresni a különböző kérdőívek között. 


## 3. Követelménylista
1. Reszponzív dizájn
2. Letisztult felhasználói felület
3. Átlátható menü kezelés
4. Egyszerű adat felvitel
5. Személyre szabható váz a válaszok megadásánál
6. Pontos mérések
7. Anonimitás kezelése
8. Gyors válaszidő

### Követelmények
| Modul | ID | Név | v. | Kifejtés |
|---|---|---|---|---|
| Jogosultság | K1 | Bejelentkezési felület | 1.0 | A felhasználó az email címe és jelszava segítségével bejelentkezhet. Ha a megadott email vagy jelszó nem megfelelő, akkor a felhasználó hibaüzenetet kap. |
| Jogosultság | K2 | Regisztráció | 1.0 | A felhasználó a teljes nevével, majd az emailjének és jelszavának megadásával regisztrálja magát. A jelszó tárolása kódolva történik az adatbázisban. Ha valamelyik adat ezek közül hiányzik vagy nem felel meg a követelményeknek, akkor a rendszer értesíti erről a felhasználót. |
| Jogosultság | K3 | Kijelentkezés | 1.0 | A bejelentkezett felhasználók a kijelentkezés gombra kattintva kitudnak jelentkezni, amely a bejelentkező felületre irányíja őket. |
| Feltöltés | K4 | Kérdőív feltöltése | 1.0 | Az általunk kiválasztott munkatársaknak lehetőségük van kérdőívek feltöltésére. |
| Feltöltés | K5 | Kérdőív szerkesztése | 1.0 | A hozzáadott kérdőívek utólagos szerkesztésének lehetősége. |
| Feltöltés | K6 | Kép feltöltése | 1.0 | Különböző képek feltöltése, mint opcionális választási lehetőségek egy-egy kérdőívnél. |
| Statisztika | K7 | Kérdőív statisztikái | 1.0 | Az adott kérdőív feltöltője elér egy összesített statisztikát a kérdekre kapott válaszokról. |
| Keresés | K8 | Keresés | 1.0 | A keresés mező segítségével egyszerű kulcsaszavak megadásával kereshetünk különböző kérdőívekre. |
| Nyomtatás | K9 | Visszaigazolókód Nyomtatása | 1.0 | A visszaigazolókód nyomtatás gomb lehetőséget nyújt a kérdőív kitöltése után a visszaigazolókód kinyomtatására, letöltésére PDF formátumban. |
| Nyomtatás | K10 | Statisztikák Nyomtatása | 1.0 | A statisztikák nyomtatása gomb lehetőséget nyújt az adott kérdőíhez tartozó statisztikák nyomtatására, letöltésére PDF formátumban. |


## 4. Jelenlegi üzleti folyamatok modellje
...


## 5. Igényelt üzleti folyamatok
1. A látogató a főoldalon olvashat egy rövid leírást a kérdőívek céljáról, valamint a menüpontoknál választhat a bejelentkezés és regisztráció gombok között.
2. A regisztráció gombra való kattintás után átirányításra kerül egy regisztrációs ablakba.
3. Regisztrálni adatai kitöltésével lehetséges az alábbi sorrendben; teljes név, email, jelszó
4. A regisztráció után a bejelentkezés fülre kattintva átirányításra kerül a bejelentkezés ablakba.
5. Bejelentkezéshez a regisztrációkor megadott email cím, és jelszó páros megadása szükséges.
6. Bejelentkezés után újra a főodalon találja magát a felhasználó, ahol már a kérdőívek böngészésére is lehetőség van.
7. A külön jogosultsággal rendelkezőknek (munkatársak) lehetőségük van kérdőívek feltöltésére, ahol személyre szabhatóan alakítják, formázhatják a később válaszadási lehetőségeket.
8. A kész kérdőív utólagos szerkesztésére is lehetősége van, a "Szerkesztés" nevü gomb használatával.
9. A főoldalon található kérdőívek közül a felhasználó válogathat a különböző kérdőívek közül, ezek segítségére használhatja a kersés mező funkcióit.
10. A kérdőív tulajdonosa (munkatárs) lehetőséget kap a válaszok összességéből kimutatott statisztikákra, majd azok nyomtatására.
11. A felhasználónak egy kérdőív csak addig jelenik meg a főoldalon amíg azt ki nem töltötte, a már kitöltött kérdőívek visszaigazolókódjának nyomtatására a kitöltés után van lehetősége.


## 6. Használati esetek
...


## 7. Megfeleltetés, hogyan fedik le a használati esetek a követelményeket
...


## 8. Képernyő tervek
![Képernyőterv bejelentkezés](https://cdn.discordapp.com/attachments/323508728508710913/1034506190702526627/bejelentkezes.png)
![Képernyőterv regisztráció](https://cdn.discordapp.com/attachments/323508728508710913/1034506203205730344/regisztracio.png)
![Képernyőterv rólunk](https://cdn.discordapp.com/attachments/323508728508710913/1034506210508025997/rolunk.png)
![Képernyőterv kérdőívek](https://cdn.discordapp.com/attachments/323508728508710913/1034506231466954813/kerdoivek.png)

## 9. Forgatókönyv
...


## 10. Funkció-követelmény megfeleltetés
### Funkcionális követelmények megfeleltetése:
...

### Nem Funkcionális követelmények megfeleltetése:
...


## 11. Fogalomtár
...