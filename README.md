## Mix Hello World

Getting started with Mix!

Project generated using:

    mix new hello

## Learnings

### Application

Applications have environment.

Application environment can be set inside `application/0` using `:env`keyword.

Application environments can be read in the code using:

    Application.fetch_env!(:app_name, :env_name)
    # Example
    Application.fetch_env!(:hello, :author)

`fetch_env` returns a `{:ok, value}` response in case of success and `:error` in case of failure.
This is a typical pattern in Elixir to return a length 2 tuple in case of success and just an atom, `:error`, in case of failure.
Elixir also has other variant in case we want a value instead of tuple. It is `fetch_env!`. `!` functions raise error in case of failure.

### Config

Mix projects, by default, do not have a `config` directory.

Created a `config` directory and `config.exs`.

    mkdir config
    touch config/config.exs

Application environments can be updated in `config.exs`.

    import Config
    config :hello, :author, "Raaj Akshar"

### System

Environment variables are different from application environments.

Env variables can be read using `System.fetch_env` and `System.get_env`.

Other thing worth mentioning, didn't have to import `System` module before using it.

### Dependencies

Dependencies are added in `deps/0` in `mix.exs`.

Each dependency is a length 2 tuple. Example `{:req, "~> 0.5.15"}`. The first element of the tuple is an atom, second element is a string.

### Ecto

`Ecto` is needed to interact with the database. The different dependencies needed are:
- :postgrex
- :ecto
- :ecto_sql

Once, the dependencies are needed, perform `mix deps.get`.

#### Repository

Define a Repository, say `Hello.Repo`. It must `use Ecto.Repo`.

#### Schema

Define a Schema, say `Hello.Polls`. It must `use Ecto.Schema`

#### Insert

Ensure, `Hello.Repo` is started, in case you are working in iex.

    Hello.Repo.start_link()

Create a Poll.

    poll = %Hello.Polls{question: "Who was Dr. Kalam", difficulty: "easy"}
    Hello.Repo.insert!(poll)

Create more polls

    poll = %Hello.Polls{question: "Who is Pratibha Patil", difficulty: "medium"}
    Hello.Repo.insert poll

#### List polls

    polls = Hello.Repo.all(Hello.Polls) # Returns a list

    poll = Enum.at(polls, 1)  # Element at index 1 from the list
    # Each list entry is a struct
    IO.puts poll.question
    questions = Enum.map(all_polls, fn poll -> poll.question end)

#### Get a poll

Getting a poll by primary key

    Hello.Repo.get(Hello.Polls, 3)  

Getting a poll by arbitrary field

    Hello.Repo.get_by(Hello.Polls, question: "Who is Dr. Singh")

#### Advanced Queries

Simple query is possible through just sending the schema as a parameter to `Repo.all` and `Repo.get`.

Find polls with difficulty `easy`.

    import Ecto.Query  # Needed to use the `from` macro
    query = from p in Hello.Polls, where: p.difficulty == "easy", select: p
    polls = Hello.Repo.all(query)
