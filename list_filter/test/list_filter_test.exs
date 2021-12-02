defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns return odd count" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      result = ListFilter.call(list)

      expected_result = 3

      assert result == expected_result
    end

    test "returns return zero empty list" do
      list = []

      result = ListFilter.call(list)

      expected_result = 0

      assert result == expected_result
    end
  end
end
