defmodule Social.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :like, :integer
      add :dislike, :integer

      timestamps(type: :utc_datetime)
    end
  end
end
