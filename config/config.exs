# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :board,
  ecto_repos: [Board.Repo]

# Configures the endpoint
config :board, BoardWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3jMSVVwn7Kk3bxbofKRa3wNop6ATeFH9xGilUCuH9am+BQ2avrELe+roraXRbC24",
  render_errors: [view: BoardWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Board.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
