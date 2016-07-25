defmodule SpotifyExTest.HomeController do
  use SpotifyExTest.Web, :controller
  plug SpotifyExTest.Plugs.Auth

  def index(conn, _params), do: render conn, "index.html"
end
