defmodule MphDrop do
  def mph_drop do
    drop_pid = spawn(Drop, :drop, [])
    convert(drop_pid)
  end

  defp convert(drop_pid) do
    receive do
      {:earth, distance} ->
        send(drop_pid, {self, :earth, distance})
        convert(drop_pid)
      {:earth, distance, velocity} ->
        mph_velocity = 2.23693669 * velocity
        IO.puts("On Earth, a fall of #{distance} meters yields a velocity of #{mph_velocity} mph.")
        convert(drop_pid)
    end
  end
end

