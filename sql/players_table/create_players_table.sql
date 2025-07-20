DROP TABLE players;

CREATE TABLE players (
    player_id NUMBER PRIMARY KEY,
    player_number NUMBER(2) UNIQUE,
    position VARCHAR2(50),
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    birth_date DATE,
    nationality VARCHAR2(50),
    height_cm NUMBER(3),
    preferred_foot VARCHAR2(10) CHECK (preferred_foot IN ('left','right','both')),
    joined_club DATE,
    contract_until DATE
);
