defmodule Social.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :title, :string
    field :like, :integer
    field :dislike, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :like, :dislike])
    |> validate_required([:title, :like, :dislike])
  end
end
