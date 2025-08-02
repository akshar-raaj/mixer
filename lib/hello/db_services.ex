defmodule Hello.DB.Service do
  @moduledoc """
    Services to interact with the database.
  """

  def create_poll(question, difficulty \\ "easy") do
    %Hello.Poll{}
    |> Hello.Poll.changeset(%{question: question, difficulty: difficulty})
    |> Hello.Repo.insert
  end

  def create_choice(answer, vote_count \\ 0) do
    %Hello.Choice{}
    |> Hello.Choice.changeset(%{answer: answer, vote_count: vote_count})
    |> Hello.Repo.insert
  end
end
