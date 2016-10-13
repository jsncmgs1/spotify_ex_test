defmodule SpotifyExTest.PlaylistController do
  use SpotifyExTest.Web, :controller
  plug SpotifyExTest.Plugs.Auth

  def index(conn, _params) do
    #GET collection
    {:ok, %{ items: playlists }} = Spotify.Playlist.featured(conn)

    #GET playlist
    {:ok, playlist} = Spotify.Playlist.get_playlist(conn, "12182580077", "6xQiPOErdJLS3JEUHEC8Y0")

    #POST
    body = Poison.encode! %{name: "foo", public: true}

    {:ok, playlist} = Spotify.Playlist.create_playlist(conn, "12182580077", body)

    #PUT
    :ok = Spotify.Playlist.follow_playlist(conn, "spotify", "103Zi2NG06F9qimASDrszv")

    #DELETE
    :ok = Spotify.Playlist.unfollow_playlist(conn, "spotify", "103Zi2NG06F9qimASDrszv")

    body =  Poison.encode!(%{ uris: [ "spotify:track:755MBpLqJqCO87PkoyBBQC", "spotify:track:1hsWu8gT2We6OzjhYGAged" ]})

    {:ok, %{snapshot_id: snapshot}} = Spotify.Playlist.add_tracks(conn, "12182580077","4c6fqGoRuswz2AGErxwDgi", body, [])


    render conn, "index.html", playlists: playlists, playlist: playlist, snapshot: snapshot
  end

end
