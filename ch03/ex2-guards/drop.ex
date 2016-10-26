defmodule Drop do
  import :math, only: [sqrt: 1]

  def fall_velocity(:earth, distance) when distance >= 0 do
    distance * 9.8 |> sqrt
  end

  def fall_velocity(:moon, distance) when distance >= 0 do
    sqrt(distance * 1.6)
  end

  def fall_velocity(:mars, distance) when distance >= 0 do
    sqrt(distance * 3.71)
  end
end

