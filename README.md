# 📊 Football Team Database Project — Jagiellonia Białystok

This is a personal SQL database project inspired by **Jagiellonia Białystok**, the professional football club from my birth city.

The database is built using **DBeaver** on **OracleXE 21.3**. It models key data about the team's players, such as positions, physical attributes, nationalities and contract details.

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

### Sequence

- `player_seq` – handles auto-incrementing of `player_id`

---

## 🧪 Sample Data

Includes over **25 real players** currently associated with **Jagiellonia Białystok**, across positions such as:

- 🧤 Goalkeepers  
- 🛡️ Centre-backs  
- ⚙️ Midfielders  
- 🌀 Wingers  
- 🎯 Centre-forwards  

---

## 🚀 Getting Started

1. Clone the repository  
2. Open **DBeaver** and connect to your local OracleXE instance  
3. Run the SQL scripts to:
   - Drop and recreate the `players` table  
   - Create the `player_seq` sequence  
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
