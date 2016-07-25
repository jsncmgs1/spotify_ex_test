defmodule SpotifyExTest.PersonalizationController do
  use SpotifyExTest.Web, :controller
  plug SpotifyExTest.Plugs.Auth

  def index(conn, _params) do
    {:ok, top_tracks} = Spotify.Personalization.top_tracks(conn)
    # {:ok, top_artists} = Spotify.Personalization.top_artists(conn)

    render conn, "index.html", top_tracks: top_tracks
  end

end
