# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :json_ecto_querys,
  ecto_repos: [JsonEctoQuerys.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :json_ecto_querys, JsonEctoQuerysWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uQpfig/fcvTclcQOBxU7MRe15YS92yJoIL5/5irp+CpRgDKsCKI7cCtaLzxV+qfY",
  render_errors: [view: JsonEctoQuerysWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: JsonEctoQuerys.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
