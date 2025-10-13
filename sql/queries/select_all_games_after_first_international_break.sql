SELECT 
	TO_CHAR(r.MATCH_DATE,'DD/MM/YYYY') AS "Date",
	r.HOME_OR_AWAY AS "Home/Away",
	'Jagiellonia Bialystok' AS "Name",
	r.JAGIELLONIA_GOALS || '-' || r.OPPONENT_GOALS AS "Results",
	c.club_name AS "Opponent Name",
	CASE
		WHEN r.JAGIELLONIA_GOALS > r.OPPONENT_GOALS THEN 'Win'
		WHEN r.JAGIELLONIA_GOALS = r.OPPONENT_GOALS THEN 'Draw'
		ELSE 'Defeat'
	END AS "Outcome"
FROM RESULTS r
JOIN CLUBS c ON c.club_id = r.opponent_club_id
WHERE r.MATCH_DATE BETWEEN  TO_DATE('01/09/2025','DD/MM/YYYY') AND TO_DATE('06/10/2025','DD/MM/YYYY')
ORDER BY R.MATCH_DATE ASC