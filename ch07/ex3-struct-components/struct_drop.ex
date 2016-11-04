defmodule StructDrop do
  import :math, only: [sqrt: 1]

  def fall_velocity(%Tower{planemo: n, height: d}) do
    fall_velocity n, d
  end

  defp fall_velocity(:earth, distance) when distance >= 0 do
    2 * distance * 9.8 |> sqrt
  end

  defp fall_velocity(:moon, distance) when distance >= 0 do
    2 * distance * 1.6 |> sqrt
  end

  defp fall_velocity(:mars, distance) when distance >= 0 do
    2 * distance * 3.71 |> sqrt
  end
end

