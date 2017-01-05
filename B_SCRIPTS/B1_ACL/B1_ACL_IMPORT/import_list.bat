DIRECTORY "*.xaf" SUPPRESS TO table_list.fil 

OPEN table_list
COUNT
ASSIGN vNumber_tables_var = COUNT1
ASSIGN vTables_done_var   = 0

DO SCRIPT RDA\import_auditfile.bat WHILE vTables_done_var < vNumber_tables_var