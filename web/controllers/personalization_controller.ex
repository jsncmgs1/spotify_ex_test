defmodule SpotifyExTest.PersonalizationController do
  use SpotifyExTest.Web, :controller
  plug SpotifyExTest.Plugs.Auth

  def index(conn, _params) do
    { :ok, %{items: artists} } = Spotify.Personalization.top_artists(conn)
    { :ok, %{items: tracks} } = Spotify.Personalization.top_tracks(conn)

    render conn, "index.html", artists: artists, tracks: tracks
  end

end
