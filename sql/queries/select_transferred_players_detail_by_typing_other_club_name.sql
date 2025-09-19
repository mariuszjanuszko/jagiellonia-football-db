SELECT 
		t.player_name,
		t.transfer_type,
		t.transfer_direction,
		t.transfer_fee_eur,
		c.club_name AS "FROM/TO_CLUB" 
FROM TRANSFERS t
JOIN CLUBS c ON t.OTHER_CLUB_ID = c.CLUB_ID
WHERE lower(c.CLUB_NAME) like lower('%' ||  :club  || '%')
