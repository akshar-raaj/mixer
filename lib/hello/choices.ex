defmodule Hello.Choice do
  use Ecto.Schema

  schema "choices" do
    field :answer, :string
    field :vote_count, :integer
    belongs_to :poll, Hello.Poll
  end
end
