defmodule HTEWeb.Router do
  use HTEWeb, :router

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

  scope "/", HTEWeb do
    # Use the default browser stack
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/api", HTEWeb do
    pipe_through :api

    post "/email/:id", EmailController, :create
  end

  # Other scopes may use custom stacks.
  # scope "/api", HTEWeb do
  #   pipe_through :api
  # end
end
