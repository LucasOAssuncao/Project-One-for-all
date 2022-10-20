
SELECT
    DISTINCT p.person_name AS usuario,
    IF (MAX (YEAR (h.history_reproduction_date)) < 2021, 'Usuário inativo', 'Usuário ativo') AS status_usuario
FROM SpotifyClone.person AS p
    JOIN SpotifyClone.history AS h ON h.history_person_id = p.person_id
GROUP BY p.person_name
ORDER BY p.person_name;