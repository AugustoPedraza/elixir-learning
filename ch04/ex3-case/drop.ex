defmodule Drop do
  import :math, only: [sqrt: 1]

  def fall_velocity(planemo, distance) do
    gravity = case planemo do
      :earth when distance >= 0 -> 9.8
      :moon when distance >= 0 -> 1.6
      :mars when distance >= 0 -> 3.71
    end

    2 * gravity * distance |> sqrt
  end
end

