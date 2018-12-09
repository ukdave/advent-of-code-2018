defmodule AdventOfCode2018.Day02 do
  def part1(args) do
    args
    |> String.split
    |> Enum.map(&count_letters/1)
    |> (fn x -> letter_counts_with(x, 2) * letter_counts_with(x, 3) end).()
  end

  def part2(_args) do
  end

  defp count_letters(str) do
    str
    |> String.graphemes
    |> Enum.reduce(Map.new, fn x, acc -> Map.update(acc, x, 1, &(&1+1)) end)
  end

  defp letter_counts_with(counts, amount) do
    counts
    |> Enum.map(&Map.values/1)
    |> Enum.count(fn x -> Enum.member?(x, amount) end)
  end
end
