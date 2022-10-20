SELECT
    COUNT(h.history_person_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.history AS h
    JOIN SpotifyClone.person AS p ON h.history_person_id = p.person_id
WHERE
    p.person_name = 'Barbara Liskov';