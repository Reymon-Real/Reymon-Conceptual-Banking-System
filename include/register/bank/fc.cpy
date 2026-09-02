      * ###############################
      * ### Autor: Reymon Dev       ###
      * ### Datum: 17. August. 2026 ###
      * ### Aktua: 17. August. 2026 ###
      * ### Lizenz: MIT             ###
      * ###############################

           SELECT OPTIONAL REGISTER-BANK-DF
           ASSIGN TO "test/register/bank.db"
           ORGANIZATION IS INDEXED
           ACCESS IS DYNAMIC
           RECORD KEY IS RK-REGISTER-BANK-FID
           ALTERNATE RECORD KEY IS ARK-REGISTER-BANK-COUNTRY
           ALTERNATE RECORD KEY IS ARK-REGISTER-BANK-NAME
           FILE STATUS IS WS-REGISTER-BANK-FST.