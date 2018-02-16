defmodule JsonEctoQuerysWeb.Router do
  use JsonEctoQuerysWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", JsonEctoQuerysWeb do
    pipe_through :api
  end
end
