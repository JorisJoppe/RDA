
SET SAFETY OFF

SET FOLDER /Tables/B0_Input

ASSIGN vTables_done_var = vTables_done_var + 1

OPEN table_list
LOCATE RECORD vTables_done_var
ASSIGN vInput_file = ALLTRIM(File_Name)

IMPORT XML TO header "header.fil" FROM "%vInput_file%" FIELD "xmlns_xsi" C AT 1 DEC 0 WID 41 PIC "" AS "" RULE "/auditfile/@xmlns:xsi/text()" FIELD "xmlns" C AT 42 DEC 0 WID 32 PIC "" AS "" RULE "/auditfile/@xmlns/text()" FIELD "xsi_schemaLocation" C AT 74 DEC 0 WID 29 PIC "" AS "" RULE "/auditfile/@xsi:schemaLocation/text()" FIELD "country" C AT 103 DEC 0 WID 2 PIC "" AS "" RULE "/auditfile/company/streetAddress/country/text()" FIELD "companyIdent" C AT 105 DEC 0 WID 8 PIC "" AS "" RULE "/auditfile/company/companyIdent/text()" FIELD "companyName" C AT 113 DEC 0 WID 19 PIC "" AS "" RULE "/auditfile/company/companyName/text()" FIELD "taxRegistrationCountry" C AT 132 DEC 0 WID 2 PIC "" AS "" RULE "/auditfile/company/taxRegistrationCountry/text()" FIELD "taxRegIdent" C AT 134 DEC 0 WID 9 PIC "" AS "" RULE "/auditfile/company/taxRegIdent/text()" FIELD "fiscalYear" N AT 143 DEC 0 WID 4 PIC "" AS "" RULE "/auditfile/header/fiscalYear/text()" FIELD "startDate" D AT 147 DEC 0 WID 10 PIC "YYYY-MM-DD" AS "" RULE "/auditfile/header/startDate/text()" FIELD "endDate" D AT 157 DEC 0 WID 10 PIC "YYYY-MM-DD" AS "" RULE "/auditfile/header/endDate/text()" FIELD "curCode" C AT 167 DEC 0 WID 3 PIC "" AS "" RULE "/auditfile/header/curCode/text()" FIELD "dateCreated" D AT 170 DEC 0 WID 10 PIC "YYYY-MM-DD" AS "" RULE "/auditfile/header/dateCreated/text()" FIELD "softwareDesc" C AT 180 DEC 0 WID 15 PIC "" AS "" RULE "/auditfile/header/softwareDesc/text()" FIELD "softwareVersion" C AT 195 DEC 0 WID 15 PIC "" AS "" RULE "/auditfile/header/softwareVersion/text()" 

COM het CustomersSupliers import deel:

IMPORT XML TO customersSuppliers "customersSuppliers.fil" FROM "%vInput_file%" FIELD "custSupID" C AT 1 DEC 0 WID 5 PIC "" AS "" RULE "/auditfile/company/customersSuppliers/customerSupplier/custSupID/text()"FIELD "custSupName" C AT 6 DEC 0 WID 38 PIC "" AS "" RULE "/auditfile/company/customersSuppliers/customerSupplier/custSupName/text()"FIELD "contact" C AT 44 DEC 0 WID 27 PIC "" AS "" RULE "/auditfile/company/customersSuppliers/customerSupplier/contact/text()"FIELD "telephone" C AT 71 DEC 0 WID 15 PIC "" AS "" RULE "/auditfile/company/customersSuppliers/customerSupplier/telephone/text()"FIELD "fax" C AT 86 DEC 0 WID 14 PIC "" AS "" RULE "/auditfile/company/customersSuppliers/customerSupplier/fax/text()"FIELD "eMail" C AT 100 DEC 0 WID 32 PIC "" AS "" RULE "/auditfile/company/customersSuppliers/customerSupplier/eMail/text()"FIELD "website" C AT 132 DEC 0 WID 54 PIC "" AS "" RULE "/auditfile/company/customersSuppliers/customerSupplier/website/text()"FIELD "taxRegistrationCountry" C AT 186 DEC 0 WID 2 PIC "" AS "" RULE "/auditfile/company/customersSuppliers/customerSupplier/taxRegistrationCountry/text()"FIELD "bankAccNr" C AT 188 DEC 0 WID 14 PIC "" AS "" RULE "/auditfile/company/customersSuppliers/customerSupplier/bankAccount/bankAccNr/text()"FIELD "bankIdCd" C AT 202 DEC 0 WID 12 PIC "" AS "" RULE "/auditfile/company/customersSuppliers/customerSupplier/bankAccount/bankIdCd/text()"FIELD "streetname" C AT 214 DEC 0 WID 30 PIC "" AS "" RULE "/auditfile/company/customersSuppliers/customerSupplier/streetAddress/streetname/text()"FIELD "city" C AT 244 DEC 0 WID 19 PIC "" AS "" RULE "/auditfile/company/customersSuppliers/customerSupplier/streetAddress/city/text()"FIELD "postalCode" C AT 263 DEC 0 WID 8 PIC "" AS "" RULE "/auditfile/company/customersSuppliers/customerSupplier/streetAddress/postalCode/text()"FIELD "country" C AT 271 DEC 0 WID 28 PIC "" AS "" RULE "/auditfile/company/customersSuppliers/customerSupplier/streetAddress/country/text()" 

