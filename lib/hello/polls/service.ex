defmodule Hello.Polls.Service do
  @moduledoc """
  Services to interact with polls and choices.
  """

  import Ecto.Query, only: [from: 2]
  alias Hello.Repo
  alias Hello.Polls.{Poll, Choice}

  def create_poll(question, difficulty \\ "easy") do
    %Poll{}
    |> Poll.changeset(%{question: question, difficulty: difficulty})
    |> Repo.insert()
  end

  def earliest_poll do
    Poll
    |> Ecto.Query.first()
    |> Repo.one()
  end

  def latest_poll do
    Poll
    |> Ecto.Query.last()
    |> Repo.one()
  end

  def list_polls do
    query = from p in Poll, select: p, preload: [:choices]

    query
    |> Repo.all()
  end

  def create_choice(answer, vote_count \\ 0) do
    %Choice{}
    |> Choice.changeset(%{answer: answer, vote_count: vote_count})
    |> Repo.insert()
  end
end
