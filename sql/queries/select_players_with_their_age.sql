SELECT 
  position, 
  first_name || ' ' || last_name AS name,  
  TRUNC(MONTHS_BETWEEN(SYSDATE, birth_date) / 12) AS age
FROM players
ORDER BY age;