COM het GeneralLedger import deel:

IMPORT XML TO GeneralLedger "GeneralLedger.fil" FROM "%vInput_file%" FIELD "accID" C AT 1 DEC 0 WID 4 PIC "" AS "" RULE "/auditfile/company/generalLedger/ledgerAccount/accID/text()"FIELD "accDesc" C AT 5 DEC 0 WID 50 PIC "" AS "" RULE "/auditfile/company/generalLedger/ledgerAccount/accDesc/text()"FIELD "accTp" C AT 55 DEC 0 WID 1 PIC "" AS "" RULE "/auditfile/company/generalLedger/ledgerAccount/accTp/text()"FIELD "leadReference" C AT 56 DEC 0 WID 10 PIC "" AS "" RULE "/auditfile/company/generalLedger/ledgerAccount/leadReference/text()"FIELD "basicType" C AT 66 DEC 0 WID 2 PIC "" AS "" RULE "/auditfile/company/generalLedger/basics/basic/basicType/text()"FIELD "basicID" C AT 68 DEC 0 WID 12 PIC "" AS "" RULE "/auditfile/company/generalLedger/basics/basic/basicID/text()"FIELD "basicDesc" C AT 80 DEC 0 WID 54 PIC "" AS "" RULE "/auditfile/company/generalLedger/basics/basic/basicDesc/text()" 

COM het vatCodes import deel:

IMPORT XML TO vatCodes "vatCodes.fil" FROM "%vInput_file%" FIELD "vatID" N AT 1 DEC 0 WID 1 PIC "" AS "" RULE "/auditfile/company/vatCodes/vatCode/vatID/text()"FIELD "vatDesc" C AT 2 DEC 0 WID 11 PIC "" AS "" RULE "/auditfile/company/vatCodes/vatCode/vatDesc/text()"FIELD "vatToPayAccID" N AT 13 DEC 0 WID 4 PIC "" AS "" RULE "/auditfile/company/vatCodes/vatCode/vatToPayAccID/text()"FIELD "vatToClaimAccID" N AT 17 DEC 0 WID 4 PIC "" AS "" RULE "/auditfile/company/vatCodes/vatCode/vatToClaimAccID/text()" 

COM het periods import deel:

IMPORT XML TO periods "periods.fil" FROM "%vInput_file%" FIELD "periodNumber" C AT 1 DEC 0 WID 2 PIC "" AS "" RULE "/auditfile/company/periods/period/periodNumber/text()" FIELD "startDatePeriod" C AT 3 DEC 0 WID 10 PIC "YYYY-MM-DD" AS "" RULE "/auditfile/company/periods/period/startDatePeriod/text()" FIELD "startTimePeriod" C AT 13 DEC 0 WID 14 PIC "" AS "" RULE "/auditfile/company/periods/period/startTimePeriod/text()" FIELD "endDatePeriod" D AT 27 DEC 0 WID 10 PIC "YYYY-MM-DD" AS "" RULE "/auditfile/company/periods/period/endDatePeriod/text()" FIELD "endTimePeriod" C AT 37 DEC 0 WID 14 PIC "" AS "" RULE "/auditfile/company/periods/period/endTimePeriod/text()" 

COM het transactions import deel:

