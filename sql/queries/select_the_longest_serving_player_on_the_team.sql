SELECT 
  first_name || ' ' || last_name AS name,
  to_char(joined_club,'dd/mm/yyyy') AS joined_club
FROM players
WHERE joined_club = (
  SELECT MIN(joined_club) 
  FROM players
);