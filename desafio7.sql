SELECT
    ar.artist_name AS artista,
    al.album_name AS album,
    COUNT(f.follower_artist_id) AS seguidores
FROM SpotifyClone.artist AS ar
    JOIN SpotifyClone.album AS al ON al.album_artist_id = ar.artist_id
    JOIN SpotifyClone.follower AS f On f.follower_artist_id = ar.artist_id
    GROUP BY ar.artist_name, al.album_name
    ORDER BY seguidores DESC, artista, album;