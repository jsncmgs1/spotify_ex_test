defmodule SpotifyExTest.AuthenticationController do
  use SpotifyExTest.Web, :controller

  def authenticate(conn, params) do
    case Spotify.Authentication.call(conn, params) do
      { 200, conn, %{"access_token" => _token} } ->
        redirect conn, to: "/"
      { 404, _ } -> redirect conn, to: "/error"
      { 500, _ }-> redirect conn, to: "/error"
    end
  end
end
