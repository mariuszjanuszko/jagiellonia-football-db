🇬🇧 English version available: [README.md](README.md)

# 📊 Progetto Database Calcistico — Jagiellonia Białystok

Questo è un progetto personale di database SQL ispirato allo **Jagiellonia Białystok**, la squadra di calcio professionistica della mia città natale.

Il database è stato creato utilizzando **DBeaver** su **OracleXE 21.3**. Modella i dati principali dei giocatori della squadra, come ruoli, attributi fisici, nazionalità, dettagli contrattuali, trasferimenti e risultati delle partite.

---

## 📌 Obiettivi del Progetto

- Imparare e mettere in pratica la progettazione di database relazionali  
- Simulare strutture dati reali utilizzando il contesto calcistico  
- Prepararsi per una carriera come **Data Analyst**  
- Costruire materiale per il portfolio su GitHub e nel CV  

---

## 🏗️ Tecnologie Utilizzate

- 💻 **OracleXE 21.3** (motore di database locale)  
- 🐘 **DBeaver** (interfaccia grafica per database)  
- ✍️ **SQL** (DDL & DML)  
- 🐍 **Python** *(integrazione futura pianificata)*  
- 📊 **Power BI** *(per creare report visivi e dashboard)*  

---

## 📊 Progetto Power BI: Jagiellonia Transfers Dashboard

Questo report Power BI offre una visualizzazione interattiva e completa dei trasferimenti dei giocatori dello Jagiellonia Białystok.

**Caratteristiche principali:**

- **Carte di riepilogo** mostrano il numero totale di trasferimenti in entrata e in uscita insieme al saldo netto delle spese di trasferimento (in EUR), per una rapida panoramica dell’attività di mercato.
- **Tabella dei trasferimenti** con dettagli quali nome giocatore, data trasferimento, tipo (prestito, permanente, ecc.), club coinvolto e costo del trasferimento. 
- **Grafico a barre** che visualizza la destinazione dei trasferimenti per paese, mostrando da dove arrivano o dove vanno i giocatori.
- **Slicer interattivo** e pulsante di navigazione per passare dinamicamente tra trasferimenti in entrata e in uscita:
  - Un pulsante personalizzato apre una sovrapposizione trasparente con uno slicer per selezionare la direzione del trasferimento (in o out). 
  - La selezione aggiorna sia la tabella dei trasferimenti sia il grafico a barre delle destinazioni.
- **Drillthrough Profilo Giocatore**: cliccando con il tasto destro su un giocatore nella tabella dei trasferimenti si apre una pagina dedicata con il **profilo dettagliato del calciatore**, che include:
  - Ruolo, nazionalità, età, altezza, piede preferito
  - Statistiche della scorsa stagione (presenze, gol, assist)
  - Dettagli contrattuali (club di arrivo, scadenza contratto/data di partenza)
  - Icone e visual personalizzate per un design più intuitivo e a tema calcistico

**Obiettivi:**

- Analizzare e monitorare i modelli di trasferimento specifici dello Jagiellonia Białystok.
- Dimostrare competenze nella creazione di report dinamici con navigazione e interattività user-friendly.
- Mettere in evidenza la padronanza di funzionalità di Power BI come carte, tabelle, grafici a barre, slicer e navigazione a livelli tramite forme e pulsanti.
- Mostrare l’utilizzo delle pagine di Drillthrough per i profili dettagliati dei giocatori, integrando più punti dati (dati anagrafici, statistiche, informazioni contrattuali) in un’unica vista interattiva.
	
---

## 🐍 Analisi Python

La parte Python di questo progetto si concentra sull’analisi delle prestazioni delle partite e dei chilometri di viaggio dello Jagiellonia Białystok.

I dati vengono estratti dal database Oracle ed elaborati utilizzando pandas per pulizia, trasformazione e analisi.

**Passaggi principali:**

- Connessione al database Oracle tramite SQLAlchemy
- Estrazione dei dati di partite e club tramite query SQL
- Pulizia dei dati e standardizzazione delle colonne
- Creazione della colonna result (vittoria, pareggio, sconfitta)
- Divisione della stagione in fasi basate sulle pause internazionali
- Calcolo della distanza di viaggio tra le sedi delle partite utilizzando geopy
- Aggregazione dei risultati e dei chilometri percorsi per ogni fase della stagione

**L’analisi include:**

- Panoramica partita per partita delle prestazioni
- Risultati per fase della stagione
- Confronto delle prestazioni tra diverse competizioni
- Relazione tra distanza di viaggio e risultati delle partite

