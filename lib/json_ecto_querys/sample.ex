defmodule JsonEctoQuerys.Sample do
  use Ecto.Schema
  import Ecto.Changeset

  schema "sample_table" do
    field(:urls_map, :map)

    embeds_one :urls_struct, Urls, on_replace: :update do
      field(:foo, :string)
      field(:bar, :string)
      field(:baz, :string)
    end
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [])
  end

  def map_changeset(struct, params \\ %{}) do
    struct
    |> changeset(params)
    |> cast(params, [:urls_map])
  end

  def embed_changeset(struct, params \\ %{}) do
    struct
    |> changeset(params)
    |> cast_embed(:urls_struct, with: &urls_struct_changeset/2)
  end

  def urls_struct_changeset(struct, params) do
    struct
    |> cast(params, [:foo, :bar, :baz])
  end
end
