SELECT 
	s1.song_name AS `nome_musica`,
	CASE 
		WHEN s2.song_name LIKE '%Her Own' THEN REPLACE(s2.song_name, 'Her Own', 'Trybe') 
        WHEN s2.song_name LIKE '%Silly' THEN REPLACE(s2.song_name, 'Silly', 'Nice')
        WHEN s2.song_name LIKE '%Circus' THEN REPLACE(s2.song_name, 'Circus', 'Pull Request')
        WHEN s2.song_name LIKE '%Inner Fire' THEN REPLACE(s2.song_name, 'Inner Fire', 'Project')
		WHEN s2.song_name LIKE '%Streets' THEN REPLACE(s2.song_name, 'Streets', 'Code Review') 
	END AS `novo_nome`
FROM songs AS s1
INNER JOIN 
	songs AS s2 
ON s1.song_id = s2.song_id
WHERE    
s1.song_name LIKE '%Her Own' 
OR s1.song_name LIKE '%Silly'
OR s1.song_name LIKE '%Circus'
OR s1.song_name LIKE '%Inner Fire'
OR s1.song_name LIKE '%Streets'
ORDER BY s1.song_name;