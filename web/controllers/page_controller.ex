defmodule SpotifyExTest.PageController do
  use SpotifyExTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
