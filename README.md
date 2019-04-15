# SpotifyExTest

Test app and Examples for [SpotifyEx](https://github.com/jsncmgs1/spotify_ex)

You'll need to add your own client id, secret key, and user Id in the config settings for it to work properly.

## Setup

1. Clone the repo
  ```
  $ git clone git@github.com:jsncmgs1/spotify_ex_test.git
  ```

1. Create a config/secret.exs file. Make it look like this:
  ```
  use Mix.Config

  config :spotify_ex,
    user_id: "YOUR_USER_ID",
    client_id: "YOUR_CLIENT_ID_HERE",
    secret_key: "YOUR_SECRET_KEY_HERE"
  ```

1. Install javascript dependencies
  ```
  $ npm install
  ```

1. Install the mix phx commands (if you don't have them already)
  ```
  $ mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez
  ```

1. Start the server locally
  ```
  $ mix phx.server
  ```

1. Open http://localhost:4000 in your browser
