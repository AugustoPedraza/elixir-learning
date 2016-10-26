defmodule Drop do
  import :math, only: [sqrt: 1]

  def fall_velocity(:earth, distance) do
    sqrt(2 * distance * 9.8)
  end

  def fall_velocity(:moon, distance) do
    sqrt(2 * distance * 1.6)
  end

  def fall_velocity(:mars, distance), do: sqrt(2 * distance * 3.71)
end

