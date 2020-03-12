# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :phx_lv_1, PhxLv1Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jIE0X+1iW8i2sjIEwCI5hQbJIGzAQAdO8asf6vFhdlbmEE0lBPSCRKdksE3x6iG5",
  render_errors: [view: PhxLv1Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxLv1.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "4lVN7vgl"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
