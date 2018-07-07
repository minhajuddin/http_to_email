# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :http_to_email,
  namespace: HTE

# Configures the endpoint
config :http_to_email, HTEWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7PxGCfPtLTHY55lQsErvtYDd1eeXTBLKa8/DBvISbtxGMf4sosnO0RzIACMNxTCb",
  render_errors: [view: HTEWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HTE.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
