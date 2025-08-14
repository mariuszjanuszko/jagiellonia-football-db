SELECT 
	CASE
		WHEN r.jagiellonia_goals > r.opponent_goals THEN 'WIN'
		WHEN r.jagiellonia_goals < r.opponent_goals THEN 'LOST'
		ELSE 'DRAW'
	END AS "Result",
	c.club_name AS "Opponent"
FROM RESULTS r
JOIN CLUBS c ON c.CLUB_ID = r.OPPONENT_CLUB_ID
WHERE LOWER(r.STADIUM) LIKE 'chorten%' AND r.ATTENDANCE >= 19000