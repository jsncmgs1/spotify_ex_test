defmodule SpotifyExTest.Router do
  use SpotifyExTest.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SpotifyExTest do
    pipe_through :browser # Use the default browser stack

    get "/", HomeController, :index
    get "/profile", ProfileController, :index
    get "/playlist", PlaylistController, :index
    get "/personalization", PersonalizationController, :index
    get "/authorize", AuthorizationController, :authorize
    get "/authenticate", AuthenticationController, :authenticate
    get "/track", TrackController, :index
    get "/album", AlbumController, :index
    get "/artst", ArtistController, :index
    get "/search", SearchController, :index
    post "/search", SearchController, :search
    get "/category", CategoryController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", SpotifyExTest do
  #   pipe_through :api
  # end
end
