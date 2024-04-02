---- AGGIUNGERE ----------------

-- ADDDATE() Aggiungere valori temporali (intervalli) a un valore di data
SELECT ADDDATE('DATA DI NASCITA'  INTERVAL 7 DAY) -- in giorni 
SELECT ADDDATE('DATA DI NASCITA'  INTERVAL 7 MONTH) -- in mesi 
SELECT ADDDATE('DATA DI NASCITA'  INTERVAL 7 YEAR) -- in anni

----------------------------------------------------------------

-- ADDTIME() aggiungere un intervallo di tempo a una data o un orario
SELECT ADDTIME('2024-03-19 08:00:00', '03:30:00') AS NewDateTime; -- aggiungiamo 3 ore e 30m

----------------------------------------------------------------

-- DATE_ADD() -- aggiunge una quantita ti tempo a una data
SELECT DATE_ADD('DATA e/o ORA', INTERVAL 1 DAY)
SELECT DATE_ADD('DATA e/o ORA', INTERVAL 1 MONTH)
SELECT DATE_ADD('DATA e/o ORA', INTERVAL 1 YEAR)
SELECT DATE_ADD('DATA e/o ORA', INTERVAL 1 HOUR)
SELECT DATE_ADD('DATA e/o ORA', INTERVAL 1 MINUTE)
SELECT DATE_ADD('DATA e/o ORA', INTERVAL 1 SECOND)

---------------------------------------------------------------

-- PERIOD_ADD() aggiunge un numero specifico di mesi a un valore period. 
PERIOD_ADD(periodo, mesi_da_aggiungere)

-- periodo è il vaore period a cui desideriamo aggiungere mesi
-- mesi da aggiungere è il numero di mesi da aggiungere

PERIOD_ADD(202203, 5) -- da '2022/03' restituisce 202208 -> '2022/08'

----------------------------------------------------------------

-- PERIOD_ADD() aggiunge un numero specifico di mesi a un valore period. 
PERIOD_ADD(periodo, mesi_da_aggiungere)

-- periodo è il vaore period a cui desideriamo aggiungere mesi
-- mesi da aggiungere è il numero di mesi da aggiungere

PERIOD_ADD(202203, 5) -- da '2022/03' restituisce 202208 -> '2022/08'

----------------------------------------------------------------

-- PERIOD_ADD() aggiunge un numero specifico di mesi a un valore period. 
PERIOD_ADD(periodo, mesi_da_aggiungere)

-- periodo è il vaore period a cui desideriamo aggiungere mesi
-- mesi da aggiungere è il numero di mesi da aggiungere

PERIOD_ADD(202203, 5) -- da '2022/03' restituisce 202208 -> '2022/08'

----------------------------------------------------------------

-- PERIOD_ADD() aggiunge un numero specifico di mesi a un valore period. 
PERIOD_ADD(periodo, mesi_da_aggiungere)

-- periodo è il vaore period a cui desideriamo aggiungere mesi
-- mesi da aggiungere è il numero di mesi da aggiungere

PERIOD_ADD(202203, 5) -- da '2022/03' restituisce 202208 -> '2022/08'

----------------------------------------------------------------

-- TIMESTAMPADD() aggiunge un intervallo di tempo a un valore di timestamp sepcifico

TIMESTAMPADD(unità, quantità, valore_timestamp)

SELECT TIMESTAMPADD(MONTH, 3, '2024-03-19 12:00:00') -- 2024-06-19 12:00:00