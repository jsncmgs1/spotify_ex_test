defmodule SpotifyExTest.CategoryController do
  use SpotifyExTest.Web, :controller
  plug SpotifyExTest.Plugs.Auth

  def index(conn, _params) do
    {:ok, %{items: categories}} = Spotify.Category.get_categories(conn, country: "US")
    render conn, "index.html", categories: categories
  end
end
