defmodule JsonEctoQuerys.Repo.Migrations.AddSampleTableWithMap do
  use Ecto.Migration

  def change do
    create table(:sample_table) do
      add :urls_map, :map
      add :urls_struct, :map
    end
  end
end
