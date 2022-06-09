SELECT COUNT(h.user_id) AS `quantidade_musicas_no_historico`
FROM user AS u
INNER JOIN historic AS h
ON u.user_id = h.user_id
WHERE u.user_name = 'Bill';