---- GENERAZIONI ----------------

-- MAKEDATE() genera una data utilizando un anno e un giorno dell'anno specificati
MAKEDATE(anno, giorno_dell_anno)

-- anno: è l'annno della data che si desidera creare 
-- giorno dell'anno:  è il giorno dell'anno corrispondente alla data che si desidera creare.

SELECT MAKEDATE(2024, 100) AS data_generata; -- restituisce "2024-04-09" perchè il 100° giorno del 2024 è il 9 Aprile 

----------------------------------------------------------------

-- MAKETIME()  usato per creare un valore di tempo basato su ore,minuti e secondi specificati
MAKETIME(ore, minuti, secondi)

SELECT MAKETIME(8, 30, 0) -- il risultaot sarà '08:30:00'


