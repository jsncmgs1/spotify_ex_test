defmodule SpotifyExTest.AuthenticationController do
  use SpotifyExTest.Web, :controller

  def authenticate(conn, params) do
    path  = case Spotify.Authentication.authenticate(conn, params) do
     { :ok, conn } -> playlist_path(conn, :index)
     { :error, reason, conn } -> "/error/"
    end

    redirect conn, to: path
  end
end
