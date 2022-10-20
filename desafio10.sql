SELECT
    m.music_name AS nome,
    COUNT(m.music_name) AS reproducoes
FROM
    `SpotifyClone`.history AS hi
    JOIN `SpotifyClone`.music AS m ON hi.history_music_id = m.music_id
    JOIN `SpotifyClone`.person AS p ON hi.history_person_id = p.person_id
WHERE
    person_plan_id = 1 || person_plan_id = 3
GROUP BY nome
ORDER BY nome;