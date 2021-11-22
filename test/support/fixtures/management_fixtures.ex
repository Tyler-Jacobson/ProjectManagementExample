defmodule ProjectManagementExample.ManagementFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ProjectManagementExample.Management` context.
  """

  @doc """
  Generate a project.
  """
  def project_fixture(attrs \\ %{}) do
    {:ok, project} =
      attrs
      |> Enum.into(%{
        decription: "some decription",
        title: "some title"
      })
      |> ProjectManagementExample.Management.create_project()

    project
  end
end
