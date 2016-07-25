defmodule SpotifyExTest.PlaylistController do
  use SpotifyExTest.Web, :controller
  plug SpotifyExTest.Plugs.Auth

  def index(conn, _params) do
    {:ok, profile} = Spotify.Profile.me(conn)
    render conn, "index.html", profile: profile
  end

end
