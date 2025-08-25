defmodule Hello.Polls.Poll do
  @moduledoc """
  Represents a Question in the Polling application.
  """
  use Ecto.Schema
  import Ecto.Changeset

  schema "polls" do
    field :question, :string
    field :difficulty, :string
    has_many :choices, Hello.Polls.Choice
  end

  def changeset(poll, params \\ %{}) do
    poll
    |> cast(params, [:question, :difficulty])
    |> validate_required([:question, :difficulty])
  end
end

