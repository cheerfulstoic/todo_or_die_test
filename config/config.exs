# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :todo_or_die_test,
  ecto_repos: [TodoOrDieTest.Repo]

# Configures the endpoint
config :todo_or_die_test, TodoOrDieTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "B+Akh1on7j+0hIy7X3Bn1AKsGi+t1korYQHJcWErXdPworicgqvqeh+IgJk9Bo3s",
  render_errors: [view: TodoOrDieTestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TodoOrDieTest.PubSub,
  live_view: [signing_salt: "GIwiARSz"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
