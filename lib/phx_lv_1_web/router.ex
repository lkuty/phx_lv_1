defmodule PhxLv1Web.Router do
  use PhxLv1Web, :router
  import Phoenix.LiveView.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    # plug :fetch_flash
    plug :fetch_live_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhxLv1Web do
    pipe_through :browser

    get "/", PageController, :index
    get "/test", PageController, :test
  end
end
