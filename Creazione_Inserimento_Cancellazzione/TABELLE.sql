---------------------------------------------------------------- 

    -- CREAZIONE DATABASE

CREATE DATABASE nome_database -- [opzioni]

--creazione schema
CREATE SCHEMA nome_schema -- [opzioni]

-- creazione tabella
CREATE TABLE nome_tabella (..)

---------------------------------------------------------------- 

--CREAZIONE TABELLA
CREATE TABLE nome_tabella(..)

CREATE TABLE Studente (

    codice integer not null,
    nome character varying (100) not null,
    cognome character varying (100) not null unique,
    stipendio integer default 0,
    matricola_id integer (4) not null
    check (stipendio >= 0)
    primary key (codice)
    foreign key (matricola_id)
)

PRIMARY KEY (id) -- specifica che la colonna è una chiave primaria e sarà unica per ogni riga

VARCHAR (valore) -- valore di lunghezza vario fino a un determinato valore

NOT NULL -- La colonna non può contenre valori NULL

DEFAULT (valore) -- valore: imposta un valore predefinito per la colonna in caso non sia inserito

CHECK (condizione): -- vincolo di dominio, impone una condizione su un valore di una colonna 

UNIQUE (id) -- assicura che tutti i vlaori in una colonna siano univici all'interno della tabella impedendo l'inserimento di valori duplicati nella colonna

FOREIGN KEY (id) -- è un campo (o una raccolta di campi) in una tabella, che fa riferimento a PRIMARY KEYin un'altra tabella. (Collegamento a un altra tabella)

----------------------------------------------------------------

    -- Creazione domini: DOMAIN / TYPE 

CREATE DOMAIN -- tipo specializzato

CREATE DOMAIN voto AS INTEGER DEFAULT 0 CHECK (VALUE >= 18 AND VALUES <= 30) -- (valori interi tra 18 e 30)

----------------------------------------------------------------

CREATE TYPE -- tipo enumerativo

CREATE TYPE genere AS ENUM('M', 'F') -- il dominio genere ha due identificatori

----------------------------------------------------------------

-- tipo record
CREATE TYPE inidirizzo(
        via VARCHAR(200), citta VARCHAR(100)
    )

----------------------------------------------------------------

    -- INSERIMENTO, Inserimento: INSERT INTO

INSERT INTO Nome_tabella(colonna1,colonna2)
VALUES('valore_c1', 'valore_c2')

----------------------------------------------------------------

-- ELIMINAZIONE, : DROP elimina COMPLETAMENTE la tabella dal DB
DROP TABLE nome_tabella;

----------------------------------------------------------------

-- ELIMINAZIONE: DELTE elimina COMPLETAMENTE i dati dalla tabella

DELETE FROM nome_tabella;

----------------------------------------------------------------

-- MODIFICARE TABELLA: aggiungere, modificare, eliminare colonne, vincoli, 

-- AGGIUNGI COLONNA
ALTER TABLE nome_tabella
ADD nome_colonna tipo_dato [vincolo];

-- MODIFICA COLONNA
ALTER TABLE nome_tabella
ALTER COLUMN nome_colonna nuovo_tipo_dato;

-- ELIMINIAZIONE COLONNA
ALTER TABLE nome_tabella
DROP COLUMN nome_colonna;

-- AGGIUNGI E RIMUOVI VINCOLI
ALTER TABLE nome_tabella
ADD CONSTRAINT nome_vincolo tipo_vincolo (colonna) [azione_di_riferimento];

ALTER TABLE nome_tabella
DROP CONSTRAINT nome_vincolo;

-- RINOMINA TABELLA 
ALTER TABLE nome_tabella
RENAME TO nuovo_nome_tabella;

----------------------------------------------------------------

-- UPDATE

-- Aggiungere/modificare valori di una riga
UPDATE nome_tabella
SET nome_colonna = valore
WHERE id = 1 -- esempio

----------------------------------------------------------------
