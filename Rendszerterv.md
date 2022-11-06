# Rendszerterv

## 1. A rendszer célja
...

### Vágyálom rendszer
...

## 2. Projektterv
...

## 3. Üzleti feladatok modellje
...

## 4. Követelmények
### Funkcionális követelmények:
...

### Nem funkcionális követelmények:
...

### Törvényi előírások, szabványok
...


## 5. Funkcionális terv
### Rendszerszereplők:
- **Vendég**
- **Felhasználó**
- **Adminisztrátor**


### Rendszerhasználati esetek és lefutásaik:
**Vendég**:
- Amennyiben rendelkezik érvényes fiókkal, bejelentkezhet a "Bejelentkezés" menü pontra kattintva
- Felhasználói fiók hiányában regisztrálhat a "Regisztrációs" fül alatt
- Megbizonyosodhat és betekintést kaphat az oldal, illetve kérdőívek céljáról a "Rólunk" nevű menüpontra kattintva

**Felhasználó**:
- Bejelentkezhet felhasználói fiókjába a "Bejelentkezés" menü pontra kattintva
- Lehetősége nyílik a "Kérdőívek" nevű gomb által kilistáznia az aktuálisan elérhető kérdőíveket
- A kérdőívek könnyebb elérése érdekében a keresés is biztosított
- A "Kérdőív kitöltése" gombra kattintva kitöltheti az általa kiválasztott kérdőívet
- Megbizonyosodhat és betekintést kaphat az oldal, illetve kérdőívek céljáról a "Rólunk" nevű menüpontra kattintva
- Kijelentkezhet fiókjából a "Kijelentkezés" gomb segítségével

**Adminisztrátor**:
- Bejelentkezhet adminisztrátori fiókjába a "Bejelentkezés" menü pontra kattintva
- Lehetősége nyílik a "Kérdőívek" nevű gomb által kilistáznia az aktuálisan elérhető kérdőíveket
- A kérdőívek könnyebb elérése érdekében a keresés is biztosított
- Továbbá jogosultsága van új kérdőívek létrehozására/feltöltésére (megírására) és a már meglévők módosítására
- Megbizonyosodhat és betekintést kaphat az oldal, illetve kérdőívek céljáról a "Rólunk" nevű menüpontra kattintva
- Kijelentkezhet fiókjából a "Kijelentkezés" gomb segítségével


### Menü-hierarchiák:
- **REGISZTRÁCIÓ**
    - Bejelentkezés *(Már van meglévő fiókja?)*
    - Rólunk *(információs lap)*

- **BEJELENTKEZÉS**
    - Regisztráció *(Még nem regisztrált?)*
    - Rólunk *(információs lap)*

- **RÓLUNK**
    - Bejelentkezés *(amennyiben vendégként látogatja az oldalt)*
    - Regisztráció *(amennyiben vendégként látogatja az oldalt)*
    - Kérdőívek
    - Kijelentkezés

- **KÉRDŐÍVEK**
    - Keresés
    - Kérdőív kitöltése
        - Visszaigazoló kód nyomtatás
    - Kérdőív szerkesztése *(adminisztrátori)*
    - Kérdőív feltöltése *(adminisztrátori)*
        - Kép feltöltése
    - Kérdőív statisztikáinak nyomtatása *(adminisztrátori)*
    - Rólunk *(információs lap)*
    - Kijelentkezés

### Menükhöz tartozó specifikációk:
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
| Nyomtatás | K9 | Visszaigazoló kód nyomtatása | 1.0 | A visszaigazolókód nyomtatás gomb lehetőséget nyújt a kérdőív kitöltése után a visszaigazolókód kinyomtatására, letöltésére PDF formátumban. |
| Nyomtatás | K10 | Statisztikák nyomtatása | 1.0 | A statisztikák nyomtatása gomb lehetőséget nyújt az adott kérdőíhez tartozó statisztikák nyomtatására, letöltésére PDF formátumban. |


## 6. Fizikai Környezet
...


## 7. Fejlesztői eszközök:
...


## 8. Architekturális terv
...


## 9. Adatbázis terv
![Adatbázis terv](https://cdn.discordapp.com/attachments/323508728508710913/1038906389533315222/image.png)


## 10. Implementációs terv
...


## 11. Használt technológiák
...