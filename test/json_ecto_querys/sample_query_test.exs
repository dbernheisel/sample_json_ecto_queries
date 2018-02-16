defmodule JsonEctoQuerys.SampleQueryTest do
  use JsonEctoQuerys.DataCase, async: true
  alias JsonEctoQuerys.SampleQuery

  describe "list_samples_that_have_null" do
    test "returns samples that have null URLs" do
      null_map = build(:urls_map, foo: nil)
      sample_with_null = insert(:sample, urls_map: null_map)
      insert(:sample)

      [result] = SampleQuery.list_samples_with_null_url()

      assert sample_with_null.id == result.id
    end
  end

  describe "list_urls_that_have_null" do
    test "returns samples that have null URLs" do
      bad_url_struct = build(:urls_struct, foo: "http://example.com/bad/image.jpg")
      sample_with_bad_url = insert(:sample, urls_struct: bad_url_struct)
      insert(:sample)

      [result] = SampleQuery.list_samples_with_bad_url()

      assert sample_with_bad_url.id == result.id
    end
  end
end
