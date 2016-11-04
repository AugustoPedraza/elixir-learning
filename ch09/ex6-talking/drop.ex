defmodule Drop do
  def drop do
    receive do
      {from, planemo, distance} ->
        send(from, {planemo, distance, fall_velocity(planemo, distance)})
        drop()
    end
  end

  defp fall_velocity(:earth, distance), do: 2 * 9.8 * distance |> :math.sqrt
end

