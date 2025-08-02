defmodule Hello.Choice do
  use Ecto.Schema
  import Ecto.Changeset

  schema "choices" do
    field :answer, :string
    field :vote_count, :integer
    belongs_to :poll, Hello.Poll
  end

  def changeset(choice, params \\ %{}) do
    choice
    |> cast(params, [:answer, :vote_count])
    |> validate_required([:answer, :vote_count])
  end
end
