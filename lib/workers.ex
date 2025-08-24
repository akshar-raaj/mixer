defmodule Hello.HelloWorker do
  use Oban.Worker, queue: :default
  alias Hello.Repo
  alias Hello.Poll

  @impl Oban.Worker
  def perform(%Oban.Job{args: %{"message" => message}} = _args) do
    polls = Repo.all Poll
    first_poll = Poll |> Repo.all |> Enum.at(0)
    IO.puts("Worker says: " <> message)
    IO.puts("Poll author: #{first_poll.author}")
  end
end
