🇬🇧 English version available: [README.md](README.md)

# 📊 Progetto Database Calcistico — Jagiellonia Białystok

Questo è un progetto personale di database SQL ispirato alla **Jagiellonia Białystok**, la squadra di calcio professionistica della mia città natale.

Il database è stato creato utilizzando **DBeaver** su **OracleXE 21.3**. Modella i dati principali dei giocatori della squadra, come ruoli, attributi fisici, nazionalità e dettagli contrattuali.

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

## 📂 Panoramica del Database

### Tabella: `players`

| Nome Colonna      | Tipo Dato    | Descrizione                               			 |
|------------------|--------------|------------------------------------------------------|
| `player_id`      | NUMBER       | Chiave primaria (auto-incrementata tramite sequenza) |
| `player_number`  | NUMBER(2)    | Numero di maglia univoco                             |
| `position`       | VARCHAR2(50) | Ruolo in campo del giocatore              			 |
| `first_name`     | VARCHAR2(50) | Nome                                      		     |
| `last_name`      | VARCHAR2(50) | Cognome                                 		     |
| `birth_date`     | DATE         | Data di nascita                           			 |
| `nationality`    | VARCHAR2(50) | Nazionalità                               			 |
| `height_cm`      | NUMBER(3)    | Altezza in centimetri                     			 |
| `preferred_foot` | VARCHAR2(10) | 'left', 'right' o 'both'                  			 |
| `joined_club`    | DATE         | Data di ingresso nel club                 			 |
| `contract_until` | DATE         | Data di scadenza del contratto            			 |

### Tabella: `transfers`

| Nome Colonna              | Tipo Dato     | Descrizione                                                        |
| ------------------------- | ------------- | ------------------------------------------------------------------ |
| `transfer_id`             | NUMBER        | Chiave primaria                                                    |
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

### Sequenza

- `player_seq` – gestisce l’auto-incremento del campo `player_id`
- `transfer_seq` – gestisce l’auto-incremento del campo `transfer_id`

---

## 🧪 Dati di Esempio

Include oltre **25 giocatori reali** attualmente associati alla **Jagiellonia Białystok**, tra cui:

- 🧤 Portieri  
- 🛡️ Difensori centrali  
- ⚙️ Centrocampisti  
- 🌀 Esterni  
- 🎯 Attaccanti centrali  

---

## 📄 Query SQL

La cartella **/sql/queries** contiene query analitiche per esplorare il database dei giocatori, tra cui:

- 🇵🇱 Elenco di tutti i giocatori polacchi  
- 👟 Ricerca dei giocatori ambidestri  
- 📆 Conteggio dei giocatori per data di scadenza del contratto  
- 🎂 Calcolo dell'età dei giocatori  
- 🏆 Giocatore da più tempo nel club  

---

## 🚀 Come Iniziare

1. Vai alla cartella **/sql/players_table** per visualizzare o copiare gli script SQL completi  
2. Apri **DBeaver** e connettiti alla tua istanza locale di OracleXE  
3. Esegui gli script SQL per:  
   - Eliminare e ricreare le tabelle `players` e `transfers`
   - Creare la sequenza `player_seq` e `transfer_seq`  
   - Inserire tutti i dati di esempio  

---

## 🔮 Piani Futuri

- ➕ Aggiungere nuove tabelle:  
  - `matches`  
  - `staff`  
  - `injuries`  
  - `contracts`  
- 📊 Costruire dashboard in **Power BI** (distribuzione età, nazionalità, scadenze contratti)  
- 🐍 Utilizzare **Python** per analizzare trend (es. età vs durata del contratto)  
- 🧠 Creare query SQL complesse (aggregazioni, join, sottoquery)  
- 📤 Esportare il diagramma ERD per la documentazione  

---

## 🙋 Su di Me

Sono un aspirante **Data Analyst** attualmente impegnato a migliorare le mie competenze in SQL, modellazione dei dati e reporting.  
Questo database riflette sia la mia crescita tecnica che la mia passione per il calcio e per la mia squadra del cuore — **Jagiellonia Białystok**.

Puoi trovare questo progetto su **GitHub** e linkato nel mio **CV**.