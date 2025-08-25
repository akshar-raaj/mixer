defmodule Hello.DB.Service do
  import Ecto.Query, only: [from: 2]
  @moduledoc """
    Services to interact with the database.
  """

  def create_poll(question, difficulty \\ "easy") do
    %Hello.Polls.Poll{}
    |> Hello.Polls.Poll.changeset(%{question: question, difficulty: difficulty})
    |> Hello.Repo.insert
  end

  def list_polls do
    query = from p in Hello.Polls.Poll, select: p, preload: [:choices]
    Hello.Repo.all(query)
  end


  def create_choice(answer, vote_count \\ 0) do
    %Hello.Polls.Choice{}
    |> Hello.Polls.Choice.changeset(%{answer: answer, vote_count: vote_count})
    |> Hello.Repo.insert
  end
end
