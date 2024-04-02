
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