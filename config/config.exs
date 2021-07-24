# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :challenge,
  ecto_repos: [Challenge.Repo]

# Configures the endpoint
config :challenge, ChallengeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JN5zBJmSz9cQHA6WgAi/j9oqWQDyeQerwogiU/bOowx58VWD3KEGqtiAbDI1HizS",
  render_errors: [view: ChallengeWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Challenge.PubSub,
  live_view: [signing_salt: "M4AGF/oy"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
