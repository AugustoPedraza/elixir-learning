defmodule Drop do
  import :math, only: [sqrt: 1]

  def fall_velocity({planemo, distance}) when distance >= 0 do
    fall_velocity(planemo, distance)
  end

  defp fall_velocity(:earth, distance), do: sqrt(2 * 9.8 * distance)

  defp fall_velocity(:moon, distance), do: 2 * 1.6 * distance |> sqrt
end

