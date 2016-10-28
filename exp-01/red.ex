defmodule Red do
  def reduce(result, [], _function), do: result

  def reduce(init_result, [current | remaining], function) do
    result = function.(current, init_result)

    reduce(result, remaining, function)
  end
end
# Red.reduce(1, [1,2,3,4,5], fn(total, n) -> n * total end)
# => 120

