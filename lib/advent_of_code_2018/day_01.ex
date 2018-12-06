defmodule AdventOfCode2018.Day01 do
  def part1(args) do
    args
    |> String.split()
    |> Enum.map(&String.to_integer/1)
    |> Enum.sum()
  end

  def part2(args) do
    args
    |> String.split()
    |> Stream.cycle()
    |> Stream.map(&String.to_integer/1)
    |> Stream.scan(&(&1 + &2))
    |> Enum.reduce_while(MapSet.new([0]), fn x, acc ->
         if !MapSet.member?(acc, x), do: {:cont, MapSet.put(acc, x)}, else: {:halt, x}
       end)
  end
end
