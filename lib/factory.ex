defmodule JsonEctoQuerys.Factory do
  use ExMachina.Ecto, repo: JsonEctoQuerys.Repo
  alias JsonEctoQuerys.Sample

  def urls_map_factory do
    %{
      foo: "http://example.com/map/foo.jpg",
      bar: "http://example.com/map/bar.jpg",
      baz: "http://example.com/map/baz.jpg",
    }
  end

  def sample_factory do
    %Sample{
      urls_map: build(:urls_map),
      urls_struct: build(:urls_struct)
    }
  end

  def urls_struct_factory do
    %Sample.Urls{
      foo: "http://example.com/struct/foo.jpg",
      bar: "http://example.com/struct/bar.jpg",
      baz: "http://example.com/struct/baz.jpg",
    }
  end
end
