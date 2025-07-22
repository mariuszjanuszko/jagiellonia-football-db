SELECT 
p.first_name || ' ' || p.last_name AS name,
p.position,
to_char(p.birth_date,'dd/mm/yyyy') AS birth_date,
p.nationality,
p.height_cm,
p.preferred_foot
FROM players p
JOIN transfers t ON p.player_id = t.player_id
WHERE LOWER(t.transfer_direction) = 'in'
