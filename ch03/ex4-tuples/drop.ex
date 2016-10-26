defmodule Drop do
  import :math, only: [sqrt: 1]
  def fall_velocity({:earth, distance}) when distance >= 0 do
    (2 * 9.8 * distance) |> sqrt
  end
end

