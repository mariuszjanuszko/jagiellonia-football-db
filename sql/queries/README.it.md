🇬🇧 English version available: [README.md](README.md)

# Query SQL Analitiche

Questa cartella contiene **query SQL predefinite** per esplorare e analizzare il database calcistico del Jagiellonia Białystok.  
Possono essere utilizzate per estrarre informazioni sui giocatori, analizzare i risultati delle partite, esaminare le attività di mercato e calcolare varie statistiche calcistiche.

## 📂 Elenco Query

| Categoria | File Query | Descrizione |
|-----------|-----------|-------------|
| 🇵🇱 Informazioni Giocatori | [select_all_polish_players.sql](select_all_polish_players.sql) | Elenca tutti i giocatori polacchi con nome e data di nascita |
|  | [select_all_two_footed_players.sql](select_all_two_footed_players.sql) | Trova tutti i giocatori ambidestri (piede preferito: entrambi) |
|  | [select_players_with_their_age.sql](select_players_with_their_age.sql) | Elenca tutti i giocatori con età calcolata |
|  | [select_number_of_players_by_contract_expiration_date.sql](select_number_of_players_by_contract_expiration_date.sql) | Conta i giocatori raggruppati per data di scadenza contratto |
|  | [select_the_longest_serving_player_on_the_team.sql](select_the_longest_serving_player_on_the_team.sql) | Trova il giocatore più longevo nella squadra |
| 📥 Dati Trasferimenti | [select_details_of_incoming_players.sql](select_details_of_incoming_players.sql) | Elenca tutti i giocatori in entrata con dettagli (ruolo, data di nascita, nazionalità, ecc.) |
|  | [select_net_transfers_fee.sql](select_net_transfers_fee.sql) | Calcola il saldo netto delle commissioni di trasferimento (entrate = negativo, uscite = positivo) |
|  | [select_number_of_incoming_players_by_nationality.sql](select_number_of_incoming_players_by_nationality.sql) | Conta i giocatori in entrata per nazionalità |
|  | [select_five_youngest_incoming_players.sql](select_five_youngest_incoming_players.sql) | Elenca i cinque giocatori più giovani in entrata con statistiche dell’ultima stagione |
|  | [select_transferred_players_detail_by_typing_other_club_name.sql](select_transferred_players_detail_by_typing_other_club_name.sql) | Cerca trasferimenti che coinvolgono un club specifico (case-insensitive) con dettagli su tipo, direzione e commissione |
| 🏟 Partite & Presenze | [select_stadiums_with_avg_attendance_greater_than_15000.sql](select_stadiums_with_avg_attendance_greater_than_15000.sql) | Elenca stadi con media spettatori superiore a 15.000 |
|  | [select_results_chorten_stadium_attendance_19000_plus.sql](select_results_chorten_stadium_attendance_19000_plus.sql) | Mostra risultati e avversari delle partite giocate allo stadio 'Chorten' con presenze ≥ 19.000 |
|  | [select_all_games_after_first_international_break.sql](select_all_games_after_first_international_break.sql) | Partite del Jagiellonia Białystok giocate dopo la prima sosta internazionale della stagione 2025/26, inclusi data, avversario, risultato e esito della partita (Vittoria / Pareggio / Sconfitta) |
---

## 📌 Come Utilizzare
1. Apri il file `.sql` che vuoi eseguire.  
2. Eseguilo nel tuo ambiente SQL (es. Oracle SQL Developer, DBeaver o SQL*Plus) connesso al database calcistico del Jagiellonia.  
3. Modifica i parametri come `:club` se necessario.