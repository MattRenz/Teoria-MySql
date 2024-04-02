
-- Cursor

/*  Un cursore è un oggetto che consente di attraversare i risultati di una query 
    UNO per UNO, permettendo di processare riga per riga i risultati ottentuti.
    Praticamente ogni risultato della query lo aprirà in un file a parte

    Di solito sono utilizzati dentro le procedure
*/

-- Dichiarazione del cursore
DECLARE cur CURSOR FOR SELECT nome_colonna FROM nome_tabella;

-- Apertura del cursore
OPEN cur;

-- Fetch delle righe
FETCH cur INTO variabile;

-- Elaborazione dei dati
-- (Puoi continuare a eseguire FETCH finché ci sono righe disponibili)

-- Chiusura del cursore
CLOSE cur;


-- Esempio. In questo esempio per ogni nome e cognome della tabella personale aprirà un file query

CREATE PROCEDURE visualizza_persone()
BEGINs
    DECLARE done INT DEFAULT FALSE; -- Variabile per verificare se il cursore ha terminato di attraversare i risultati
    DECLARE nome_cliente VARCHAR(255); -- Variabile per memorizzare il nome del cliente
    DECLARE cognome_cliente VARCHAR(255); -- Variabile per memorizzare il cognome del cliente
    
    -- Dichiarazione del cursore per selezionare i nomi e i cognomi dei clienti
    DECLARE cur CURSOR FOR SELECT nome, cognome FROM personale p ;
    
    -- Dichiarazione di un gestore per il caso in cui il cursore non trovi ulteriori righe
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    -- Apertura del cursore
    OPEN cur;
    
    -- Inizio del ciclo per attraversare i risultati del cursore
    read_loop: LOOP
        -- Fetch della riga corrente
        FETCH cur INTO nome_cliente, cognome_cliente;
        
        -- Se non ci sono ulteriori righe da leggere, esci dal ciclo
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        -- Visualizza il nome e il cognome del cliente
        SELECT CONCAT(nome_cliente, ' ', cognome_cliente) AS nome_completo;
    END LOOP;
    
    -- Chiusura del cursore
    CLOSE cur;
END//
