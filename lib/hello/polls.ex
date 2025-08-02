defmodule Hello.Poll do
  @moduledoc """
    Represents a Question in the Polling application.

    Examples:
      iex> %Hello.Polls{question: "Who is Dr. Kalam", difficulty: "easy"}
  """
  use Ecto.Schema
  import Ecto.Changeset
  schema "polls" do
    field :question, :string
    field :difficulty, :string
    has_many :choices, Hello.Choice
  end

  def changeset(poll, params \\ %{}) do
    poll
    |> cast(params, [:question, :difficulty])
    |> validate_required([:question, :difficulty])
  end
end
