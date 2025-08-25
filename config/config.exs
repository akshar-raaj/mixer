import Config

config :hello,
  author: "Akshar Raaj",
  organisation: :ascend,
  team: "EPD",
  location: "Hyderabad",
  cto: "Prasad Sristi"

config :hello, :ecto_repos, [Hello.Repo]

config :hello, Hello.Repo,
  database: "throw",
  username: "postgres",
  hostname: "postgres-db",
  password: "postgres"

import_config "#{config_env()}.exs"
