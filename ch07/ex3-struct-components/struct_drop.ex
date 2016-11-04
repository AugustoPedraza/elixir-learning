defmodule StructDrop do
  import :math, only: [sqrt: 1]

  def fall_velocity(%Tower{planemo: n, height: d}) do
    Map.get(%{earth: 9.8, moon: 1.6, mars: 3.71}, n) |> fall_velocity(d)
  end

  defp fall_velocity(gravity, distance) when distance >= 0 do
    2 * distance * gravity |> sqrt
  end
end

