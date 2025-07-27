DROP TABLE TRANSFERS;

CREATE TABLE transfers (
    transfer_id NUMBER PRIMARY KEY,
    player_name VARCHAR2(50),
    player_id NUMBER REFERENCES players(player_id),
    season VARCHAR2(10),
    transfer_direction VARCHAR2(3) CHECK (transfer_direction IN ('in','out')) ,
    transfer_type VARCHAR2(15) CHECK (transfer_type IN ('loan', 'permanent', 'free', 'promotion', 'retired', 'end of loan')),
    transfer_date DATE,
    other_club_id NUMBER(4),
    transfer_fee_eur NUMBER(10, 2),
    appearances_last_season NUMBER(3),
    goals_last_season NUMBER(3),
    assists_last_season NUMBER(3)
);
