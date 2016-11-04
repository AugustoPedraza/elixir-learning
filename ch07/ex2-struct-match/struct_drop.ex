defmodule StructDrop do
  def fall_velocity(t), do: fall_velocity(t.planemo, t.height)

  defp fall_velocity(:earth, distance) when distance >= 0, do: 2 * distance * 9.8  |> :math.sqrt
  defp fall_velocity(:moon, distance)  when distance >= 0, do: 2 * distance * 1.6  |> :math.sqrt
  defp fall_velocity(:mars, distance)  when distance >= 0, do: 2 * distance * 3.71 |> :math.sqrt
end
