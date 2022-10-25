# Követelményspecifikáció

## 1. Áttekintés
Cégünk egy nemzetközileg is ismert utazási iroda, amely most legkinkább az itthoni ügyfeleink igényeinek felmérését célozza meg.
A projekt segítségével lehetőség nyílik a magyar utazni vágyók érdekeinek megismerésére és ez által minnél hatékonyobb segíségére.
Célunk megvalósításához egy olyan weboldal szükséges, ahol munkatársaink könnyedén tudnak kérdőíveket felvinni, illetve szerkeszteni azokat.
A különböző kérdőívekből a regisztrált felhasználóink válaszaiból pedig könnyedén felmérhetjük ügyfeleink szokásait/igényeit. 
Ezen statisztikák ismeretével a kínálatot az e fajta prioritások alapján végezzük.


## 2. Jelenlegi helyzet
Jelenleg egy jól működő utazási irodaként munkálkodunk, ahol próbálunk az alacsony ár és biztonságos utazások biztosítása mellett, a naprakészségben is kiválóan teljesíteni.
Ehhez elengedhetetlen az ügyefeleink megismerése és az Ő általuk megítélt legnépszerűbb utazási célpontok információinak begyűjtése. Ám ennek szegmensnek eddig nem túl sok profitja volt, ezért kezdenénk bele ebbe a projektbe. Ugyanis a projekt segítségével ezekre mind lehetőségünk nyilna. Nem csak egy-egy felhasználó cél országát, vagy települését tudnánk ezzel felmérni, hanem a kimutatott statisztikákkal könnyebben és pontosabb ajánlatot tudnánk ezáltal az ügyfeleinknek nyújtani.


## 3. Vágyálom rendszer
Egy olyan weboldalra, illetve rendszerre van szükségünk, ahol ügyfeleink igényeit ismerjük meg.
Ehhez azonban elengedhetetlen a letisztult, reszponzív dizájn és a figyelemet fenntartó tartalom.
Éppen ezért kifejezetten alapos munkát igényel a felhasználó-barát elrendezés és a megfelelő megjelenés.
Továbbá szolgálatatásunkat hasonló interface keretében egy mobil appon keresztül is elérhetővé szeretnénk tenni.
Mindezenmellett, megszeretnénk könnyíteni elkötelezett munkatársaink dolgát is.
A háttérfolyamatok, mérések és statisztikák egyszerű kezelésére a gép által automatikusan generált diagrammok és ábrák segítenek majd. 


## 4. Funkcionális követelmények
...


## 5. Rendszerre vonatkozó törvények, szabványok, ajánlások
### Törvények
- AZ EURÓPAI PARLAMENT ÉS A TANÁCS (EU) 2016/679 RENDELETE

- Az információs önrendelkezési jogról és az információszabadságról szóló 2011. évi CXII. törvény 4.§ (1) és (2) bekezdései.

### Rendszerszabványok, ajánlások
- A web felület szabványos eszközökkel készüljön, html/css/javascript/php
- A képek jpg/jpeg/png/gif formátumúak lehetnek
- A felhasznlókat azonosító weboldalak esetében szükséges jogszabályokat be kell tartani: GDPR
- A rendszer bíztosítsa a kérdőívet kitöltő személy teljes anonimítását
- Mindenképp biztosítsa a rendszer az elkezdett, de valamilyen okból félbeszakadt kérdőív kitöltésének folytatását.
- Legnépszerűbb böngészők támogatása (Chrome, Firefox, Edge, Opera, Safari)

- Trello (kanban tábla)
- Discord (kommunikáció)
- Github (a kóddal való együttműködés)
- Visual Studio Code (a kódoláshoz használt IDE)
- Sublime Text (a dokumentáció kidolgozásához)
- PHP (backend)
- HTML, CSS (a frontend és a design)
- Javascript (backend, frontend)
- Uizard prototype (képernyőtervhez)
- MySQL (adatbázis)
- Laravel (php keretrendszer)


## 6. Jelenlegi üzleti folyamatok modellje
...


## 7. Igényelt üzleti folyamatok
...


## 8. Követelménylista
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


## 9. Riportok
...
