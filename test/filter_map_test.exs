defmodule FilterMapTest do
  @moduledoc false

  use ExUnit.Case

  import Util

  test "all same" do
    arg = Enum.to_list(1..100)

    result = for n <- arg, odd?(n), do: square(n)

    assert FilterMap.filter_map_concat(arg, &odd?/1, &square/1) == result

    assert FilterMap.filter_map(arg, &odd?/1, &square/1) == result

    assert arg |> Enum.filter(&odd?/1) |> Enum.map(&square/1) == result

    assert for n <- arg, odd?(n), do: square(n) == result

    assert Enum.reduce(arg, [], &reducer/2) |> Enum.reverse() == result

    assert Enum.reduce(arg, [], &concat_reducer/2) == result
  end
end
