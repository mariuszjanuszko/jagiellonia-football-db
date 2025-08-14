SELECT
	TO_CHAR(
		SUM(
			CASE
				WHEN lower(transfer_direction) = 'in' THEN -transfer_fee_eur
				ELSE transfer_fee_eur
			END 
			), 'FM999999999.00'
	) AS net_transfers_fee
FROM transfers