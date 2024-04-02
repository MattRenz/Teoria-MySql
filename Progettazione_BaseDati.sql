"""
Passi della progettazione della base dati

    1. Decidere la corrispondenza dei tipi di dato concettuali in domini SQL 

    2. Progetteremo lo shcerma relazionale della BD, tenendo conto dei vincoli e dei reuquisiti

    3. Progetteremo le specifiche realizzativi delle operazioni di use-case

"""


"""
Scrivere lo schema relazionale, a partire dal diagramma delle classi UML

    1. Ristrutturare il diagramma UML:
        
        - Un nuovo diagramma ristutturato:

            - Definisce solo le classi le cui istanza vengono memorizzate nel DB
            - Non ha operazioni di classe 

        - E' equivalente all'orginale, permette di rapprasentare gli stessi livelli estensionali dei dati

        - Contiene solo costrutti semplici: classe, associazione, attributi di tipi di dato disponibili in SQL, molteplicità massima paria a 1

        - Tiene conto di alcuni requistii di performace 

    2. Traduzione diretta: 

        Produciamo lo schema relazionale dalla base dei dati a partire dal diagramma delle classi
        ristrutturato, e tenendo conto di ulteriori requisiti di performace



    Punti da seguire: 

        1. Eliminazione di attributi multivalore

        2. Sostituzione dei tipi di dato concettuali con opportuni tipi supportati dal DBMS (tipi base o
        de niti dall’utente)

        3. Eliminazione delle generalizzazioni tra classi

        4. Eliminazione delle generalizzazioni tra associazioni

        5. Definizione di un identificatore per ogni classe

        6. Selezione di un identi catore primario per ogni classe

"""

""" 
    Scelta di tipo di dato 

        Tipi concettuali base: 

            UML -> intero, reale, stringa, Data, Ora, DataOra, etc. 
            SQL -> integer, varchar(…), Date, Time, DateTime, TimeStamp, etc.


        Tipoi concettuali specializzati: 

            UML ->  intero > 0, reale <= 0, [x, y], etc.
            SQL -> CREATE DOMAIN intero AS Integer CHECK (value > 0)


        Tipo concettuali enumerativi: 

            UML -> {M,F}
            SQL -> CREATE TYPE Genere AS ENUM ('M', 'F') 

        
        Tipi concettuali comporti (problema): 

            UML -> Indirizzo(Via: stringa, Citta: stringa)
            SQL -> CREATE TYPE Indirizzo(via varchar(200), citta varchar(100)


    Creazione di domini ausiliari: 

        Esempio: 

        UML -> Indirizzo: record(via: stringa, civico: intero > 0)

        SQL:
            CREATE TYPE Indirizzo(
                via varchar(100) 
                civico integer NOT NUL CHECK (value > 0)
            )

        NOT NULL e CHECK non sono supportati da Postgres SQL 
        
        Per risolvere ciò si vanno a creare dei domini usiliari:

            CREATE DOMAIN String100_not_null as varchar(100)
                CHECK (valure is NOT NULL)
            

            CREATE DOMAIN Int_not_nul AS Integer
                CHECK (value is NOT NULL and value > 0)


            E ora creato i dati possiamo creare indirizzo

            CREATE TYPE Indirizzo(
                via String100_not_null,
                civico int_not_null            
            )

"""
