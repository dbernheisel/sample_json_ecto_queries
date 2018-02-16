defmodule JsonEctoQuerys.SampleTest do
  use JsonEctoQuerys.DataCase, async: true
  alias JsonEctoQuerys.Sample

  describe "map_changeset" do
    test "casts the json to a map" do
      urls_map = params_for(:urls_map, baz: nil)
      params = params_for(:sample, urls_map: urls_map)

      changeset = Sample.map_changeset(%Sample{}, params)

      changes = changeset.changes[:urls_map]
      assert changes[:foo]
      assert changes[:bar]
      refute changes[:baz]
    end
  end

  describe "embed_changeset" do
    test "casts the json to a struct" do
      urls_struct = params_for(:urls_struct, baz: nil)
      params = params_for(:sample, urls_struct: urls_struct)

      changeset = Sample.embed_changeset(%Sample{}, params)

      changes = changeset.changes[:urls_struct].changes
      assert changes[:foo]
      assert changes[:bar]
      refute changes[:baz]
    end
  end
end