**Obiettivo:**

L’obiettivo di questa sezione è verificare se le prestazioni della squadra sono influenzate dal carico di viaggio e dal calendario delle partite.
L’analisi è esplorativa, cioè serve a identificare possibili pattern e non a dimostrare una relazione causale diretta.

---

## 📂 Panoramica del Database

### Tabella: `players`

| Nome Colonna     | Tipo Dato    | Descrizione                               			 |
|------------------|--------------|----------------------------------------------------- |
| `player_id`      | NUMBER       | Chiave primaria (auto-incrementata tramite sequenza) |
| `player_number`  | NUMBER(2)    | Numero di maglia                             		 |
| `position`       | VARCHAR2(50) | Ruolo in campo del giocatore              			 |
| `first_name`     | VARCHAR2(50) | Nome                                      		     |
| `last_name`      | VARCHAR2(50) | Cognome                                 		     |
| `birth_date`     | DATE         | Data di nascita                           			 |
| `nationality`    | VARCHAR2(50) | Nazionalità                               			 |
| `height_cm`      | NUMBER(3)    | Altezza in centimetri                     			 |
| `preferred_foot` | VARCHAR2(10) | 'left', 'right' o 'both'                  			 |

### Tabella: `clubs`

| Nome Colonna | Tipo Dato    | Descrizione                                                     |
| ------------ | ------------ | --------------------------------------------------------------- |
| `club_id`    | NUMBER       | Chiave primaria (auto-incrementata tramite sequenza)            |
| `club_name`  | VARCHAR2(50) | Nome della squadra (univoco)                                    |
| `country`    | VARCHAR2(50) | Nazione del club                                                |
| `league`     | VARCHAR2(50) | Campionato di appartenenza                                      |


### Tabella: `transfers`

| Nome Colonna              | Tipo Dato     | Descrizione                                                        |
| ------------------------- | ------------- | ------------------------------------------------------------------ |
| `transfer_id`             | NUMBER        | Chiave primaria (auto-incrementata tramite sequenza)               |
| `player_name`             | VARCHAR2(50)  | Nome completo del giocatore                                        |
| `player_id`               | NUMBER        | Chiave esterna che fa riferimento a `players(player_id)`           |
| `season`                  | VARCHAR2(10)  | Stagione del trasferimento (es. '2024/2025')                       |
| `transfer_direction`      | VARCHAR2(3)   | 'in' o 'out' (direzione del trasferimento)                         |
| `transfer_type`           | VARCHAR2(15)  | 'loan', 'permanent', 'free', 'promotion', 'retired', 'end of loan' |
| `transfer_date`           | DATE          | Data del trasferimento                                             |
| `from_club`               | VARCHAR2(100) | Club di provenienza                                                |
| `to_club`                 | VARCHAR2(100) | Club di destinazione                                               |
| `transfer_fee_eur`        | NUMBER(10, 2) | Costo del trasferimento in Euro                                    |
| `appearances_last_season` | NUMBER(3)     | Presenze nell’ultima stagione                                      |
| `goals_last_season`       | NUMBER(3)     | Gol nell’ultima stagione                                           |
| `assists_last_season`     | NUMBER(3)     | Assist nell’ultima stagione                                        |

### Tabella: `results`

| Nome Colonna        | Tipo Dato    | Descrizione                                                        |
| ------------------- | ------------ | ------------------------------------------------------------------ |
| `match_id`          | NUMBER       | Chiave primaria (auto-incrementata tramite sequenza)               |
| `season`            | VARCHAR2(10) | Stagione (es. '2024/2025')                                         |
| `match_date`        | DATE         | Data della partita                                                 |
| `opponent_club_id`  | NUMBER       | Chiave esterna da `clubs(club_id)`                                 |
| `home_or_away`      | VARCHAR2(4)  | 'HOME' o 'AWAY'                                                    |
| `jagiellonia_goals` | NUMBER(2)    | Gol segnati da Jagiellonia                                         |
| `opponent_goals`    | NUMBER(2)    | Gol segnati dalla squadra avversaria                               |
| `competition`       | VARCHAR2(50) | Competizione (es. 'Ekstraklasa', 'Polish Cup')                     |
| `attendance`        | NUMBER(5)    | Numero di spettatori                                               |
| `stadium`           | VARCHAR2(50) | Nome dello stadio         					                      |

### Tabella: `contracts`

