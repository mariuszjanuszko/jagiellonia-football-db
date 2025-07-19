SELECT 
  first_name AS name, 
  last_name AS surname, 
  TO_CHAR(birth_date, 'DD/MM/YYYY') AS birth_date
FROM players
WHERE UPPER(nationality) = 'POLAND';