SELECT sum(UnitPrice) FROM tracks JOIN albums ON albums.ArtistId = tracks.AlbumId WHERE albums.ArtistId = '58';
