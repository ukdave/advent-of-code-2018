defmodule AdventOfCode2018.Day01Test do
  use ExUnit.Case

  import AdventOfCode2018.Day01

  test "part1" do
    assert part1("+1 -2 +3 +1") == 3
    assert part1("+1 -1") == 0
    assert part1("+1 +1 +1") == 3
    assert part1("+1 +1 -2") == 0
    assert part1("-1 -2 -3") == -6
  end

  @tag :skip
  test "part2" do
    input = nil
    result = part2(input)

    assert result
  end
end
