🇮🇹 Versione italiana disponibile: [README.it.md](README.it.md)

# 📊 Football Team Database Project — Jagiellonia Białystok

This is a personal SQL database project inspired by **Jagiellonia Białystok**, the professional football club from my birth city.

The database is built using **DBeaver** on **OracleXE 21.3**. It models key data about the team's players, such as positions, physical attributes, nationalities, and contract details.

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

### Table: `transfers`

| Column Name               | Data Type     | Description                                                        |
| ------------------------- | ------------- | ------------------------------------------------------------------ |
| `transfer_id`             | NUMBER        | Primary key                                                        |
| `player_name`             | VARCHAR2(50)  | Player's full name                                                 |
| `player_id`               | NUMBER        | Foreign key referencing `players(player_id)`                       |
| `season`                  | VARCHAR2(10)  | Season of the transfer (e.g., '2024/2025')                         |
| `transfer_direction`      | VARCHAR2(3)   | 'in' or 'out' (transfer direction)                                 |
| `transfer_type`           | VARCHAR2(15)  | 'loan', 'permanent', 'free', 'promotion', 'retired', 'end of loan' |
| `transfer_date`           | DATE          | Date of transfer                                                   |
| `from_club`               | VARCHAR2(100) | Club the player is transferred from                                |
| `to_club`                 | VARCHAR2(100) | Club the player is transferred to                                  |
| `transfer_fee_eur`        | NUMBER(10, 2) | Transfer fee in Euros                                              |
| `appearances_last_season` | NUMBER(3)     | Number of appearances in the last season                           |
| `goals_last_season`       | NUMBER(3)     | Number of goals in the last season                                 |
| `assists_last_season`     | NUMBER(3)     | Number of assists in the last season                               |


### Sequence

- `player_seq` – handles auto-incrementing of `player_id`
- `transfer_seq` – handles auto-incrementing of `transfer_id`

---

## 🧪 Sample Data

Includes over **25 real players** currently associated with **Jagiellonia Białystok**, across positions such as:

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
