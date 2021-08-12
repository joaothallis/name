# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :name, NameWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6C8qou6A16m1kO7XbyC5OeXZG9bPwhC/0xA2B/xMXgRSy0isNT10W3dTve+vx7JC",
  render_errors: [view: NameWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Name.PubSub,
  live_view: [signing_salt: "u4GKGd5A"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
