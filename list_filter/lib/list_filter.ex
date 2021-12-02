require Integer

defmodule ListFilter do
  def call(list), do: countOdds(list)

  defp countOdds(list) do
    Enum.filter(list, fn n -> String.match?(n, ~r/^[0-9]+$/) end)
    |> Enum.map(fn n -> String.to_integer(n) end)
    |> Enum.filter(fn n -> Integer.is_odd(n) end)
    |> Enum.count()
  end
end
