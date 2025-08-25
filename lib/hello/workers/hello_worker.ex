defmodule Hello.Workers.HelloWorker do
  use Oban.Worker, queue: :default
  alias Hello.Repo
  alias Hello.Polls.Poll

  @impl Oban.Worker
  def perform(%Oban.Job{args: %{"message" => message}} = _args) do
    first_poll = Poll |> Repo.all() |> Enum.at(0)
    IO.puts("Worker says: " <> message)
    if first_poll do
      IO.puts("Poll question: #{first_poll.question}")
    end
    :ok
  end
end
