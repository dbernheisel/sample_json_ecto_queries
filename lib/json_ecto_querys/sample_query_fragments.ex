defmodule JsonEctoQuerys.SampleQuery.Fragments do
  import Ecto.Query.API, only: [fragment: 1]

  defmacro where_urls_has_a_null do
    quote do
      fragment(
        """
        (urls_map->>'foo' IS NULL) OR
        (urls_map->>'bar' IS NULL) OR
        (urls_map->>'baz' IS NULL) OR
        (urls_struct->>'foo' IS NULL) OR
        (urls_struct->>'bar' IS NULL) OR
        (urls_struct->>'baz' IS NULL)
        """
      )
    end
  end

  defmacro where_urls_contain(bad_value) do
    quote do
      fragment(
        """
        (urls_map->>'foo' ILIKE ?) OR
        (urls_map->>'bar' ILIKE ?) OR
        (urls_map->>'baz' ILIKE ?) OR
        (urls_struct->>'foo' ILIKE ?) OR
        (urls_struct->>'bar' ILIKE ?) OR
        (urls_struct->>'baz' ILIKE ?)
        """,
        ^"%#{unquote(bad_value)}%",
        ^"%#{unquote(bad_value)}%",
        ^"%#{unquote(bad_value)}%",
        ^"%#{unquote(bad_value)}%",
        ^"%#{unquote(bad_value)}%",
        ^"%#{unquote(bad_value)}%"
      )
    end
  end
end
