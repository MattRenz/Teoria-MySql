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


---- RESTITUZIONI, VISOINI ----------------

----------------------------------------------------------------

-- CURDATE() restituisce la data corrente
CURDATE() -- "YYYY-MM-DD"

----------------------------------------------------------------

-- CURTIME() restituisce l'orario corrente
CURTIME() -- 'HH:MM:SS'

----------------------------------------------------------------

-- DAY() restituisce il giorno del mese da una data, valore compreso tra 1 e 31
DAY('15/05/2005') --  (15)

----------------------------------------------------------------

-- DAYNAME() restituisce il nome del giorno della settimana da una data specificata
DAYNAME('Data') -- Monday", "Tuesday", "Wednesday ecc..

----------------------------------------------------------------

-- MONTHNAME() restituisce il nome el mese da una data specifica 
MONTHNAME('20/03/2024') -- March

----------------------------------------------------------------

-- DAYOFMONTH() restituisce il giorno del mese da una data specifica
DAYOFMONTH('14/12/2015') -- (14)

----------------------------------------------------------------

-- DAYOFWEEK() restituisce il giorno della settimana da una data specifica, valore compreso tra 1 e 7
DAYOFWEEK('19/03/2024') -- restituisce 3, perchè 19 è martedì e corrisponde al secondo giorno della settimana

----------------------------------------------------------------

-- DAYOFYEAR() restituisce il giorno dell'anno da una data specifica, numero compreso tra 1 e 366 giorno dell'anno
DAYOFYEAR('19/03/2024') -- restitusice 79°. (31g Gennaio, 29g Febbraio, 19g Marzo, tot = 79)

----------------------------------------------------------------

-- DATE() -- permette la visione solo delle date senza il tempo
DATE('DATE')

----------------------------------------------------------------

-- TIME() -- permette la visione solo del tempo senza data
TIME()

----------------------------------------------------------------

-- MONTH() -- permette la visione solo del mese. Valore compreso tra 1 e 12
MONTH() 

----------------------------------------------------------------

-- YEAR() permette la visione solo dell'anno da una data specifica, sensa tempo, giorno e mese
YEAR()

----------------------------------------------------------------

-- HOUR() permette la visione solo dell'ora da una data specifica, compreso tra 0 e 23
HOUR()

----------------------------------------------------------------

WEEK() -- Restituisce il numero della settimana

----------------------------------------------------------------

-- MINUTE() restituice il minuto da un valore datetime specifico. valore compresto tra 0 e 59
MINUTE()

----------------------------------------------------------------

-- MICROSECOND() restituisce i microsecondi da un valore datetime specifico. valore compreso tra 0 e 999999.
MICROSECOND()

----------------------------------------------------------------

-- SECOND() restituisce i secondi da un valore datetime specifico. valore compreso tra 0 e 59.
SECOND()

----------------------------------------------------------------

-- LAST_DAY() restituisce l'ultimo giorno del mese di una data specifica
LAST_DAY('2024-03-15') -- restituisce '2024-03-31' perchè marzo ha 31 giorni

----------------------------------------------------------------

-- LOCALTIME() restituisce l'ora corrente nel fuso orario del servere, restituisce un valore date time
LOCALTIME() 

----------------------------------------------------------------

-- LAST_DAY() restituisce l'ultimo giorno del mese di una data specifica
LAST_DAY('2024-03-15') -- restituisce '2024-03-31' perchè marzo ha 31 giorni

----------------------------------------------------------------

-- LOCALTIME() restituisce l'ora corrente nel fuso orario del servere, restituisce un valore date time
LOCALTIME() 

----------------------------------------------------------------

-- NOW() restituisce data e ora corrente come valore datetim
NOW()

----------------------------------------------------------------

UTC_DATE() -- restituisce la data UTC corrente

----------------------------------------------------------------

UTC_TIME() -- restituisce l'ora UTC corrente

----------------------------------------------------------------

UTC_TIMESTAMP() -- restituisce la data e l'ora UTC correnti

----------------------------------------------------------------

YEARWEEK() -- riporta l'anno e la settimana


---- CONVERSIONI ----------------

-- CONVERT_TZ() utilizzata per convertire un'ora da un fuso orario a un altro.
SELECT CONVERT_TZ('DATA E ORARIO', 'UTC', 'America/New_York') AS NewYorkTime; -- cambio fusorario

----------------------------------------------------------------

-- FROM _DAYS() converte un numero di giorni in una data, un numero di giorni dal 1° gennaio 0000
FROM_DAYS('numero di giorni')

----------------------------------------------------------------

-- DATE_FORMAT() formattare la data come specificato
DATE_FORMAT('DATA', '%d %M %Y')
/*
%H formato in 24h   %h fromato 12h
%d giorni           %m mesi
%Y anno per         %i secondi

è possibile separare i campi con caratteri come : _ - 
*/

