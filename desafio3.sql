-- Active: 1660694921638@@127.0.0.1@3307@SpotifyClone

SELECT
    p.person_name AS usuario,
    COUNT(h.history_music_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(m.music_duration / 60),2) AS total_minutos
FROM SpotifyClone.person AS p
    JOIN SpotifyClone.history AS h ON p.person_id = h.history_person_id
    JOIN SpotifyClone.music as m ON h.history_music_id = m.music_id
    GROUP BY p.person_name
    ORDER BY p.person_name;