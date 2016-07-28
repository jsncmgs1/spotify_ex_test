defmodule SpotifyExTest.ProfileController do
  use SpotifyExTest.Web, :controller
  plug SpotifyExTest.Plugs.Auth

  def index(conn, _params) do
    {:ok, profile} = Spotify.Profile.me(conn)
    {:ok, another_profile} = Spotify.Profile.user(conn, "12182580077")

    render conn, "index.html", profile: profile, another_profile: another_profile
  end

end
