defmodule Count do
  def countdown(from) when from > 0 do
    IO.puts from
    from - 1 |> countdown
  end

  def countdown(from), do: IO.puts "blastoff!"
end

