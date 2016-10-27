defmodule Count do
  def countup(limit), do: countup(1, limit)

  defp countup(count, limit) when count <= limit do
    IO.inspect(count)
    countup(count + 1, limit)
  end

  defp countup(count, limit), do: IO.puts "Finished!"
end

