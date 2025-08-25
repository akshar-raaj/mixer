defmodule Hello.Repo.Migrations.CreateChoice do
  use Ecto.Migration

  def change do
    create table(:choices) do
      add :answer, :string
      add :vote_count, :integer
      add :poll_id, references(:polls), null: false
    end
  end
end
