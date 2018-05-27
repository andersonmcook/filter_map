defmodule Benchmark do
  @moduledoc false

  import Util

  def compare do
    arg = Enum.to_list(1..2000)

    tests = %{
      recursion_concat: fn -> FilterMap.filter_map_concat(arg, &odd?/1, &square/1) end,
      recursion_prepend: fn -> FilterMap.filter_map(arg, &odd?/1, &square/1) end,
      enum: fn -> arg |> Enum.filter(&odd?/1) |> Enum.map(&square/1) end,
      comprehension: fn -> for n <- arg, odd?(n), do: square(n) end,
      reduce: fn -> Enum.reduce(arg, [], &reducer/2) |> Enum.reverse() end,
      concat_reduce: fn -> Enum.reduce(arg, [], &concat_reducer/2) end
    }

    opts = [
      memory_time: 2,
      console: [extended_statistics: true]
    ]

    Benchee.run(tests, opts)
  end
end
