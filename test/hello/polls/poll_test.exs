defmodule Hello.Polls.PollTest do
  use ExUnit.Case
  alias Hello.Polls.Poll
  alias Hello.Repo

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)
  end

  test "instantiate poll" do
    question = "Which day is it today?"
    poll = %Poll{question: question, difficulty: "easy"}
    assert poll.question == question
  end

  test "required fields validation" do
    poll = %Poll{}
    changeset = Poll.changeset(poll, %{})
    assert changeset.valid? == false
    assert Keyword.has_key?(changeset.errors, :question)
    assert Keyword.has_key?(changeset.errors, :difficulty)
  end

  test "insert poll" do
    poll_count = Poll |> Repo.aggregate(:count, :id)
    assert poll_count == 0
    poll = %Poll{}
    changeset = Poll.changeset(poll, %{question: "How is the weather?", difficulty: "easy"})
    {:ok, _poll} = changeset |> Repo.insert()
    poll_count = Poll |> Repo.aggregate(:count, :id)
    assert poll_count == 1
  end
end
