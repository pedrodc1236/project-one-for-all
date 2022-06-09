SELECT u.user_name AS `usuario`,
COUNT(h.user_id) AS `qtde_musicas_ouvidas`,
ROUND(SUM(s.length) / 60, 2) AS `total_minutos`
FROM user AS u
INNER JOIN historic AS h
ON u.user_id = h.user_id
INNER JOIN songs AS s
ON h.song_id = s.song_id
GROUP BY u.user_name;