| Nome Colonna    | Tipo Dato | Descrizione                                                     		  |
| --------------- | --------- |-------------------------------------------------------------------------- |
| `contract_id`   | NUMBER    | Chiave primaria (auto-incrementata tramite sequence)                      |
| `player_id`     | NUMBER    | Chiave esterna che fa riferimento a `players(player_id)`                  |
| `join_date`     | DATE      | Data in cui il giocatore è entrato nel club                               |
| `leave_date`    | DATE      | Data in cui il giocatore ha lasciato il club (NULL se ancora attivo)      |
| `contract_until`| DATE      | Data di scadenza originaria del contratto                                 |

### Sequenza

- `player_seq` – gestisce l’auto-incremento del campo `player_id`
- `transfer_seq` – gestisce l’auto-incremento del campo `transfer_id`
- `club_seq` – gestisce l’auto-incremento del campo `club_id`
- `match_seq` – gestisce l’auto-incremento del campo `match_id`
- `contract_seq` – gestisce l’auto-incremento di `contract_id`

---

## 🧪 Dati di Esempio

Include oltre **25 giocatori reali** attualmente associati allo **Jagiellonia Białystok**, tra cui:

- 🧤 Portieri  
- 🛡️ Difensori centrali  
- ⚙️ Centrocampisti  
- 🌀 Esterni  
- 🎯 Attaccanti centrali  

---

## 📄 Query SQL

La cartella **/sql/queries** contiene query analitiche per esplorare il database dei giocatori, tra cui:

	🇵🇱 Elenco di tutti i giocatori polacchi
	
	👟 Ricerca dei giocatori ambidestri
	
	📆 Conteggio dei giocatori per data di scadenza del contratto
	
	🎂 Calcolo dell'età dei giocatori
	
	🏆 Giocatore da più tempo nel club
	
	📥 Elenco di tutti i giocatori in arrivo
	
	💸 Saldo netto delle spese di trasferimento
	
	🌍 Conteggio dei giocatori in arrivo per nazionalità
	
	👶 Elenco dei cinque giocatori in arrivo più giovani
	
	🏟 Elenco degli stadi con una media di spettatori superiore a 15.000

	⚽ Risultati e avversari delle partite giocate allo stadio 'Chorten' con affluenza ≥ 19.000

	🔍 Ricerca dei trasferimenti che coinvolgono un determinato club (senza distinzione tra maiuscole e minuscole) con dettagli su tipo, direzione e importo
	
	📅 Partite giocate dopo la prima sosta internazionale della stagione 2025/26, inclusi data, avversario, risultato e esito della partita (Vittoria / Pareggio / Sconfitta)

---

## 🚀 Come Iniziare

1. Vai alla cartella **/sql/players_table** per visualizzare o copiare gli script SQL completi  
2. Apri **DBeaver** e connettiti alla tua istanza locale di OracleXE  
3. Esegui gli script SQL per:  
   - Eliminare e ricreare le tabelle `players` e `transfers`
   - Creare la sequenza `player_seq` e `transfer_seq`  
   - Inserire tutti i dati di esempio
4. Apri il progetto Power BI
   - Naviga nella cartella /power bi/ del repository
   - Apri il file .pbix con **Power BI Desktop**
   - Esplora la dashboard interattiva dei trasferimenti di Jagiellonia
5. Apri la cartella `/python/` del repository  
   - Troverai il notebook Jupyter (`.ipynb`) con tutta l’analisi Python  
   - Puoi aprirlo con **Jupyter Notebook** o **VS Code** 
   - Include pulizia dati, analisi delle prestazioni e calcolo delle distanze di viaggio

---

## 🔮 Piani Futuri

- ➕ Aggiungere nuove tabelle:  
  - `matches`  
  - `staff`  
  - `injuries`  
  - `contracts`  
- 📊 Espandere le dashboard di Power BI con report aggiuntivi (distribuzione età, suddivisione per nazionalità, scadenze contratti) oltre all’attuale Jagiellonia Transfers Dashboard
- 🐍 Utilizzare **Python** per analizzare trend
- 🧠 Creare query SQL complesse (aggregazioni, join, sottoquery)  
- 📤 Esportare il diagramma ERD per la documentazione  

---

## 🙋 Su di Me

Sono un aspirante **Data Analyst** attualmente impegnato a migliorare le mie competenze in SQL, modellazione dei dati e reporting.  
Questo database riflette sia la mia crescita tecnica che la mia passione per il calcio e per la mia squadra del cuore — **Jagiellonia Białystok**.

Puoi trovare questo progetto su **GitHub** e linkato nel mio **CV**.