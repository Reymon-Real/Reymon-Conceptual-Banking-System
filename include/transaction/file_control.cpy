      ***********************************
      *** Author:  Reymon Dev         ***
      *** Date:    April 18 from 2026 ***
      *** Update:  April 18 from 2026 ***
      *** License: AGPL-3-or-later    ***
      ***********************************

           SELECT OPTIONAL RCBS-TRANSACTION-DF
           ASSIGN TO "transaction.db", *> Book Transaction Database
           ORGANIZATION IS INDEXED
           ACCESS IS RANDOM
           RECORD KEY IS RK-TRNC-ID
           
           ALTERNATE RECORD KEY IS ARK-TRNC-COUNTRY-ORIGIN  *> Country id
           ALTERNATE RECORD KEY IS ARK-TRNC-COUNTRY-RECEIVE *> Country id
           
           ALTERNATE RECORD KEY IS ARK-TRNC-BANK-ORIGIN  *> fiscal id
           ALTERNATE RECORD KEY IS ARK-TRNC-BANK-RECEIVE *> fiscal id
           
           ALTERNATE RECORD KEY IS ARK-TRNC-ACCOUNT-NUMBER-ORIGIN
           ALTERNATE RECORD KEY IS ARK-TRNC-ACCOUNT-NUMBER-RECEIVE

           ALTERNATE RECORD KEY IS ARK-TRANSACTION-CURRENCY
           ALTERNATE RECORD KEY IS ARK-TRANSACTION-DATE-FORMAT
           
           FILE STATUS IS WS-TRNC-BANK-FILE-STATUS.