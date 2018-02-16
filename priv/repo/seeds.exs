# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     JsonEctoQuerys.Repo.insert!(%JsonEctoQuerys.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias JsonEctoQuerys.Repo
alias JsonEctoQuerys.Sample
import JsonEctoQuerys.Factory

good_data = %{
  foo: "http://example.com/foo.jpg",
  bar: "http://example.com/bar.jpg",
  baz: "http://example.com/baz.jpg",
}

bad_data = %{
  foo: "bad_url",
  bar: "bad_url",
  baz: nil,
}

insert(:sample, urls_map: good_data)
insert(:sample, urls_map: good_data)
insert(:sample, urls_map: good_data)
insert(:sample, urls_struct: good_data)
insert(:sample, urls_struct: good_data)
insert(:sample, urls_struct: good_data)
insert(:sample, urls_map: bad_data)
insert(:sample, urls_map: bad_data)
insert(:sample, urls_map: bad_data)
insert(:sample, urls_struct: bad_data)
insert(:sample, urls_struct: bad_data)
insert(:sample, urls_struct: bad_data)
