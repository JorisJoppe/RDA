## ACL ANALYSES

In deze folder worden batch bestanden opgeslagen die door ACL gebruikt worden om data te importere en  analyses uit te voeren. 

### Doelstelling

Analyse scripts helpen ACL gebruikers eenvoudig auditfile gebaseerde analyses uit te voeren. Per analyse is een wiki-pagina beschikbaar waarin een functionele beschrijving van de analyse is opgenomen (ook gelden voor andere oplossingen dan ACL).

De batchbestanden waarin de scripts voor ACL zijn beschreven kunnen, door de gebruiker in de werkdirectory geplaatst worden en om vervolgens vanuit ACL uit te voeren via:
 
`DO SCRIPT "naam van het batch bestand".bat`

De batchbestanden veronderstellen dat auditfiles zijn geïmporteerd volgens de [importroutines](../tree/master/B_SCRIPTS/B1_IMPORT/ACL) die als onderdeel van dit project zijn gedefinieerd. Deze importroutines bepalen:
- tabelnamen
- veldnamen
- velddefinities (type en veldlengte)
 
Het is ook mogelijk om deze volledige repository (als onderdeel van het totale RDA project) te clonen naar een lokale kopie. In dat geval is het mogelijk vanuit ACL direct de batchbestanden aan te roepen in de directories van het (dan lokaal opgeslagen) RDA project. 