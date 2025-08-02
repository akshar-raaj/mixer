defmodule Hello.DB.Service do
  @moduledoc """
    Services to interact with the database.
  """

  def create_choice(answer, vote_count \\ 0) do
    %Hello.Choice{}
    |> Hello.Choice.changeset(%{answer: answer, vote_count: vote_count})
    |> Hello.Repo.insert
  end
end
