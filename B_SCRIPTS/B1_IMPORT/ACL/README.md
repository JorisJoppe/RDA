# ACL IMPORT

In deze folder worden batch bestanden opgeslagen die dienen om auditfiles te importeren. 

## Doelstelling
De batchbestanden worden in de ACL directory geplaatst en kunnen vanuit ACL uitgevoerd worden via: 

DO SCRIPT <<naam van het batch bestand>>.bat

## Opzet
De scriptstructuurt gaat uit van:
- elk onderdeel van een auditfile wordt als separaat acl-tabel ingelezen.
- de gedachte dat een gebruiker soms auditfiles van meerdere jaren heeft. De inleesroutine leest de auditfiles in en append de respectievelijke tabellen. 
- sommige auditfiles wijken af van de standaard. Mogelijk moet per bronsysteem een aparte inleesroutine worden gedefinieerd. 

Hieronder volgt toelichting op de scripts die in gebruik zijn:

| Naam          							| Doelstelling                                                             |
| ----------------------------------------- | ------------------------------------------------------------------------ |
| import_list      							| Dit script bepaalt hoeveel XAF bestanden in de werk director voorkomen   |
| 		   	    							| en zal per XAF de import routine opstarten met script import_header      |
| import_header								| Dit script leest de header van het auditfile in om te bepalen wat het    |
| 											| bronsysteem is en welk daadwerkelijk importscript opgestart moet worden. |
| import_<<naam_versie_bron>>				| Dit is het daadwerkelijke importscript								   | 

## Naamgeving


