
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