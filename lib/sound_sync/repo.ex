defmodule SoundSync.Repo do
  use Ecto.Repo,
    otp_app: :sound_sync,
    adapter: Ecto.Adapters.Postgres
end
