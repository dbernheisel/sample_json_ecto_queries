use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :json_ecto_querys, JsonEctoQuerysWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :json_ecto_querys, JsonEctoQuerys.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "json_ecto_querys_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
