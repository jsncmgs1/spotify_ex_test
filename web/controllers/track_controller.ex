defmodule SpotifyExTest.TrackController do
  use SpotifyExTest.Web, :controller
  plug SpotifyExTest.Plugs.Auth

  def index(conn, _params) do
    { :ok, track } = Spotify.Track.get_track(conn, "5ZrrXIYTvjXPKVQMjqaumR")
    { :ok, tracks } = Spotify.Track.get_tracks(conn, ids: track_ids)

    { :ok, audio_features } = Spotify.Track.audio_features(conn, ids: track_ids)
    { :ok, audio_feature } = Spotify.Track.audio_features(conn, "5ZrrXIYTvjXPKVQMjqaumR")

    params = [ track: track, tracks: tracks,  audio_features: audio_features, audio_feature: audio_feature ]
    render conn, "index.html", params
  end

  def track_ids do
    ["5ZrrXIYTvjXPKVQMjqaumR", "4UiLR6XySIF6ocpJgDKBjv"] |> Enum.join(",")
  end

end
