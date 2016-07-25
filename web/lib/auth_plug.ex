defmodule SpotifyExTest.Plugs.Auth do
  import Plug.Conn

  def init(default), do: default

  def call(conn, _default) do
    unless Spotify.Authentication.authenticated?(conn) do
      Phoenix.Controller.redirect conn, external: Spotify.Authorization.url
    else
      conn
    end
  end
end
