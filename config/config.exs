# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :spotify_ex_test, SpotifyExTest.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "XWj0/8NkJCvKVj8UNhfckOQVW5SY0qfrHhAcIT+VjQR52+4XapGolL01oEmRf9mQ",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: SpotifyExTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
import_config "spotify.exs"
import_config "secret.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false

config :phoenix, :template_engines,
  haml: PhoenixHaml.Engine

config :hound, driver: "phantomjs"
