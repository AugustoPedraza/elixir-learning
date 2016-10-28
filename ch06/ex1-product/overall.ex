defmodule Overall do
  def product([]), do: 0

  def product(list), do: product(1, list)

  defp product(result, [current | remaining]) do
    result = result * current
    product(result, remaining)
  end

  defp product(result, []), do: result
end

