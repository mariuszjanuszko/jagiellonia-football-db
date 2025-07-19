SELECT first_name name, last_name surname, birth_date
FROM players
WHERE UPPER(nationality) = 'POLAND'