SELECT m.music_name AS cancao, COUNT(*) AS reproducoes FROM SpotifyClone.music AS m
JOIN SpotifyClone.history AS h ON h.history_music_id = m.music_id
GROUP BY h.history_music_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
