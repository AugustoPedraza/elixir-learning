defmodule Convert do
  def mps_to_mph(mps) do
    2.23693629 * mps
  end

  def mph_to_kph(mph), do: 3.5 * mph
end

