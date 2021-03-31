defmodule CampaignWeb.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      CampaignWeb.Telemetry,
      # Start the Endpoint (http/https)
      CampaignWeb.Endpoint
      # Start a worker by calling: CampaignWeb.Worker.start_link(arg)
      # {CampaignWeb.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CampaignWeb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    CampaignWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
