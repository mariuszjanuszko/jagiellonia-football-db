SELECT 
p.first_name || ' ' || p.last_name AS name,
p.position,
TRUNC(MONTHS_BETWEEN(sysdate, p.birth_date)/12) AS age,
t.appearances_last_season,
t.goals_last_season,
t.assists_last_season
FROM transfers t
JOIN players p ON p.player_id=t.player_id
WHERE LOWER(t.transfer_direction) = 'in'
ORDER BY age
FETCH FIRST 5 ROWS ONLY