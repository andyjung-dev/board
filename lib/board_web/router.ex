defmodule BoardWeb.Router do
  use BoardWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BoardWeb do
    pipe_through :api
    post "/subscriptions", SubscriptionController, :create
  end
end
