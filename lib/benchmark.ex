defmodule Benchmark do
  @moduledoc false

  import Util

  def compare do
    inputs = %{
      thousand: Enum.to_list(1..1000),
      ten_thousand: Enum.to_list(1..10_000)
    }

    tests = %{
      recursion_concat: fn x -> FilterMap.filter_map_concat(x, &odd?/1, &square/1) end,
      recursion_prepend: fn x -> FilterMap.filter_map(x, &odd?/1, &square/1) end,
      enum: fn x -> x |> Enum.filter(&odd?/1) |> Enum.map(&square/1) end,
      comprehension: fn x -> for n <- x, odd?(n), do: square(n) end,
      reduce: fn x -> x |> Enum.reduce([], &reducer/2) |> Enum.reverse() end,
      concat_reduce: fn x -> Enum.reduce(x, [], &concat_reducer/2) end,
      stream: fn x -> x |> Stream.filter(&odd?/1) |> Stream.map(&square/1) |> Enum.to_list() end
    }

    opts = [
      inputs: inputs,
      memory_time: 2,
      console: [extended_statistics: true]
    ]

    Benchee.run(tests, opts)
  end
end
