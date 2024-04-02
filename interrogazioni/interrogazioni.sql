
----------------------------------------------------------------

    -- INTERROGZIONI: SELECT / FROM / WHERE

SELECT -- istruzione di interrogazione COSA VOGLIO 
FROM Persona -- DA DOVE LO PRENDO
WHERE Persona.nome = 'Mario' -- COSA VOGLIO NELLO SPECIFICO (condizioni)

DISTINCT  -- con DISTINCT possiamo togliere i duplicati

SELECT * -- seleziniamo tutta la tabella, tutti gli attributi della tabella

----------------------------------------------------------------

    -- LIKE 

/*
    LIKE viene utilizzato con WHERE per cercare uno specifico campo in una colonna

    - % rappresenta zero, uno o più caratteri
    - _ rappresenta un singolo carattere
*/


LIKE 'x%' -- INIZIA con .. 
LIKE '%x%' -- CONTIENTE ..
LIKE '%x' -- FINISCE con ..
LIKE 'a%b' -- INIZIA con .. FINISCE con..

LIKE 'a___%' -- INIZIA con .. LUNGO ALMENO ..
LIKE '_x%' -- HA .. NELLA SECONDA POSIZIONE
LIKE citta 'Roma' -- TUTTE caratteristiche con citta ROMA

----------------------------------------------------------------

    -- Ordinamento ORDER BY

SELECT * 
FROM Persona AS p
WHERE ...
ORDER BY  p.nome ASC -- ordinamento

ASC | DESC -- asc : crescente / desc: decrescente 

----------------------------------------------------------------

    -- GROUP BY raggruppa le righe di un insieme di risultati in base ai valori di una o più colonne
    GROUP BY

----------------------------------------------------------------

    -- FUNZIONI AGGREGATE

COUNT(*) -- numero di ennuple (colonne)

COUNT(DISTINCT attributo) -- numero di valori non NULL e distinti per l'attribuo 

----------------------------------------------------------------

    -- FUNZIONI CONTROLLO DI FLUSSO

-- CASE valuta un serie di condizioni e retituisce un risultato in base alla prima condizione sodisfatta

SELECT 
    CASE 
        WHEN condition1 THEN result1
        WHEN condition2 THEN result2
        ELSE default_result
    END AS column_alias
FROM table_name;

----------------------------------------------------------------

-- IF esegue operazioni condizionali 

SELECT IF(condition, true_value, false_value) AS column_alias

----------------------------------------------------------------

    -- FUNZIONI


-- GORUP_CONCAT() concatenare i valori di una colonna in un unico valore di stringa, raggruppando i risultati basati su un criterio specificato
GROUP_CONCAT(espressione [SEPARATOR 'separatore'])

---------------------

--  IFNULL() consente di restituire un valore alternativo se un'espressioe è NULL
IFNULL(nome, 'valore in caso nome sia NULL')

---------------------

-- JOIN ON combinare righe di due o più tabelle, in base a una colonna correlata tra di loro
JOIN table2 ON table1.column_name = table2.column_name;

-- diversi tipi di Join

-- INNER JOIN solo le righe che presentano valori corrispondenti in entrambe le tabelle.
-- LEFT JOIN tutte le righe dalla tabella a sinistra (prima tabella menzionata dopo FROM), e le righe corrispondenti dalla tabella a destra (seconda tabella menzionata dopo JOIN).
-- RIGHT JOIN  tutte le righe dalla tabella a destra e le righe corrispondenti dalla tabella a sinistra
-- FULL JOIN le righe quando c'è una corrispondenza in una delle tabelle.

----------------------------------------------------------------

    -- OPERATORI

-- BETTWEEN seleziona i valori all'interno di un determinato intervallo

WHERE column_name BETWEEN value1 AND value2;

-- con NOT vedremo i valori fuori da quell'intervallo

WHERE column_name NOT BETWEEN value1 AND value2;

-- compresi e in quella determinata categoria

WHERE column_name BETWEEN value1 AND value2 AND column_name IN (value1, value2)

---------------------

-- EXISTS restiuisce TRUE se la sottoquery restiuisce uno o più record
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20); -- elenca i fornitori co nun prezzo del prodotto inferirore a 20

---------------------

-- IN consente di specificare più valori in una WHERE, è una scorciatoia per più OR
WHERE category_id IN (1, 2, 3); -- Seleziona tutti i prodotti la cui categoria sia 1, 2 o 3

---------------------

-- ANY restituisce un valore booleano, restituisce TURE se qualsiasi valore della sottoquery soddisfa la condizione
WHERE column_name operator ANY  

SELECT ProductName
FROM Products
WHERE ProductID = ANY (SELECT ProductID FROM OrderDetails WHERE Quantity = 10); -- Elenca ProductName se trova qualsiasi record con OrdineDetails = a 10

---------------------

-- ALL restituisce un valore booleano, restituisce TURE se TUTTI i valori della sottoquey sono veri

-- Sintassi con SELECT 
SELECT ALL column_name(s)
FROM table_name
WHERE condition;

-- Sintassi con WHERE o HAVING 
SELECT column_name(s)
FROM table_name
WHERE column_name operator ALL (SELECT column_name FROM table_name WHERE condition);

-- es.
SELECT ProductName
FROM Products
WHERE ProductID = ALL (SELECT ProductID FROM OrderDetails WHERE Quantity = 10); -- Elenca ProductName se TUTTI i record nella tabella hanno quantità = a 10

---------------------

-- LIMIT clausola che viene utilizzata per specificare il numero di record da restituire. 
SELECT * 
FROM Persone
LIMIT 3 -- seleziona i primi 3 campi della tabella Persone

---------------------

-- UNION combina il set di risultati di due o più select, seleziona solo i valori distinti
SELECT column_name FROM table1
UNION  
SELECT column_name FROM table2

---------------------

-- UNION ALL combina il set di risultati di due o più select, seleziona nache i duplicati
SELECT column_name FROM table1
UNION ALL 
SELECT column_name FROM table2

---------------------

-- HAVING utilizzata insieme a GROUP_BY filtra i risultati su valori aggregati. HAVING vinete utilizzato per applicre condizioni di filtro ai gruppi di righe dopo che sono stati raggruppati
SELECT customer_id, COUNT(*) AS order_count
FROM orders
GROUP BY customer_id
HAVING order_count >= 5; -- filtra i risultati in modo che restituisca solo i gruppi di righe il cui numero ordini è maggiore o uguale a 5

----------------------------------------------------------------
