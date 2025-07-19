SELECT 
  TO_CHAR(contract_until, 'DD/MM/YYYY') AS contract_expiration_date, 
  COUNT(*) AS number_of_players
FROM players
GROUP BY contract_until
ORDER BY number_of_players DESC;