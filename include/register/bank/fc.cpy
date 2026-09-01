      * ###############################
      * ### Autor: Reymon Dev       ###
      * ### Datum: 17. August. 2026 ###
      * ### Aktua: 17. August. 2026 ###
      * ### Lizenz: MIT             ###
      * ###############################

           SELECT OPTIONAL BANK-DF
           ASSIGN TO "bank.db", *> Book Transaction Database
           ORGANIZATION IS INDEXED
           ACCESS IS RANDOM
           RECORD KEY IS LK-BANK-FISCAL-ID
           ALTERNATE RECORD KEY IS LK-BANK-COUNTRY
           FILE STATUS IS WS-RCBS-BANK-FST.