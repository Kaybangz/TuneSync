defmodule SoundSync.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      SoundSyncWeb.Telemetry,
      SoundSync.Repo,
      {DNSCluster, query: Application.get_env(:sound_sync, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: SoundSync.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: SoundSync.Finch},
      # Start a worker by calling: SoundSync.Worker.start_link(arg)
      # {SoundSync.Worker, arg},
      # Start to serve requests, typically the last entry
      SoundSyncWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: SoundSync.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    SoundSyncWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
