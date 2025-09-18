CREATE TABLE contracts (
	contract_id NUMBER PRIMARY KEY,
	player_id NUMBER REFERENCES players(player_id),
	join_date DATE NOT NULL,
	leave_date DATE,
	contract_until DATE 
);