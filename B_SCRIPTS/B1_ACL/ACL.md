## ACL ANALYSES

In deze folder worden batch bestanden opgeslagen die door ACL gebruikt worden om analyses uit te voeren. 

### Doelstelling

Analyse scripts helpen ACL gebruikers eenvoudig auditfile gebaseerde analyses uit te voeren. Per analyse is een wiki-pagina beschikbaar waarin een functionele beschrijving van de analyse is opgenomen (ook gelden voor andere oplossingen dan ACL).

De batchbestanden waarin de scripts voor ACL zijn beschreven kunnen, door de gebruiker in de werkdirectory geplaatst worden en om vervolgens vanuit ACL uit te voeren via:
 
`DO SCRIPT "naam van het batch bestand".bat`

De batchbestanden veronderstellen dat auditfiles zijn geïmporteerd volgens de [importroutines](../tree/master/B_SCRIPTS/B1_IMPORT/ACL) die als onderdeel van dit project zijn gedefinieerd. Deze importroutines bepalen:
- tabelnamen
- veldnamen
- velddefinities (type en veldlengte)
 
Analyse scripts zijn uiteraard bruikbaar als data op een andere wijze is verkregen. In dat geval is het noodzakelijk vast te stellen of de data voldoet aan de vereisten van het analyse script.

### Opzet

Analyse scripts worden opgezet in batchbestanden waarbij minimaal de volgende indeling wordt gehanteerd:
- Algemene informatie over de analyse
- Sectie waarin data wordt geïmporteerd en eventueel wordt voorbereid
- Sectie waarin de analyse wordt uitgevoerd

In het script hoeft geen export van de bevindingen te worden opgenomen. De veronderstelling is dat elke gebruiker daar zijn eigen invulling aan wil geven (zoals excel, publiceren naar een BI oplossing of anderszins).

### Conventies

De volgende conventies worden bij het opbouwen van analyse scripts gehanteerd:
- waar mogelijk worden veldnamen zoals gedefineerd in de importroutine gehanteerd.
- nieuw aangemaakte velden krijgen een duidelijke naam met een prefix `a_`
- in scripts aangemaakte variabelen krijgen een prefix `v_`
- indien een analyse bestaat uit meerdere scripts (bijvoorbeeld bij een `DO ... WHILE ....` loop) worden verwijzen de bij elkaar behorende  batchbestanden naar elkaar en blijkt uit de naamgeving duidelijk dat deze bij elkaar horen (de meest geëigende manier hiervoor is het gebruik van een suffix en adequate documentatie in de scripts zelf).

