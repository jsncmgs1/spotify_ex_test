use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :spotify_ex_test, SpotifyExTest.Endpoint,
  http: [port: 4001],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

config :hound, driver: "phantomjs"

