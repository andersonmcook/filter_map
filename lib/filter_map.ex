defmodule FilterMap do
  @moduledoc """
  Documentation for FilterMap.
  """

  # recursion
  def filter_map([], _, _), do: []
  def filter_map([x | xs], f, m) do
    if f.(x) do
      [m.(x) | filter_map(xs, f, m)]
    else
      filter_map(xs, f, m)
    end
  end

  def filter_map_concat([], _, _), do: []
  def filter_map_concat([x | xs], f, m) do
    if f.(x) do
      [m.(x)] ++ filter_map_concat(xs, f, m)
    else
      filter_map_concat(xs, f, m)
    end
  end

  def filter_map_tail(list, f, m), do: do_filter_map_tail(list, f, m, [])

  defp do_filter_map_tail([], _, _, acc), do: :lists.reverse(acc)
  defp do_filter_map_tail([x | xs], f, m, acc) do
    if f.(x) do
      do_filter_map_tail(xs, f, m, [m.(x) | acc])
    else
      do_filter_map_tail(xs, f, m, acc)
    end
  end
end