----------------------------------------------------------------

-- TIME_FORMAT() formattare un valore di tempo in un formato specifico
TIME_FORMAT(valore_tempo, formato)

-- formato: è il formato di tempo desiderato (%H, %h, %i, %s, %p) con possibili marcatori

----------------------------------------------------------------

-- SEC_TO_TIME() converte un numero di secondi in un valore di tempo formato HH:MM:SS
SEC_TO_TIME(secondi)

----------------------------------------------------------------

-- TIME_TO_SEC() converte un valore di tempo in secondi
TIME_TO_SEC(valore_tempo)

----------------------------------------------------------------

-- STR_TO_DATE() converte una stringa in un valore di data
STR_TO_DATE(stirnga,formato)

-- stringa: la stringa da convertire
-- formato: il fomrato in cui si vuole converitre '%Y-%m-%d'

----------------------------------------------------------------

-- EXTRACT() etrare parti specifiche da una data o da un valore datetime. Può estrarre parti come l'anno, mese, giorno, minuti, secondi ecc.
EXTRACT(unit FROM 'data')

-- unit: è l'unità di tmepo da estrarre, come:  "YEAR", "MONTH", "DAY", "HOUR", "MINUTE", "SECOND", ecc.
-- data: è la data della quale si desidera estrarre la parte specifica


---- SOTTRAZIONI ----------------

-- DATA_SUB() sottroare una quantita specifica di tempo
DATE_SUB('DATA e/o ORA', INTERVAL 1 SECOND)
DATE_SUB('DATA e/o ORA', INTERVAL 1 MINUTE)
DATE_SUB('DATA e/o ORA', INTERVAL 1 HOUR)
DATE_SUB('DATA e/o ORA', INTERVAL 1 DAY)
DATE_SUB('DATA e/o ORA', INTERVAL 1 MONTH)
DATE_SUB('DATA e/o ORA', INTERVAL 1 YEAR)

----------------------------------------------------------------

-- SUBTIME() sottrae un intervallo di tempo da un valore specificato
SUBTIME(valore_tempo, intervallo_tempo)

-- valore tempo: il valore che vogliamo sottrare
-- intervallo di tempo: intervallo che vogliamo togliere

SELECT SUBTIME('15:30:00', '01:30:00') AS nuovo_orario; -- Sarà 14:00:00

----------------------------------------------------------------

-- DATE_DIFF() calcola la differenza tra due date. Restituisce il numero di giorni tra due date
DATEDIFF('Data1', 'Data2')

----------------------------------------------------------------

-- PERIOD_DIFF() calcola la differenza in mesi tra due valori period
PERIOD_DIFF(periodo1, periodo2)

----------------------------------------------------------------

-- TIMEDIFF() calcola la differenza tra due valori di tempo
TIMEDIFF(valore_tempo1, valore_tempo2)

----------------------------------------------------------------

-- PERIOD_DIFF() calcola la differenza in mesi tra due valori period
PERIOD_DIFF(periodo1, periodo2)

----------------------------------------------------------------

-- SUBTIME() sottrae un intervallo di tempo da un valore specificato
SUBTIME(valore_tempo, intervallo_tempo)

-- valore tempo: il valore che vogliamo sottrare
-- intervallo di tempo: intervallo che vogliamo togliere

SELECT SUBTIME('15:30:00', '01:30:00') AS nuovo_orario; -- Sarà 14:00:00

----------------------------------------------------------------

-- TIMESTAMPDIFF() restituisce la differenza tra due timestamp nell'unità specificata come ore. giorni, minuti o anni
TIMESTAMPDIFF(unità, timestamp1, timestamp2)
SELECT TIMESTAMPDIFF(DAY, '2024-03-19', '2024-04-01') AS differenza_giorni;


---- GENERAZIONI ----------------

-- MAKEDATE() genera una data utilizando un anno e un giorno dell'anno specificati
MAKEDATE(anno, giorno_dell_anno)

-- anno: è l'annno della data che si desidera creare 
-- giorno dell'anno:  è il giorno dell'anno corrispondente alla data che si desidera creare.

SELECT MAKEDATE(2024, 100) AS data_generata; -- restituisce "2024-04-09" perchè il 100° giorno del 2024 è il 9 Aprile 

----------------------------------------------------------------

-- MAKETIME()  usato per creare un valore di tempo basato su ore,minuti e secondi specificati
MAKETIME(ore, minuti, secondi)

SELECT MAKETIME(8, 30, 0) -- il risultaot sarà '08:30:00'

----------------------------------------------------------------

-- Calcolare l'età in base alla data di nascita

DATE_FORMAT(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS('DATA DI NASCITA')), '%y')+0
