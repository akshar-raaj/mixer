defmodule Hello.Repo.Migrations.CreatePolls do
  use Ecto.Migration

  def change do
    create table("polls") do
      add :question, :string
      add :difficulty, :string
    end
  end
end
