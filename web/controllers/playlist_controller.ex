defmodule SpotifyExTest.PlaylistController do
  use SpotifyExTest.Web, :controller
  plug :check_tokens

  def index(conn, _params) do
    render conn, "index.html"
  end

  defp check_tokens(conn, _params) do
    unless Spotify.Authentication.tokens_present?(conn) do
      redirect conn, to: authorization_path(conn, :authorize)
    end
    conn
  end
end
