SELECT 
  TO_CHAR(contract_until, 'DD/MM/YYYY') AS contract_expiration_date, 
  COUNT(*) AS number_of_players
FROM contracts
WHERE leave_date IS NULL	
GROUP BY contract_until
ORDER BY contract_until;
