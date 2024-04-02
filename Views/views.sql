
-- Views 

/*  Sono degli oggetti virtuali che fungono da tabelle virtuali.

    E' una query predefinita che è stata memorizata nel database sotto forma di oggetto.

    per creare una vista query si usa CREATE VIEW

    Non memorizza fisicamente i dati per questo viene definita tabella virtuale

*/

CREATE VIEW nome_view

AS 
SELECT 
    parametro, 
    parametro, 
FROM
    nome_colonna
JOIN 
    nome_colonna e ON condizione = condizione
WHERE 
    condizione


-- per richiamare la view 
SELECT * FROM nome_view

----------------------------------------------------------------

-- WITH CHECK OPTION
/*  E' una clausola aggiuntuiva usata nella creazione della view, utilizzata per grantire
    la coerenza della vista, quando crei o modifichi la vista.

    Utile quando si vogliono garantire regole di integrità dei dati attraverso le views, grantendo
    che solo le modifiche consentite siano eseguite e che non vengano introdotti dati non validi nel DB
*/

----------------------------------------------------------------

-- WITH CHECK OPTION LOCAL 
/*  Viene applicato il controllo di integrità solo ai dati che vengono modificati attraverso la view stessa,
    solo ai dati modificati attraveso la view stessa
*/

--------------------

-- WITH CHECK OPTION RECURSIVE
-- WITH CHECK OPTION CASCADED
/*  Viene applicato sia ai dati che vengono modficati attraverso la view stessa che a quelli che vengono modificati
    direttamente sulla tabella, anche quindi a quei dati modificati direttamente su una tabella
*/

----------------------------------------------------------------

-- SHOW CREATE VIEW

SHOW CREATE VIEW nome:view; -- Visualizza il codice utilizzato per creare una view 

----------------------------------------------------------------

-- SHOW FULL TABLE

SHOW FULL TABLES 
WHERE table_type = 'VIEW'; -- Visualizza tutte le view presenti nel DB

----------------------------------------------------------------

-- RENAME TABLE

RENAME TABLE original_view_name -- Rinominare il nome di una vista
TO new_view_name;

----------------------------------------------------------------

-- DROP VIEW

DROP VIEW [IF EXISTS] view_name; -- Eliminare un view

DROP VIEW [IF EXISTS] view_name1 [,view_name2]...; -- Per rimuovere più view in una singola istruizone

----------------------------------------------------------------
