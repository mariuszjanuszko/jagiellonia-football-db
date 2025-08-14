🇮🇹 Versione italiana disponibile: (README.it.md)

# SQL Analytical Queries

This folder contains **predefined SQL queries** for exploring and analyzing the Jagiellonia Białystok football database.  
They can be used to extract player information, analyze match results, review transfer activities, and calculate various football-related statistics.

## 📂 Query List

| Category | Query File | Description |
|----------|------------|-------------|
| 🇵🇱 Player Information | [select_all_polish_players.sql](select_all_polish_players.sql) | Lists all Polish players with their names and birth dates |
|  | [select_all_two_footed_players.sql](select_all_two_footed_players.sql) | Finds all ambidextrous players (preferred foot: both) |
|  | [select_players_with_their_age.sql](select_players_with_their_age.sql) | Lists all players with their calculated age |
|  | [select_number_of_players_by_contract_expiration_date.sql](select_number_of_players_by_contract_expiration_date.sql) | Counts players grouped by their contract expiration date |
|  | [select_the_longest_serving_player_on_the_team.sql](select_the_longest_serving_player_on_the_team.sql) | Finds the player who has been with the club the longest |
| 📥 Transfer Data | [select_details_of_incoming_players.sql](select_details_of_incoming_players.sql) | Lists all incoming players with details (position, birth date, nationality, etc.) |
|  | [select_net_transfers_fee.sql](select_net_transfers_fee.sql) | Calculates the net transfer fee balance (incoming = negative, outgoing = positive) |
|  | [select_number_of_incoming_players_by_nationality.sql](select_number_of_incoming_players_by_nationality.sql) | Counts incoming players grouped by nationality |
|  | [select_five_youngest_incoming_players.sql](select_five_youngest_incoming_players.sql) | Lists the five youngest incoming players with their last season stats |
|  | [select_transferred_players_detail_by_typing_other_club_name.sql](select_transferred_players_detail_by_typing_other_club_name.sql) | Searches transfers involving a specific club name (case-insensitive) with details on type, direction, and fee |
| 🏟 Match & Attendance | [select_stadiums_with_avg_attendance_greater_than_15000.sql](select_stadiums_with_avg_attendance_greater_than_15000.sql) | Lists stadiums with an average attendance greater than 15,000 |
|  | [select_results_chorten_stadium_attendance_19000_plus.sql](select_results_chorten_stadium_attendance_19000_plus.sql) | Shows results and opponents for matches played at the 'Chorten' stadium with attendance ≥ 19,000 |

---

## 📌 How to Use
1. Open the `.sql` file you want to execute.  
2. Run it in your SQL environment (e.g., Oracle SQL Developer, DBeaver, or SQL*Plus) connected to the Jagiellonia Football Database.  
3. Modify parameters like `:club` if needed.