
-- Procedure 

/*  Sono un inseime di istruzioni SQL che possoon essere definite una volta e poi richiamate
    più volte per eseguire operazion specifiche sul database. Consentono di ragguprare una serie 
    di operazioni complesse in un unica unità logica che può essere eseguita in modo efficente e riutilizzabile
    (un pò simile a una funzione di Python o Java e poi richiamata)

    Le funzioni vengono eseguite all'interno di un blocco chiamato BEGIN ... ENDs

    Possono accettare parametri di input e restituire valori di output.
*/

CREATE PROCEDURE nome_procedura(parametri)
BEGIN
    -- Corpo della procedura
END;

-- per utlilizzare una funzione 
CALL nome_procedura

----------------------------------------------------------------

-- Esempio:
CREATE PROCEDURE conta_studenti(classe_id INT, OUT num_studenti INT) -- accetta dei parametri di input
BEGIN
    SELECT COUNT(*) INTO num_studenti
    FROM studenti
    WHERE classe_id = classe_id;
END;

CALL conta_studenti(1, @num_studenti); -- parametri di input forniti
SELECT @num_studenti; -- @ riferito alla variabile di sessione


-- Esempio: 

CREATE PROCEDURE inserisci_cliente(
    IN p_nome VARCHAR(50),
    IN p_cognome VARCHAR(50),
    IN p_email VARCHAR(100)
)
BEGIN
    INSERT INTO clienti (nome, cognome, email)
    VALUES (p_nome, p_cognome, p_email);
END;

CALL inserisci_cliente('Mario', 'Rossi', 'mario@email.com');

----------------------------------------------------------------

-- Differenze tra TRIGGER e PROCEDURE

/*
    Le procedure vengono utilizzate pr eseguire un insieme di istruzioni SQL specifiche 

    I trigger vengono utilizzati per reagire automaticamente a degli eventi che si verificano nelle tabelle del DB (UPDATE, INSERT, DELETE)
*/