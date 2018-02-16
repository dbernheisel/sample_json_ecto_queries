defmodule JsonEctoQuerys.SampleQuery do
  import Ecto.Query
  import JsonEctoQuerys.SampleQuery.Fragments
  alias JsonEctoQuerys.Repo
  alias JsonEctoQuerys.Sample

  def list_samples_with_null_url do
    Sample
    |> where([_q], where_urls_has_a_null())
    |> Repo.all
  end

  def list_samples_with_bad_url do
    Sample
    |> where([_q], where_urls_contain("bad"))
    |> Repo.all
  end
end
