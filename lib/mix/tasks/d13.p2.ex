defmodule Mix.Tasks.D13.P2 do
  use Mix.Task

  import AdventOfCode2018.Day13

  @shortdoc "Day 13 Part 2"
  def run(_) do
    input = nil

    input
    |> part2() 
    |> IO.inspect(label: "Part 2 Results") 
  end
end   
