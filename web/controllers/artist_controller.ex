defmodule SpotifyExTest.ArtistController do
  use SpotifyExTest.Web, :controller
  plug SpotifyExTest.Plugs.Auth

  def index(conn, _params) do
    { :ok, artist } = Spotify.Artist.get_artist(conn, "19I4tYiChJoxEO5EuviXpz")
    { :ok, artists } = Spotify.Artist.get_artists(conn, ids: "19I4tYiChJoxEO5EuviXpz,1GAS0rb4L8VTPvizAx2O9J")
    { :ok, top_tracks } = Spotify.Artist.get_top_tracks(conn, "19I4tYiChJoxEO5EuviXpz", country: "US")

    render conn, "index.html", artist: artist, artists: artists, top_tracks: top_tracks
  end
end
