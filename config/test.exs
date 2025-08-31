import Config

config :hello, Hello.Repo,
  hostname: "postgres-db",
  username: "postgres",
  password: "postgres",
  database: "throw_test",
  pool: Ecto.Adapters.SQL.Sandbox
