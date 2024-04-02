----------------------------------------------------------------

-- ASCII() restituisce il valore ASCII del primo carattere di una stringa
ASCII() -- 'A' = 65

----------------------------------------------------------------

-- CHAR() converte un numero intero in un carattere corrispondente al numeri ASCII
CHAR() -- 65 = 'A'

----------------------------------------------------------------

-- CHAR_LENGTH() restituisce la lunghezza di nuna stringa in termini di numero di caratteri
CHAR_LENGTH('nome ') -- conta anche gli spazi in questo caso nome(4) + 1 spazio = 5

----------------------------------------------------------------

-- CONCAT() restituisce la concatenazione di due stringhe
CONCAT('stringa1', ' ', 'stringa2')

----------------------------------------------------------------

-- CONCAT_WS() restituisce la concatenazione di due stringhe con separatore, in caso sono più stirnge con lo stesso separatore
CONCAT_WS(separator, 'stringa1', 'stringas2')

----------------------------------------------------------------

-- ELT() restituisce l'elemento corrispondente a un indice specificato da una lista di stringhe
ELT(index, string1, string2)

SELECT ELT(2, 'Apple', 'Banana', 'Orange') AS Selected_Fruit; -- risultato = 'Banana'

----------------------------------------------------------------

-- FIELD() restituisce la posizone di un valore all'interno di una lista di valori 
FIELD(value, value1, value2, ...)

SELECT FIELD('Banana', 'Apple', 'Banana', 'Orange') AS Position; -- '2'

----------------------------------------------------------------

-- LEFT() estrare un numero specifico di caratteri da una stringa, partendo dal primo carattere da sinistra 
LEFT(string, length)

SELECT LEFT('Hello World', 5) AS Result; -- 'Hello'

----------------------------------------------------------------

-- LENGTH() restituisce la lunghezza di una stringa in numero di caratteri senza spazi
LENGTH(string) -

----------------------------------------------------------------

-- LOCATE() trova la posizione di una sotto stringa all'interno di una stringa
LOCATE(substring, string [, start])

SELECT LOCATE('lo', 'Hello World'); -- Restituisce 4, poiché 'lo' inizia alla posizione 4 nella stringa 'Hello World'

----------------------------------------------------------------

-- LOWER() restituisce l'argomento in minuscolo
LOWER() 

----------------------------------------------------------------

-- LPAD() aggiunge caratteri a sinistra di una stringa fino a raggiungere la lunghezza desiderata
LPAD(string, length, pad_string)

-- stringa a cui si vogliono aggiungere caratteri
-- lunghezza desiderata della stringa risultante
-- carattere o stringa che si vuole aggiungere 

----------------------------------------------------------------

-- LTRIM() rimuove gli spazi vuoti iniziali 
LTRIM(string)

----------------------------------------------------------------

-- MATCH() esegue una ricerca full-text all'interno di una query. (Con indice full-text)
MATCH (colonna1, colonna2, ...) AGAINST (valore_da_cercare)

-- colo. 1-2 sono le colonne in cui si desidera cercare
-- valore da cercare la parola chiave o la frase che si desidera cercare all'interno delle colonne specificate

----------------------------------------------------------------

-- MID() estrae una sotto stringa da una stringa in base a un indice di inizio e una lunghezza specificata
MID(stringa, indice_inizio, lunghezza)

-- stringa che si vuole modificare 
-- indice_inizio è l'indice da cui iniziare ad estrarre la sotto stringa del primo carattere è 1
-- lunghezza è la lunghezza sa estrarre

----------------------------------------------------------------

-- NOT LIKE restituisce il vlaore di una colonna in cui il valore di una colonna non corrisponde a un modello specificato
WHERE nome_colonna NOT LIKE '%valore%'

SELECT * FROM personale p 
WHERE utente_modifica  NOT LIKE 'mario_rossi' -- estrai tutto tranne gli utenti_modifica con nome = 'mario_rossi'

----------------------------------------------------------------

-- REPEAT() ripete una stringa un certo numero di volte
REPEAT(stringa, numero_ripetizioni)

----------------------------------------------------------------

-- REPLACE() sostituisce tutte le occorenze di una sotto stringa con un'altra sottostringa
REPLACE(stringa_originale, sottostringa_da_sostituire, nuova_sottostringa)

SELECT REPLACE('Hello World', 'World', 'Universe') AS replaced_string; -- Risultato = 'Hello Universe'

----------------------------------------------------------------

-- REVERSE(stringa) inverte una stringa
REVERE()

----------------------------------------------------------------

-- RTRIM() rimuove gli spazi finali
RTRM()

----------------------------------------------------------------

-- STRCMP() cofronta due stringhe
STRCMP('stringa1', 'stringa2')

-- 0 se le stringhe sono uguali.
-- Un valore negativo se la prima stringa è minore della seconda in ordine alfabetico.
-- Un valore positivo se la prima stringa è maggiore della seconda in ordine alfabetico.

----------------------------------------------------------------

-- TRIM() rimuove gli spazi finali e iniziali
TRIM()

----------------------------------------------------------------

-- UPPER() converte tutto in maiuscolo

----------------------------------------------------------------

SUBSTRING() -- estrae una sotto stringa da una stringa

SELECT SUBSTRING('stringa', 1, 3) -- da una posizione specifica (1), per una lunghezza specifica (5)

SELECT SUBSTRING('stringa1 stringa2', ' ', 1) -- da quel separatore (''), 1 sta che vogliamo la prima sottostringa PRIMA del separatore (stringa1)

SELECT SUBSTRING('strnga1 stringa2', ' ', -1) -- da quel separatore ('' ), -1 sta che vogliamo l'ultima sottostringa DOPO il separatore (stringa 2)

