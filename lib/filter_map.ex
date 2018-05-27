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
end
