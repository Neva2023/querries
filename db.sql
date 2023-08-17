SELECT count(*) FROM artists
select * from genres
select * from artists where Name= "Lost"
sql-joins-with-chinook-db


select * from artists
join albums on artists.ArtistId= albums.ArtistId
where Name = "U2"

--Find all the songs for a given genres
select * from genres
join tracks on genres.GenreId= tracks.GenreId
where genre = "Opera"


--Find all the songs in a playlist - by playlist name...
select * from playlists
join playlist_track on playlist_track.PlaylistId=playlists.PlaylistId
join tracks on playlist_track.TrackId=tracks.TrackId


--Find all the artists for a given Genre
select * from genres
join tracks on tracks.GenreId= genres.GenreId
join albums on albums.AlbumId= tracks.AlbumId
join artists on artists.ArtistId= albums.ArtistId
