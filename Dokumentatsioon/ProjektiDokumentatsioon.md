# Projekti dokumentatsioon

See dokument sisaldab projekti kohta käivat teavet, sealhulgas eesmärke, funktsioone ja kasutusjuhendeid.

Antud infrastruktuur on loodud 12 töötajaga raamatupidamisfirmale, lähtudes stsenaariumi kriitilisest vajadusest turvalise failijagamise järele.

Ubuntuserveris:
Süsteem on ehitatud Ubuntu Serverile, kasutades Dockeri platvormi, mis tagab teenuste isoleerituse ja kergema halduse.

Failihalduseks on rakendatud Nextcloud, mis pakub ise-hostitud ja turvalist alternatiivi avalikele pilveteenustele, võimaldades hallata tundlikke kliendiandmeid. Raamatupidamistoimingute ja arvelduse jaoks on paigaldatud Odoo tarkvara.

Süsteem on ehitatud LVM-põhisele kettahaldusele, mis võimaldas meil laiendada serveri mahtu 25GB-ni ilma teenuseid peatamata, tagades piisava ressursi andmemahukate rakenduste ja andmebaaside stabiilseks tööks. Kogu lahendus on skaleeritav ja hallatav koodina läbi docker-compose seadistuse.

Süsteemi on lisatud varundusskript backup.sh , see loob regulaarseid koopaid kõigist dockeri andmemahtudest. See tagab faile ja andmeid rikke korral.

Kaugtöö jaoks on rakendatud WireGuard VPN, mis tagab turvalise ja krüpteeritud ühenduse töötajate ja serveri vahel. Aitab töötada kodukontorist.

Tulemüür (UFW) lisatud, server on lukus ja lubatud on ainult SSH (haldamine), VPN (kaugtöö) ja NextCloudi ja Odoo pordid.

Crontab on kasutuses, igal öösel kell 3 teeb varukoopia

Monitooring läbi htop'i on ka kasutuses, et näha kui palju server kasutab CPU'd ja RAM'i






## Võrguseadistus (Staatiline IP)

Selleks, et serveri taaskäivitamisel (nt elektrikatkestus või *reboot*) IP-aadress ei muutuks ja VPN-i konfiguratsioonid katki ei läheks, on serverile seadistatud staatiline IP-aadress (`10.69.41.74`).

Seda tehti Ubuntu **Netplan** tööriistaga, muutes faili `/etc/netplan/00-installer-config.yaml` sisu järgnevaks:

```yaml
network:
  ethernets:
    ens33:
      dhcp4: false
      addresses:
        - 10.69.41.74/24
      routes:
        - to: default
          via: 10.69.41.1
      nameservers:
        addresses:
          - 1.1.1.1
          - 8.8.8.8
  version: 2

