SELECT art.artist_name AS `artista`,
alb.album_name AS `album`,
(SELECT COUNT(artist_id) FROM following WHERE artist_id = art.artist_id) AS `seguidores`
FROM artist AS art
INNER JOIN album AS alb
ON art.artist_id = alb.artist_id
ORDER BY `seguidores` DESC, art.artist_name ASC, alb.album_name ASC;