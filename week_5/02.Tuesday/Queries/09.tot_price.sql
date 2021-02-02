SELECT sum(UnitPrice) FROM tracks JOIN albums ON albums.AlbumsId = tracks.AlbumId WHERE albums.ArtistId = '58';
