# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :vision_server,
  ecto_repos: [VisionServer.Repo]

# Configures the endpoint
config :vision_server, VisionServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pP1oNeKLONoI2RxV2miF2g4aUPKZ6yQpmHjUnU6dVvA0DENDUcHc320DkL81Pw3I",
  render_errors: [view: VisionServerWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: VisionServer.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
