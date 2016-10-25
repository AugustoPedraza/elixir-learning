defmodule Drop do
  import :math, only: [sqrt: 1]

  def fall_velocity(meters) do
    sqrt(2 * 9.8 * meters)
  end
end

