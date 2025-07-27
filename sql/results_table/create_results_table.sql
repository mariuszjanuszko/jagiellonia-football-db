DROP TABLE results;

CREATE TABLE results (
    match_id          NUMBER PRIMARY KEY,
    season            VARCHAR2(10),
    match_date        DATE,
    opponent_club_id  NUMBER REFERENCES clubs(club_id),
    home_or_away      VARCHAR2(4) CHECK (UPPER(home_or_away) IN ('HOME', 'AWAY')),
    jagiellonia_goals NUMBER(2),
    opponent_goals    NUMBER(2),
    competition       VARCHAR2(50),
    attendance        NUMBER(5),
    stadium           VARCHAR2(50)
);