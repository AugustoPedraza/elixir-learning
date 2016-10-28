defmodule ListDrop do
  import Drop

  def falls(list) do
    falls(list, [])
  end

  defp falls([head | tail], results) do
    falls(tail, [fall_velocity(head) | results])
  end

  defp falls([], results), do: results |> Enum.reverse
end

