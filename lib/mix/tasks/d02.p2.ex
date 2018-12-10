defmodule Mix.Tasks.D02.P2 do
  use Mix.Task

  import AdventOfCode2018.Day02

  @shortdoc "Day 02 Part 2"
  def run(_) do
    File.read!("inputs/day_02.txt")
    |> part2()
    |> IO.inspect(label: "Part 2 Results")
  end
end
