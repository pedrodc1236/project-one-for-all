SELECT u.user_name AS `usuario`,
CASE 
	WHEN MAX(YEAR(h.reproduction_date)) >= 2021 THEN 'Usuário ativo'
	WHEN MAX(YEAR(h.reproduction_date)) < 2021 THEN 'Usuário inativo'
END AS `condicao_usuario`
FROM user AS u
INNER JOIN historic AS h
ON u.user_id = h.user_id
GROUP BY u.user_name
ORDER BY u.user_name;