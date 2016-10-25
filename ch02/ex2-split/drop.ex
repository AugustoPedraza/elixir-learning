defmodule Drop do
  def fall_velocity(distance) do
    :math.sqrt(9.8 * 2 * distance)
  end
end

