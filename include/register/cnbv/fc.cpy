      * ###############################
      * ### Autor: Reymon Dev       ###
      * ### Datum: 17. August. 2026 ###
      * ### Aktua: 17. August. 2026 ###
      * ### Lizenz: MIT             ###
      * ###############################

           SELECT OPTIONAL RCBS-CNBV-DF
           ASSIGN TO "test/cnbv.db"
           ORGANIZATION IS INDEXED
           ACCESS IS DYNAMIC
           RECORD KEY IS RK-CNBV-ID
           
           ALTERNATE RECORD KEY IS ARK-CNBV-COUNTRY-ORIGIN  *> Country id
           ALTERNATE RECORD KEY IS ARK-CNBV-COUNTRY-RECEIVE *> Country id
           
           ALTERNATE RECORD KEY IS ARK-CNBV-BANK-ORIGIN     *> fiscal id
           ALTERNATE RECORD KEY IS ARK-CNBV-BANK-RECEIVE    *> fiscal id
           
           ALTERNATE RECORD KEY IS ARK-CNBV-ACCOUNT-NUMBER-ORIGIN  *> Account Number
           ALTERNATE RECORD KEY IS ARK-CNBV-ACCOUNT-NUMBER-RECEIVE *> Account Number

           ALTERNATE RECORD KEY IS ARK-CNBV-CURRENCY
           ALTERNATE RECORD KEY IS ARK-CNBV-DATE-FORMAT
           
           FILE STATUS IS WS-CNBV-FST.