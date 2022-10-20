-- Active: 1660694921638@@127.0.0.1@3307@SpotifyClone
SELECT ar.artist_name AS artista, al.album_name AS album FROM SpotifyClone.artist AS ar
JOIN SpotifyClone.album AS al ON al.album_artist_id = ar.artist_id
HAVING artista = 'Elis Regina';