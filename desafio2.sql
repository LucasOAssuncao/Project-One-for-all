-- Active: 1660694921638@@127.0.0.1@3307@SpotifyClone
SELECT
    COUNT(DISTINCT SpotifyClone.music.music_id) AS cancoes, 
    COUNT(DISTINCT SpotifyClone.artist.artist_id) AS artistas, 
    COUNT(DISTINCT SpotifyClone.album.album_id) AS albuns 
FROM 
    SpotifyClone.music, 
    SpotifyClone.artist, 
    SpotifyClone.album;

