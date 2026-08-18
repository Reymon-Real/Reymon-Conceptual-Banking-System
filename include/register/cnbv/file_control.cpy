      * ###############################
      * ### Autor: Reymon Dev       ###
      * ### Datum: 17. August. 2026 ###
      * ### Aktua: 17. August. 2026 ###
      * ### Lizenz: MIT             ###
      * ###############################

           SELECT OPTIONAL TRANSACTION-DATA-FILE
           ASSIGN TO "cnbv.db", *> Book Transaction Database
           ORGANIZATION IS INDEXED
           ACCESS IS RANDOM
           RECORD KEY IS KSDS-TRNC-ID
           
           ALTERNATE RECORD KEY IS KSDS-TRNC-COUNTRY-ORIGIN  *> Country id
           ALTERNATE RECORD KEY IS KSDS-TRNC-COUNTRY-RECEIVE *> Country id
           
           ALTERNATE RECORD KEY IS KSDS-TRNC-BANK-ORIGIN     *> fiscal id
           ALTERNATE RECORD KEY IS KSDS-TRNC-BANK-RECEIVE    *> fiscal id
           
           ALTERNATE RECORD KEY IS KSDS-TRNC-ACCOUNT-NUMBER-ORIGIN
           ALTERNATE RECORD KEY IS KSDS-TRNC-ACCOUNT-NUMBER-RECEIVE

           ALTERNATE RECORD KEY IS KSDS-TRNC-CURRENCY
           ALTERNATE RECORD KEY IS KSDS-TRNC-DATE-FORMAT
           
           FILE STATUS IS WS-TRNC-BANK-FILE-STATUS.