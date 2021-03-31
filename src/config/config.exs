# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of the Config module.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
import Config

config :user_management_web,
  ecto_repos: [UserManagementWeb.Repo],
  generators: [context_app: false]

# Configures the endpoint
config :user_management_web, UserManagementWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6+9SSZVUjagzUw7KyKHk2d8HVEmrPK1OpIiRQBysJyfKyoGAA6tUaS1qTpE5h9yX",
  render_errors: [view: UserManagementWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: UserManagementWeb.PubSub,
  live_view: [signing_salt: "vQm8jLKw"]

config :campaign_web,
  ecto_repos: [CampaignWeb.Repo],
  generators: [context_app: false]

# Configures the endpoint
config :campaign_web, CampaignWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gT1/n6CK/lR1ulb76GEof8FvWkkE5qy1H2u7bAyo2rEVaR8qcEKtL5+lPevQmPet",
  render_errors: [view: CampaignWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CampaignWeb.PubSub,
  live_view: [signing_salt: "i2ffwb2I"]

# Sample configuration:
#
#     config :logger, :console,
#       level: :info,
#       format: "$date $time [$level] $metadata$message\n",
#       metadata: [:user_id]
#

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
