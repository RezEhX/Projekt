Uue töötaja juhend: Ettevõtte süsteemidesse sisse logimine

Tere tulemast meeskonda! Meie ettevõte kasutab andmete kaitseks turvalist sisevõrku. See tähendab, et raamatupidamisprogrammidele ligipääsemiseks pead esmalt sisse lülitama turvatunneli (VPN).

Siin on samm-sammuline juhend, kuidas kõik tööle panna.
1. Turvatunneli (WireGuard VPN) seadistamine

Tähtis: Ilma turvatunnelita meie tööprogrammid brauseris ei avane!

Seadistamine arvutis:

    Laadi alla ja paigalda ametlik WireGuard programm.

    Küsi IT-administraatorilt oma isiklik seadistusfail (näiteks firma.conf).

    Ava WireGuard programm, vajuta "Import tunnel(s) from file" ja vali administraatorilt saadud fail.

    Töö alustamiseks vajuta nupule "Activate". Kui nupp muutub roheliseks, oled edukalt sisevõrgus.

Seadistamine telefonis (kui vajalik):

    Laadi äpipoest alla WireGuard rakendus.

    Küsi administraatorilt oma isiklikku QR-koodi (ta saab seda sulle ekraanilt näidata).

    Vajuta äpis plussmärgile (+), vali "Scan from QR code" ja pildista koodi. Vajuta ühenduse sisselülitamiseks nuppu.

2. Nextcloud – Digitaalne dokumendiarhiiv

Nextcloud on meie ettevõtte turvaline pilvekeskkond, kus hoiame klientide lepinguid, panga väljavõtteid ja ostuarveid.

    Sisesüsteemi aadress: http://10.69.41.74:8080 (Ava see oma veebibrauseris)

    Sisselogimine: Kasuta IT-toe poolt antud kasutajanime ja parooli.

Tööreeglid:

    Ära laadi tundlikke kliendiandmeid oma isiklikku arvutisse ümber. Tööta failidega otse Nextcloudi keskkonnas.

    Sorteeri dokumendid alati vastavasse kliendikausta (nt Kliendid 2026 -> [Kliendi Nimi]).

3. Odoo – Arveldus ja raamatupidamissüsteem

Odoo on meie peamine majandustarkvara, kus toimub klientide haldus, arvepidamine ja finantsaruandlus.

    Sisesüsteemi aadress: http://10.69.41.74:8069 (Ava see oma veebibrauseris)

    Sisselogimine: Logi sisse oma raamatupidaja kontoga.

Igapäevased toimingud:

    Arveldus: Uute müügiarvete koostamiseks vali peatöölaualt moodul "Invoicing".

    Kliendid: Enne uue arve tegemist veendu alati, et klient on süsteemis olemas, vajadusel lisa uus kontakt.

⚙️ Veatuvastus (Mida teha, kui miski ei tööta?)

Kui veebilehed (Nextcloud või Odoo) ei avane ja brauser kuvab veateadet "Site cannot be reached" või laeb lõputult, tee nii:

    Kontrolli koheselt, kas WireGuard VPN on sisse lülitatud ja selle staatuseks on "Active". (See on 99% juhtudest probleemi põhjuseks).

    Kontrolli, kas sul on toimiv internetiühendus.

    Kui VPN on sees, aga lehed ikka ei avane, pöördu IT-administraatori poole.
