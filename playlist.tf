resource "spotify_playlist" "KaranAujla" {
  name = "KaranAujla"
  tracks = ["7KmCQLSSde0UX5OqCgvGN9"]
}

data "spotify_search_track" "KaranAujla" {
  artist = "Karan Aujla"
}

resource "spotify_playlist" "NewKaranAujla" {
  name = "Karan Aujla New"
  tracks = [ data.spotify_search_track.KaranAujla.tracks[0].id,
   data.spotify_search_track.KaranAujla.tracks[1].id,
   data.spotify_search_track.KaranAujla.tracks[2].id]
}