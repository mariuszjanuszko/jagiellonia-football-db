🇮🇹 Versione italiana disponibile: [README.it.md](README.it.md)

# 📊 Football Team Database Project — Jagiellonia Białystok

This is a personal SQL database project inspired by **Jagiellonia Białystok**, the professional football club from my birth city.

The database is built using **DBeaver** on **OracleXE 21.3**. It models key data about the team's players, transfers, match results, and related clubs.

---

## 📌 Project Purpose

- Learn and practice relational database design  
- Simulate real-world data structures using football as context  
- Prepare for a career as a **Data Analyst**  
- Build portfolio material for GitHub and CV

---

## 🏗️ Technologies Used

- 💻 **OracleXE 21.3** (local database engine)  
- 🐘 **DBeaver** (database GUI)  
- ✍️ **SQL** (DDL & DML)  
- 🐍 **Python** *(future integration planned)*  
- 📊 **Power BI** *(for building visual reports and dashboards)*  

---

## 📂 Database Overview

### Table: `players`

| Column Name       | Data Type     | Description                                |
|------------------|---------------|--------------------------------------------|
| `player_id`       | NUMBER        | Primary key (auto-incremented via sequence)|
| `player_number`   | NUMBER(2)     | Unique shirt number                        |
| `position`        | VARCHAR2(50)  | Player’s on-field position                 |
| `first_name`      | VARCHAR2(50)  | First name                                 |
| `last_name`       | VARCHAR2(50)  | Last name                                  |
| `birth_date`      | DATE          | Date of birth                              |
| `nationality`     | VARCHAR2(50)  | Country of origin                          |
| `height_cm`       | NUMBER(3)     | Height in centimeters                      |
| `preferred_foot`  | VARCHAR2(10)  | 'left', 'right', or 'both'                 |
| `joined_club`     | DATE          | Date the player joined the club            |
| `contract_until`  | DATE          | Contract expiration date                   |

### Table: `clubs`

| Column Name | Data Type    | Description                 |
| ----------- | ------------ | --------------------------- |
| `club_id`   | NUMBER       | Primary key                 |
| `club_name` | VARCHAR2(50) | Unique name of the club     |
| `country`   | VARCHAR2(50) | Country of the club         |
| `league`    | VARCHAR2(50) | League the club competes in |


### Table: `transfers`

| Column Name               | Data Type    | Description                                                        |
| ------------------------- | ------------ | ------------------------------------------------------------------ |
| `transfer_id`             | NUMBER       | Primary key                                                        |
| `player_name`             | VARCHAR2(50) | Player's full name                                                 |
| `player_id`               | NUMBER       | Foreign key referencing `players(player_id)`                       |
| `season`                  | VARCHAR2(10) | Season of the transfer (e.g., '2024/2025')                         |
| `transfer_direction`      | VARCHAR2(3)  | 'in' or 'out' (relative to Jagiellonia)                            |
| `transfer_type`           | VARCHAR2(15) | 'loan', 'permanent', 'free', 'promotion', 'retired', 'end of loan' |
| `transfer_date`           | DATE         | Date of transfer                                                   |
| `other_club_id`           | NUMBER       | Foreign key to `clubs(club_id)`                                    |
| `transfer_fee_eur`        | NUMBER(10,2) | Transfer fee in Euros                                              |
| `appearances_last_season` | NUMBER(3)    | Number of appearances in last season                               |
| `goals_last_season`       | NUMBER(3)    | Goals scored last season                                           |
| `assists_last_season`     | NUMBER(3)    | Assists made last season                                           |

### Table: `results`

| Column Name         | Data Type    | Description                                |
| ------------------- | ------------ | ------------------------------------------ |
| `match_id`          | NUMBER       | Primary key                                |
| `season`            | VARCHAR2(10) | Match season (e.g., '2024/2025')           |
| `match_date`        | DATE         | Date of the match                          |
| `opponent_club_id`  | NUMBER       | FK to `clubs(club_id)` (the opposing team) |
| `home_or_away`      | VARCHAR2(4)  | 'HOME' or 'AWAY'                           |
| `jagiellonia_goals` | NUMBER(2)    | Goals scored by Jagiellonia                |
| `opponent_goals`    | NUMBER(2)    | Goals scored by the opponent               |
| `competition`       | VARCHAR2(50) | League or tournament name                  |
| `attendance`        | NUMBER(5)    | Number of spectators                       |
| `stadium`           | VARCHAR2(50) | Venue where the match was played           |



### Sequence

- `player_seq` – handles auto-incrementing of `player_id`
- `transfer_seq` – handles auto-incrementing of `transfer_id`
-  `club_seq` – handles auto-incrementing of `club_id`
- `match_seq` – handles auto-incrementing of `match_id`

---

## 🧪 Sample Data

Includes over 25 players, 25+ clubs, and match results from real Jagiellonia fixtures. Positions include:

- 🧤 Goalkeepers  
- 🛡️ Centre-backs  
- ⚙️ Midfielders  
- 🌀 Wingers  
- 🎯 Centre-forwards  

---

##📄 SQL Queries

The /sql/queries folder contains analytical queries to explore the players database, including:

	🇵🇱 List of all Polish players

	👟 Search for ambidextrous players

	📆 Count of players by contract expiration date

	🎂 Calculation of players’ age

	🏆 Player with the longest tenure at the club

	📥 List of all incoming players

	💸 Net transfer fee balance

	🌍 Count of incoming players by nationality

	👶 List of five youngest incoming players

---

## 🚀 Getting Started

1. Clone the repository  
2. Open **DBeaver** and connect to your local OracleXE instance  
3. Run the SQL scripts to:
   - Drop and recreate the `players` and `transfers` tables  
   - Create the `player_seq` and `transfer_seq` sequences  
   - Insert all sample data

---

## 🔮 Future Plans

- ➕ Add more tables:
  - `matches`
  - `staff`
  - `injuries`
  - `contracts`
- 📊 Build **Power BI** dashboards (age distribution, nationality breakdown, contract timelines)  
- 🐍 Use **Python** to analyze trends (e.g., player age vs. contract length)  
- 🧠 Create complex SQL queries (aggregates, joins, subqueries)  
- 📤 Export ERD diagram for documentation  

---

## 🙋 About Me

I'm an aspiring **Data Analyst** currently improving my skills in SQL, data modeling, and reporting.  
This database reflects both my technical growth and my passion for football and my home team — **Jagiellonia Białystok**.

You can find this project on **GitHub** and linked in my **CV**.