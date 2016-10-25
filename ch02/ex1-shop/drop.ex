defmodule Drop do
  def fall_velocity(distance) do
    :math.sqrt(2 * 9.8 * distance)
  end

  def mps_to_mph(mps) do
    2.23693629 * mps
  end

  def mps_to_kph(mph), do: 3.6 * mph

  def fancy_fall_velocity(distance) do
    base = & fall_velocity/1

    mps_to_kph(mps_to_mph(base.(distance)))
  end
end

