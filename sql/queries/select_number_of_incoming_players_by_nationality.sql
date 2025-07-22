SELECT p.nationality, COUNT(*)
FROM transfers t
JOIN players p ON p.player_id = t.player_id
WHERE lower(transfer_direction)='in'
GROUP BY p.nationality
ORDER BY COUNT(*) DESC