IMPORT XML TO transactions "transactions.fil" FROM "%vInput_file%" FIELD "linesCount" C AT 1 DEC 0 WID 3 PIC "" AS "" RULE "/auditfile/company/transactions/linesCount/text()" FIELD "totalDebit" N AT 4 DEC 2 WID 10 PIC "" AS "" RULE "/auditfile/company/transactions/totalDebit/text()" FIELD "totalCredit" N AT 14 DEC 2 WID 10 PIC "" AS "" RULE "/auditfile/company/transactions/totalCredit/text()" FIELD "jrnID" C AT 24 DEC 0 WID 3 PIC "" AS "" RULE "/auditfile/company/transactions/journal/jrnID/text()" FIELD "journal_desc" C AT 27 DEC 0 WID 26 PIC "" AS "" RULE "/auditfile/company/transactions/journal/desc/text()" FIELD "jrnTp" C AT 53 DEC 0 WID 1 PIC "" AS "" RULE "/auditfile/company/transactions/journal/jrnTp/text()" FIELD "offsetAccID" C AT 54 DEC 0 WID 4 PIC "" AS "" RULE "/auditfile/company/transactions/journal/offsetAccID/text()" FIELD "bankAccNr" C AT 58 DEC 0 WID 9 PIC "" AS "" RULE "/auditfile/company/transactions/journal/bankAccNr/text()" FIELD "transaction_nr" C AT 67 DEC 0 WID 2 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/nr/text()" FIELD "transaction_desc" C AT 69 DEC 0 WID 30 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/desc/text()" FIELD "periodNumber" C AT 99 DEC 0 WID 1 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/periodNumber/text()" FIELD "trDt" D AT 100 DEC 0 WID 10 PIC "YYYY-MM-DD" AS "" RULE "/auditfile/company/transactions/journal/transaction/trDt/text()" FIELD "transaction_amnt" N AT 110 DEC 2 WID 4 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/amnt/text()" FIELD "transaction_amntTp" C AT 114 DEC 0 WID 1 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/amntTp/text()" FIELD "trLine_nr" C AT 115 DEC 0 WID 3 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/trLine/nr/text()" FIELD "accID" C AT 118 DEC 0 WID 4 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/trLine/accID/text()" FIELD "docRef" C AT 122 DEC 0 WID 2 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/trLine/docRef/text()" FIELD "effDate" D AT 124 DEC 0 WID 10 PIC "YYYY-MM-DD" AS "" RULE "/auditfile/company/transactions/journal/transaction/trLine/effDate/text()" FIELD "trLine_desc" C AT 134 DEC 0 WID 30 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/trLine/desc/text()" FIELD "trLine_amnt" N AT 164 DEC 2 WID 10 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/trLine/amnt/text()" FIELD "trLine_amntTp" C AT 174 DEC 0 WID 1 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/trLine/amntTp/text()" FIELD "custSupID" C AT 175 DEC 0 WID 5 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/trLine/custSupID/text()" FIELD "invRef" C AT 180 DEC 0 WID 8 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/trLine/invRef/text()" FIELD "projID" C AT 188 DEC 0 WID 12 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/trLine/projID/text()" FIELD "prodID" C AT 200 DEC 0 WID 4 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/trLine/prodID/text()" FIELD "costID" C AT 204 DEC 0 WID 4 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/trLine/costID/text()" FIELD "vatID" C AT 208 DEC 0 WID 1 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/trLine/vat/vatID/text()" FIELD "vatPerc" N AT 209 DEC 3 WID 6 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/trLine/vat/vatPerc/text()" FIELD "vatAmnt" N AT 215 DEC 2 WID 6 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/trLine/vat/vatAmnt/text()" FIELD "vatAmntTp" C AT 221 DEC 0 WID 1 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/trLine/vat/vatAmntTp/text()" FIELD "curCode" C AT 222 DEC 0 WID 3 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/trLine/currency/curCode/text()" FIELD "curAmnt" N AT 225 DEC 2 WID 7 PIC "" AS "" RULE "/auditfile/company/transactions/journal/transaction/trLine/currency/curAmnt/text()" 


COM het subledgers import deel:

IMPORT XML TO subledgers "subledgers.fil" FROM "%vInput_file%" FIELD "sbType" C AT 1 DEC 0 WID 2 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbType/text()"FIELD "linesCount" N AT 3 DEC 0 WID 2 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/linesCount/text()"FIELD "totalDebit" N AT 5 DEC 2 WID 8 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/totalDebit/text()"FIELD "totalCredit" N AT 13 DEC 2 WID 8 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/totalCredit/text()"FIELD "curCode" C AT 21 DEC 0 WID 3 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/currency/curCode/text()"FIELD "curAmnt" N AT 24 DEC 2 WID 7 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/currency/curAmnt/text()"FIELD "vatID" N AT 31 DEC 0 WID 1 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/vat/vatID/text()"FIELD "vatPerc" N AT 32 DEC 3 WID 6 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/vat/vatPerc/text()"FIELD "vatAmnt" N AT 38 DEC 2 WID 6 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/vat/vatAmnt/text()"FIELD "vatAmntTp" C AT 44 DEC 0 WID 1 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/vat/vatAmntTp/text()"FIELD "nr" N AT 45 DEC 0 WID 2 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/nr/text()"FIELD "jrnID" C AT 47 DEC 0 WID 3 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/jrnID/text()"FIELD "trNr" N AT 50 DEC 0 WID 2 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/trNr/text()"FIELD "trLineNr" N AT 52 DEC 0 WID 3 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/trLineNr/text()"FIELD "desc" C AT 55 DEC 0 WID 30 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/desc/text()"FIELD "amnt" N AT 85 DEC 2 WID 7 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/amnt/text()"FIELD "amntTp" C AT 92 DEC 0 WID 1 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/amntTp/text()"FIELD "custSupID" C AT 93 DEC 0 WID 5 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/custSupID/text()"FIELD "invRef" C AT 98 DEC 0 WID 8 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/invRef/text()"FIELD "invPurSalTp" C AT 106 DEC 0 WID 1 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/invPurSalTp/text()"FIELD "invTp" C AT 107 DEC 0 WID 1 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/invTp/text()"FIELD "invDt" D AT 108 DEC 0 WID 10 PIC "YYYY-MM-DD" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/invDt/text()"FIELD "invDueDt" D AT 118 DEC 0 WID 10 PIC "YYYY-MM-DD" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/invDueDt/text()"FIELD "mutTp" C AT 128 DEC 0 WID 1 PIC "" AS "" RULE "/auditfile/company/transactions/subledgers/subledger/sbLine/mutTp/text()" 

