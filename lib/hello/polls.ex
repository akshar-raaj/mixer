defmodule Hello.Polls do
  @moduledoc """
    Represents a Question in the Polling application.

    Examples:
      iex> %Hello.Polls{question: "Who is Dr. Kalam", difficulty: "easy"}
  """
  use Ecto.Schema
  schema "polls" do
    field :question, :string
    field :difficulty, :string
  end
end
