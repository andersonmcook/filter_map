defmodule Util do
  def odd?(n), do: rem(n, 2) > 0
  def square(n), do: n * n

  def reducer(n, acc) do
    if odd?(n) do
      [square(n) | acc]
    else
      acc
    end
  end

  def concat_reducer(n, acc) do
    if odd?(n) do
      acc ++ [square(n)]
    else
      acc
    end
  end
end
