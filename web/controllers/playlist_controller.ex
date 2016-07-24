defmodule SpotifyExTest.PlaylistController do
  use SpotifyExTest.Web, :controller
  plug :check_tokens

  def index(conn, _params) do
    {:ok, me} = Spotify.Profile.me!
    render conn, "index.html"
  end

  defp check_tokens(conn, _params) do
    unless Spotify.Authentication.authenticated?(conn) do
      redirect conn, to: authorization_path(conn, :authorize)
    else
      conn
    end
  end
end
