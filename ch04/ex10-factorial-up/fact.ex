defmodule Fact do
  def factorial(n) do
    factorial(1, n, 1)
  end

  def factorial(count, limit, result) when count <= limit do
    result = result * count
    factorial(count + 1, limit, result)
  end

  def factorial(_count, _limit, result) do
    result
  end
end

