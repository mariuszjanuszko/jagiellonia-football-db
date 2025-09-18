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

## 📊 Power BI Project: Jagiellonia Transfers Dashboard

This Power BI report provides an interactive and comprehensive visualization of Jagiellonia Białystok’s player transfers.  
**Key Features:**

- **Summary Cards** display total number of incoming and outgoing transfers alongside the net transfer fee (EUR), helping to quickly understand transfer activity at a glance.  
- **Transfers Table** lists detailed transfer information, including player name, transfer date, type (e.g., loan, permanent), other club involved, and transfer fee.  
- **Bar Chart** visualizes the destinations of transfers by country, showing where players are coming from or going to.  
- **Interactive Slicer** and Navigation Button allow users to switch between incoming and outgoing transfers dynamically:  
  - A custom button triggers a transparent overlay with a slicer for transfer direction selection (in or out).  
  - Selecting the direction updates both the transfers table and the transfers destination bar chart accordingly.
- **Drillthrough Player Profile**: Right-clicking on any player in the transfers table opens a dedicated **Player Profile Page**, showing detailed information such as:
  - Position, nationality, age, height, preferred foot
  - Last season stats (appearances, goals, assists)
  - Contract details (joined club, contract until)
  - Custom icons and visuals for a more intuitive, football-themed design

**Purpose:**

- To analyze and track transfer patterns specifically for Jagiellonia Białystok.  
- To demonstrate skills in creating dynamic reports with user-friendly navigation and interactivity.  
- To highlight proficiency in Power BI features such as cards, tables, bar charts, slicers, and layered navigation using shapes and buttons.  
- To showcase the use of Drillthrough pages for detailed player profiles, integrating multiple data points (demographics, stats, contract info) into a single interactive view.

---

## 📂 Database Overview

### Table: `players`

| Column Name       | Data Type     | Description                                |
| ----------------- | ------------- | ------------------------------------------ |
| `player_id`       | NUMBER        | Primary key (auto-incremented via sequence)|
| `player_number`   | NUMBER(2)     | Shirt number                        		 |
| `position`        | VARCHAR2(50)  | Player’s on-field position                 |
| `first_name`      | VARCHAR2(50)  | First name                                 |
| `last_name`       | VARCHAR2(50)  | Last name                                  |
| `birth_date`      | DATE          | Date of birth                              |
| `nationality`     | VARCHAR2(50)  | Country of origin                          |
| `height_cm`       | NUMBER(3)     | Height in centimeters                      |
| `preferred_foot`  | VARCHAR2(10)  | 'left', 'right', or 'both'                 |

### Table: `clubs`

| Column Name | Data Type    | Description                 							   |
| ----------- | ------------ | ------------------------------------------------------- |
| `club_id`   | NUMBER       | Primary key (auto-incremented via sequence)             |
| `club_name` | VARCHAR2(50) | Unique name of the club      						   |
| `country`   | VARCHAR2(50) | Country of the club         							   |
| `league`    | VARCHAR2(50) | League the club competes in  						   |


### Table: `transfers`

| Column Name               | Data Type    | Description                                                        |
| ------------------------- | ------------ | ------------------------------------------------------------------ |
| `transfer_id`             | NUMBER       | Primary key (auto-incremented via sequence)                        |
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

| Column Name         | Data Type    | Description                                                |
| ------------------- | ------------ | ---------------------------------------------------------- |
| `match_id`          | NUMBER       | Primary key (auto-incremented via sequence)                |
| `season`            | VARCHAR2(10) | Match season (e.g., '2024/2025')                           |
| `match_date`        | DATE         | Date of the match                                          |
| `opponent_club_id`  | NUMBER       | FK to `clubs(club_id)` (the opposing team)                 |
| `home_or_away`      | VARCHAR2(4)  | 'HOME' or 'AWAY'                                           |
| `jagiellonia_goals` | NUMBER(2)    | Goals scored by Jagiellonia                                |
| `opponent_goals`    | NUMBER(2)    | Goals scored by the opponent                               |
| `competition`       | VARCHAR2(50) | League or tournament name                                  |
| `attendance`        | NUMBER(5)    | Number of spectators                                       |
| `stadium`           | VARCHAR2(50) | Venue where the match was played                           |

### Table: `contracts`

| Column Name      | Data Type | Description                                                      |
| ---------------- | --------- | ---------------------------------------------------------------  |
| `contract_id`    | NUMBER    | Primary key (auto-incremented via sequence)                      |
| `player_id`      | NUMBER    | Foreign key referencing `players(player_id)`                     |
| `join_date`      | DATE      | Date when the player joined the club                             |
| `leave_date`     | DATE      | Date when the player left the club (NULL if still active)        |
| `contract_until` | DATE      | Original end date of the contract          				      |

### Sequence

- `player_seq` – handles auto-incrementing of `player_id`
- `transfer_seq` – handles auto-incrementing of `transfer_id`
- `club_seq` – handles auto-incrementing of `club_id`
- `match_seq` – handles auto-incrementing of `match_id`
- `contract_seq` – handles auto-incrementing of contract_id

---

## 🧪 Sample Data

Includes over 25 players, 25+ clubs, and match results from real Jagiellonia fixtures. Positions include:

- 🧤 Goalkeepers  
- 🛡️ Centre-backs  
- ⚙️ Midfielders  
- 🌀 Wingers  
- 🎯 Centre-forwards  

---

## 📄 SQL Queries

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
	
	🏟 List of stadiums with an average attendance greater than 15,000

	⚽ Results and opponents for matches played at 'Chorten' stadium with attendance ≥ 19,000

	🔍 Search transfers involving a specific club name (case-insensitive) with details on type, direction, and fee

---

## 🚀 Getting Started

1. Clone the repository  
2. Open **DBeaver** and connect to your local OracleXE instance  
3. Run the SQL scripts to:
   - Drop and recreate the `players` and `transfers` tables  
   - Create the `player_seq` and `transfer_seq` sequences  
   - Insert all sample data
4. Open the Power BI project  
   - Navigate to the `/power bi/` folder in the repo  
   - Open the `.pbix` file with **Power BI Desktop**  
   - Explore the interactive Jagiellonia Transfers Dashboard  
   
---

## 🔮 Future Plans

- ➕ Add more tables:
  - `matches`
  - `staff`
  - `injuries`
  - `contracts`
- 📊 Expand **Power BI** dashboards with additional reports (age distribution, nationality breakdown, contract timelines) beyond the existing Jagiellonia Transfers Dashboard
- 🐍 Use **Python** to analyze trends (e.g., player age vs. contract length)  
- 🧠 Create complex SQL queries (aggregates, joins, subqueries)  
- 📤 Export ERD diagram for documentation  

---

## 🙋 About Me

I'm an aspiring **Data Analyst** currently improving my skills in SQL, data modeling, and reporting.  
This database reflects both my technical growth and my passion for football and my home team — **Jagiellonia Białystok**.

You can find this project on **GitHub** and linked in my **CV**.