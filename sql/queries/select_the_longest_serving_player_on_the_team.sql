SELECT 
  p.first_name || ' ' || p.last_name AS name,
  to_char(c.join_date,'dd/mm/yyyy') AS joined_club,
  TRUNC(MONTHS_BETWEEN(sysdate, join_date)/12) AS years_in_club
FROM players p
JOIN contracts c ON c.player_id = P.player_id
WHERE c.join_date = (
  SELECT MIN(join_date)
  FROM contracts) AND
  c.leave_date IS NULL;
