defmodule SpotifyExTest.Mixfile do
  use Mix.Project

  def project do
    [app: :spotify_ex_test,
     version: "0.0.1",
     elixir: "~> 1.3",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {SpotifyExTest, []},
     applications: [:phoenix, :phoenix_html, :cowboy, :logger,
                    :spotify_ex, :poison]]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [{:phoenix, "~> 1.3.0"},
     {:phoenix_html, "~> 2.1"},
     {:phoenix_haml, "~> 0.2.1"},
     {:phoenix_live_reload, "~> 1.0", only: :dev},
     {:poison, ">= 1.5.0"},
     {:spotify_ex, path: "~/code/spotify_ex"},
     {:hound, "~> 1.0", only: :test},
     {:cowboy, "~> 1.0"}]
  end
end
