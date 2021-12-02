defmodule RecursionsChallengeTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the list sum" do
      list = [13, 14, 15]

      result = SumNumbers.call(list)

      expected_result = 42

      assert result == expected_result
    end
  end
end
