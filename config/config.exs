import Config

config :hello,
  author: "Akshar Raaj",
  organisation: :ascend,
  team: "EPD",
  location: "Hyderabad",
  cto: "Prasad Sristi",
  ecto_repos: [Hello.Repo]


config :hello, Hello.Repo,
  database: "throw",
  username: "postgres",
  hostname: "postgres-db",
  password: "postgres"

config :hello, Oban,
  engine: Oban.Engines.Basic,
  queues: [default: 10],
  repo: Hello.Repo

import_config "#{config_env()}.exs"
