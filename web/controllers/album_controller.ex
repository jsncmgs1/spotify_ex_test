defmodule SpotifyExTest.AlbumController do
  use SpotifyExTest.Web, :controller
  plug SpotifyExTest.Plugs.Auth

  def index(conn, _params) do
    {:ok, album} = Spotify.Album.get_album(conn, "1WBZyULtlANBKed7Zf9cDP")
    {:ok, albums} = Spotify.Album.get_albums(conn, ids: album_ids)
    {:ok, %{items: tracks}} = Spotify.Album.get_album_tracks(conn, "1WBZyULtlANBKed7Zf9cDP")

    render conn, "index.html", album: album, albums: albums, tracks: tracks
  end

  defp album_ids do
    "1WBZyULtlANBKed7Zf9cDP,0YlgzYfI3a1OrGBBN0wWTG"
  end

end
