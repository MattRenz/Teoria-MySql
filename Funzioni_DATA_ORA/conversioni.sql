
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