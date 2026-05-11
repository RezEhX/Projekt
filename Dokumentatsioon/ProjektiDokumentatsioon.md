# Projekti dokumentatsioon

See dokument sisaldab projekti kohta käivat teavet, sealhulgas eesmärke, funktsioone ja kasutusjuhendeid.

Antud infrastruktuur on loodud 12 töötajaga raamatupidamisfirmale, lähtudes stsenaariumi kriitilisest vajadusest turvalise failijagamise järele. Süsteem on ehitatud Ubuntu Serverile, kasutades Dockeri platvormi, mis tagab teenuste isoleerituse ja kergema halduse.

Failihalduseks on rakendatud Nextcloud, mis pakub ise-hostitud ja turvalist alternatiivi avalikele pilveteenustele, võimaldades hallata tundlikke kliendiandmeid. Raamatupidamistoimingute ja arvelduse jaoks on paigaldatud Odoo tarkvara.

Süsteem on ehitatud LVM-põhisele kettahaldusele, mis võimaldas meil laiendada serveri mahtu 25GB-ni ilma teenuseid peatamata, tagades piisava ressursi andmemahukate rakenduste ja andmebaaside stabiilseks tööks. Kogu lahendus on skaleeritav ja hallatav koodina läbi docker-compose seadistuse.

Süsteemi on lisatud varundusskript backup.sh , see loob regulaarseid koopaid kõigist dockeri andmemahtudest. See tagab faile ja andmeid rikke korral.

Kaugtöö jaoks on rakendatud WireGuard VPN, mis tagab turvalise ja krüpteeritud ühenduse töötajate ja serveri vahel. Aitab töötada kodukontorist.
