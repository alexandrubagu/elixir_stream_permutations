defmodule StreamPermutationsTest do
  use ExUnit.Case

  require StreamPermutations

  @list [1, 2, 3, 4]

  test "generate a stream of permutations for given list" do
    assert [
             [1, 2, 3, 4],
             [1, 2, 4, 3],
             [1, 3, 2, 4],
             [1, 3, 4, 2],
             [1, 4, 2, 3],
             [1, 4, 3, 2],
             [2, 1, 3, 4],
             [2, 1, 4, 3],
             [2, 3, 1, 4],
             [2, 3, 4, 1],
             [2, 4, 1, 3],
             [2, 4, 3, 1],
             [3, 1, 2, 4],
             [3, 1, 4, 2],
             [3, 2, 1, 4],
             [3, 2, 4, 1],
             [3, 4, 1, 2],
             [3, 4, 2, 1],
             [4, 1, 2, 3],
             [4, 1, 3, 2],
             [4, 2, 1, 3],
             [4, 2, 3, 1],
             [4, 3, 1, 2],
             [4, 3, 2, 1]
           ] ==
             @list
             |> StreamPermutations.generate()
             |> Enum.into([])
  end
end
