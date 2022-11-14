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
| Statisztika | K7 | Kérdőív statisztikái | 1.0 | Az adminisztrátor elér egy összesített statisztikát a kérdekre kapott válaszokról. |
| Keresés | K8 | Keresés | 1.0 | A keresés mező segítségével egyszerű kulcsaszavak megadásával kereshetünk különböző kérdőívekre. |
| Nyomtatás | K9 | Visszaigazolókód Nyomtatása | 1.0 | A visszaigazolókód nyomtatás gomb lehetőséget nyújt a kérdőív kitöltése után a visszaigazolókód kinyomtatására, letöltésére PDF formátumban. |
| Nyomtatás | K10 | Statisztikák Nyomtatása | 1.0 | A statisztikák nyomtatása gomb lehetőséget nyújt az adott kérdőíhez tartozó statisztikák nyomtatására, letöltésére PDF formátumban. |


## 4. Jelenlegi üzleti folyamatok modellje
Többek között kezdhetnénk azzal, hogy kik is használnak kérdőíveket. Elsősorban kutatást végző fiatalok, az egyetemisták például a szakdolgozatuk előrehaladása érdekében. Rajtuk kívül vannak kutatócsoportok akik ugyanilyen felmérésekkel és kérdőívekkel érik el az embereket, illetve általuk haladhat előrébb egy-egy kisebb, nagyobb kutatásuk. Legtöbb esetben elérhetőek a kérdőívek által több korosztályú emberek is. Természetesen ez függ attól, hogy milyen kérdőívet használ a kutató, vagy a kutatócsoport.
A mi weboldalunk teljesen átfedi ezeknek a kutatásoknak az előrehaladását. Ugyanis, itt meg van az esély arra, hogy feltöltsenek kérdőívet, továbbá el is érhetnek kérdőíveket.


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
Kijelentkezett állapotban csak a bejelentkező oldal látható, ahol fiók is létrehozható.
A regisztrált felhasználó képes lesz a már létrehozott kérdőíveket kitölteni, illetve a kérdőív igazolókódját kinyomtatni. 
Az admin felhasználók látják a kérdőíveket, amiket törölni és módosítani is tudnak. A kérdéssorok eredményeiből képesek statisztikát előállítani. Képesek felhasználókat tiltani vagy a tiltásokat visszavonni, illetve adminná tenni. Csak az admin felhasználók képesek kérdéssorokat létrehozni. 


## 7. Megfeleltetés, hogyan fedik le a használati esetek a követelményeket
Első feladat: A felhasználó regisztrál az oldalra (meglévő fiók esetén az első három pont kihagyható)
- Még nem regisztrált? 
- Adatok kitöltése (teljes név, e-mail, jelszó)
- Regisztráció
- Adatok újbóli beírása (e-mail, jelszó)
- Bejelentkezés
Második feladat: Kérdőív kitöltése
- A kitöltendő kérdőív melleti (Kitöltés gomb)
- A legmegfelelőbb válasz megjelölése
- Következő (az utolsó kérdésig az első három pont ismétlődik)
- Beküldés
- Személyre szabott ajánlatok


## 8. Képernyő tervek
![Képernyőterv bejelentkezés](https://cdn.discordapp.com/attachments/323508728508710913/1034506190702526627/bejelentkezes.png)
![Képernyőterv regisztráció](https://cdn.discordapp.com/attachments/323508728508710913/1034506203205730344/regisztracio.png)
![Képernyőterv rólunk](https://cdn.discordapp.com/attachments/323508728508710913/1034506210508025997/rolunk.png)
![Képernyőterv kérdőívek](https://cdn.discordapp.com/attachments/323508728508710913/1034506231466954813/kerdoivek.png)
![Képernyőterv kérdőív hozzáadása](https://cdn.discordapp.com/attachments/323508728508710913/1034506234423939154/kerdoiv_hozzaadas.png)

## 9. Forgatókönyv
1. A felhasználó az utazási iroda oldalán rákattint a kérdőívre vezető gombra.
2. A felhasználó regisztrál a "Regisztrálás" gomb megnyomásával. (Vagy bejelentkezik a már meglévő fiókjával)
3. A felhasználó a frissen létrehozott fiókjával bejelentkezik. 
4. A felhasználó kiválaszt egy kérdőívet a kérdőív neve melletti "Kitöltés" gombbal.
5. A felhasználó kiválaszt egy válaszlehetőséget, majd a "Következő" gombbal a következő kérdésre megy. Ez egészen az utolsó kérdésig megy. 
6. Az utolsó kérdés során a "Következő" gomb "Beküldés" gombra vált, ami átirányít egy olyan oldalra, ahol ki lehet nyomtatni az igazoló kódot, illetve a felhasználó értesül a kérdőív sikeres kitöltéséről.
7. A feldolgozási idő elteltével az iroda főoldalán az ajánlatok személyre szabottabbak. 


## 10. Funkció-követelmény megfeleltetés
### Funkcionális követelmények megfeleltetése:
- Az oldal betöltése után megnyílik a főmenü és vele együtt egy rövid leírás a kérdőívek céljáról.
- Kérdőívek feltötéséhez, kitöltéséhez regisztráció szükséges, azaz érvényes fiókkal kell rendelkeznünk.
- A regisztrációra kattintva az adatok beírásához az erre kialakított mezőket kell használni.
- Ha a felhasználónév még nem foglalt és minden mást megfelelő formátumban adtunk meg, létrejön a fiókunk.
- Ezek után a bejelentkezés fül alatt tudunk bejelentkezni a felhasználó név és jelszó használatával.
- Bejelentkezés követően képesek vagyunk kérdőívek feltötelni és menteni.
- Nyomtatás gomb használatával tudunk kérdőívek nyomtatni.
- Feltöltés gomb segítségével kérdőíveket tudunk az oldalra feltölteni.
- A szerkesztés gombbal az adott kérdőívet tudjuk szerkeszteni.

### Nem Funkcionális követelmények megfeleltetése:
Látványos és egyedülálló dizájn: Minimalista, szem-barát, nyugtató színek
Egyszerű, gyorsan értelmezhető, letisztult felhasználói felület: Elképesztően fontos, az egész weboldal magja, ezért a legnagyobb figyelmet igényli. 10/10


## 11. Fogalomtár
**anonimitás:** névtelenség
**reszponzív:** az alkalmazás kinézete és működése az éppen használt eszközhöz igazodik
**PDF:** Portsble Document Formst, dokumentumok tárolására alkalmas fájltípus
**regisztráció:** fiók létrehozása, hozzáférés igénylése egy oldal tartalmához vagy funkcióihoz
