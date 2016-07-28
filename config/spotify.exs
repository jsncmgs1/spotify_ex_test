use Mix.Config

config :spotify_ex,
  user_id: "12182580077", # replace with your id here,
  callback_url: "http://localhost:4000/authenticate",
  scopes: ["playlist-read-private", "playlist-modify-public", "user-top-read"]
