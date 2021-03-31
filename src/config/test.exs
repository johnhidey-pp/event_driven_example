use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :user_management_web, UserManagementWeb.Endpoint,
  http: [port: 4002],
  server: false

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :campaign_web, CampaignWeb.Endpoint,
  http: [port: 4002],
  server: false

