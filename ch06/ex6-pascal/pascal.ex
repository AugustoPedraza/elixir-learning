defmodule Pascal do
  def triangle(rows_count) do
    triangle([[0, 1, 0]], 1, rows_count)
  end

  defp triangle(result, iteration, limit) when iteration <= limit do
     [previous_row | _] = result

    triangle([next_row(previous_row) | result], iteration + 1, limit)
  end

  defp triangle(result, iteration, limit) when iteration > limit, do: result |> Enum.reverse

  defp next_row(previous_row) do
    next_row(previous_row, 0, [])
  end

  defp next_row([], 0, final), do: [0 | final]

  defp next_row(previous_row, previous_value, result) do
    [current | remaining] = previous_row

    next_row(remaining, current, [(previous_value + current) | result])
  end
end

#     1
#    1 1
#   1 2 1
#  1 3 3 1
# 1 4 6 4 1

