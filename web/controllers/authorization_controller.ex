defmodule SpotifyExTest.AuthorizationController do
  use SpotifyExTest.Web, :controller

  def authorize(conn, _params) do
    redirect conn, external: Spotify.Authorization.authorize_endpoint
  end
end
