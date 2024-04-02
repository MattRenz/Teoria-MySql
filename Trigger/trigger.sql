
-- TRIGGER

/*
    I trigger definiscono delle azioni autoamtiche che devono essere eseguite quando viene 
    verficata una determinata condizione su una tabella. 

    Ci sono due principali trigger: 

        - BEFORE TRIGGER: eseguito PRIMA che l'operazione che ha scatenato il trigger venga effetuata dalla tabella. 

        - AFTER TRIGGER: eseguito DOPO che l'operazione è stata eseguita con successo dalla tabella
*/

-- per vedere i trigger attivi
SHOW TRIGGERS LIKE 'nome_tabella';

---------------------

-- eliminare un trigger 
DROP TRIGGER IF EXISTS nome_del_trigger;

---------------------

-- creare un trigger

CREATE TRIGGER nome_trigger
{BEFORE | AFTER} {INSERT | UPDATE | DELETE}
ON nome_tabella
FOR EACH ROW
BEGIN
    -- Corpo del trigger: codice SQL che definisce le azioni da eseguire
END;

---------------------

-- OLD e NEW tirgger

-- NEW fa riferimento ai nuovi valori che verranno inseriti o aggiornati nella tabella. 

-- OLD fa riferimento ai valori precedentementi della riga prima dell'aggiornamento o eliminazione

---------------------

/*

Validazione dei dati 
    È possibile utilizzare i trigger per verificare se i dati soddisfano 
    determinate condizioni prima di consentire l'inserimento, 
    l'aggiornamento o l'eliminazione.


Audit dei dati

    I trigger possono essere utilizzati per registrare le modifiche apportate ai dati, 
    come chi ha apportato la modifica e quando.


Sincronizzazione dei dati tra tabelle
    È possibile utilizzare i trigger per aggiornare automaticamente altre tabelle 
    quando vengono apportate modifiche a una tabella specifica.


Vincoli di integrità
    I trigger possono essere utilizzati per applicare vincoli di integrità complessi
    che non possono essere gestiti tramite le normali restrizioni di chiave esterna.

Generazione di valori predefiniti

    È possibile utilizzare i trigger per generare valori predefiniti 
    per determinati campi prima di inserire una nuova riga.

*/

---------------------

-- UPDATE BEFORE/AFTER

/*
    Before: E' possibile modificare i valori che verranno effetivamente
    aggiornati nella tabella. Manipolare i dati prima che vengano effettivamente modificati

    After: E' possibile eseguire azioni dopo che l'operazione di aggiornamento è stata completata
    Utilizzato per loggare le modifiche, aggiornare altre tabbelle o inviare notifiche.
    Utile per gestire le azioni che devono essere eseguite dopo che i dati sono stati aggioranti con successo
*/

---------------------

-- DELETE BEFORE/AFTER

/*
    Before: viene esseguito prrima che venga efetuata l'operazione di eliminazione sui dati di una tabella
    utile quando si desidera eseguire un'azione o applicare una regola prima che i dati vengano eliminati

    After: viene eseguito dopo ch eè stata completata con successo l'operazione di eliminazione sui dati di una
    tabella. E' utile quando si desidera eseguire un azione o registrare un evento dopo che i dati sono stati eliminati

*/

---------------------

-- INSERT BEFORE/AFTER

/*
    Before: viente attivato prima che una nuova riga vegn effetivamente inserita nella tabella. Piò essere utilizzato 
    per eseguire controlli o modificare i ati prima che vengano scritti nel DB

    After: viene attivato dopo che una nuova riga è stata inserita nella tabella. E' utile per eseguire azioni aggiuntive 
    dopo che i dati sono stati scritti nel DB

*/

---------------------

-- BEFORE ALTER

/* 
    Before: Utilizzato per eseguire azioni o controlli prima che venga apportata una modifica a un ogetto del DATABASE
    Alter: Utilizzato per eseguire azioni o controlli dopo che è stata apportata una modifica a un oggetto del DATABASE
*/

---------------------

-- BEFORE DROP 

/* 
    Before: Utilizzato per eseguire azioni o controlli prima che un oggetto venga elimianto dal DB 
    After: Utilizzato per eseguire azioni o controlli dopo che un oggetto venga eliminao dal DB
*/

---------------------

-- AFTER CREATE 

/* Può essere utilizzato per eseguire azioni o operazioni dopo un oggetto è stato creato */