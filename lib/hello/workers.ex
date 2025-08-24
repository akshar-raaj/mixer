defmodule Hello.HelloWorker do
  use Oban.Worker, queue: :default

  @impl Oban.Worker
  def perform(%Oban.Job{args: %{"message" => message}} = _args) do
    IO.puts("Worker says: " <> message)
  end
end
