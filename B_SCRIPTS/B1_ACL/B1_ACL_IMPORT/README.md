## ACL IMPORT

In deze folder worden batch bestanden opgeslagen die door ACL gebruikt worden om auditfiles te importeren. 

### Doelstelling

De batchbestanden worden in de werkdirectory geplaatst en kunnen vanuit ACL uitgevoerd worden via: 
`DO SCRIPT "naam van het batch bestand".bat`
Het uitvoeren van de gehele routine leidt ertoe dat 1 of meerdere auditfiles zijn geïmporteerd, omgezet naar de naamgevingsconventies volgens de auditfile standaard en bruikbaar voor het uitvoeren van analyses. 

### Opzet

De scriptstructuurt gaat uit van:
- elk onderdeel van een auditfile wordt als separaat acl-tabel ingelezen.
- de gedachte dat een gebruiker soms auditfiles van meerdere jaren heeft. De inleesroutine leest de auditfiles in en append de respectievelijke tabellen. 
- sommige auditfiles wijken af van de standaard. Mogelijk moet per bronsysteem een aparte inleesroutine worden gedefinieerd. 

Hieronder volgt toelichting op de besetanden die in deze directory te vinden:

| Naam          							| Doelstelling                                                             |
| ----------------------------------------- | ------------------------------------------------------------------------ |
| import_list.bat| Dit script bepaalt hoeveel XAF bestanden in de werk director voorkomen en zal per XAF de import routine opstarten met script import_header.bat|
| import_header| Dit script leest de header van het auditfile in om te bepalen wat het bronsysteem is en welk daadwerkelijk importscript opgestart moet worden.|
| import_"naam_versie_bron".bat| Dit is het daadwerkelijke importscript (hiervan zijn dus meerdere versies)| 
| wsp_"naam_versie_bron".wsp| Dit is een workspace waarin de als `CHARACTER` geïmporteerde velden worden omgezet naar de formaten en namen zoals gedefiniëerd in de auditfile standaard. Het bestand `wsp_master.wsp` kan bij het opstellen van worksapces gebruikt worden als basis.| 

### Conventies

Voor het opbouwen van de importscripts en gerelateerde workspaces gelden de volgende conventies:
- hantereren van velddefinities volgens auditfile standaard
- veldlengte en type is belangrijk voor het goed functioneren van analyses scripts (zoals bijvoorbeeld bij `APPEND` en `RELATE`. Voor zover deze niet voorgeschreven in de auditfile standaard wordt aangehouden wat is gedefineerd in het bestand `wsp_master.wsp`.
- velden die in een bronbestand niet bestaan of niet herleidbaar uit andere velden (bijvoorbeeld straat en huisnummer die gecombineerd zijn in 1 veld) worden gevuld met de waarde NaN.

