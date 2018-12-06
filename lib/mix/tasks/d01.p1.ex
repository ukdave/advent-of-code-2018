defmodule Mix.Tasks.D01.P1 do
  use Mix.Task

  import AdventOfCode2018.Day01

  @shortdoc "Day 01 Part 1"
  def run(_) do
    File.read!("inputs/day_01.txt")
    |> part1()
    |> IO.inspect(label: "Part 1 Results")
  end
end
