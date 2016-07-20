defmodule SpotifyExTest.AuthenticationController do
  use SpotifyExTest.Web, :controller

  def authenticate(conn, params) do
    case Spotify.Authentication.authenticate(conn, params) do
     { :ok, token, conn }     -> redirect conn, to: "/"
     { :error, reason, conn } -> redirect conn, to: "/error"
     { :error, reason }       -> redirect conn, to: "/error"
    end
  end
end
