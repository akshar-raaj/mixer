import Config

config :hello,
  author: "Raaj Akshar",
  organisation: :ascend_together,
  team: "EPD"
config :ex_aws,
  access_key_id: System.get_env("AWS_ACCESS_KEY_ID"),
  secret_access_key: System.get_env("AWS_SECRET_ACCESS_KEY"),
  region: "us-west-2"
config :hello, Hello.Repo,
  database: "throw",
  username: "postgres",
  hostname: "postgres-db",
  password: "postgres"
config :hello, ecto_repos: [Hello.Repo]
