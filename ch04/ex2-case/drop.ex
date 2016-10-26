defmodule Drop do
  import :math, only: [sqrt: 1]

  def fall_velocity(planemo, distance) when distance >= 0 do
    gravity = case planemo do
      :earth -> 9.8
      :moon  -> 1.6
      :mars  -> 3.71
    end

    gravity * 2 * distance |> sqrt
  end
end

