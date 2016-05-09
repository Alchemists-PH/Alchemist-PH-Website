use Mix.Config

cond do
  Mix.env == :dev ->
    config :alchemist_ph, AlchemistPh.Repo,
      adapter: Ecto.Adapters.Postgres,
      username: "duday",
      password: "",
      database: "alchemist_ph_dev",
      hostname: "localhost",
      pool_size: 10

  Mix.env == :test ->
    config :alchemist_ph, AlchemistPh.Repo,
      adapter: Ecto.Adapters.Postgres,
      username: "duday",
      password: "",
      database: "alchemist_ph_test",
      hostname: "localhost",
      pool: Ecto.Adapters.SQL.Sandbox
end

