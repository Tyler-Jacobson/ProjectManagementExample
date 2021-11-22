defmodule ProjectManagementExample.Management.Project do
  use Ecto.Schema
  import Ecto.Changeset

  schema "projects" do
    field :decription, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(project, attrs) do
    project
    |> cast(attrs, [:title, :decription])
    |> validate_required([:title, :decription])
  end
end
