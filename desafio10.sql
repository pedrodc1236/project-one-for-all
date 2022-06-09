SELECT s.song_name AS `nome`,
COUNT(DISTINCT h.user_id) AS `reproducoes`
FROM songs AS s
INNER JOIN historic AS h
ON s.song_id = h.song_id
INNER JOIN user AS u
ON h.user_id = u.user_id
WHERE u.plan_id = 1 OR u.plan_id = 3
GROUP BY s.song_name
ORDER BY s.song_name ASC;