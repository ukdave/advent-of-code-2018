defmodule AdventOfCode2018.Day02 do
  def part1(args) do
    args
    |> String.split
    |> Enum.map(&count_letters/1)
    |> (fn x -> letter_counts_with(x, 2) * letter_counts_with(x, 3) end).()
  end

  def part2(args) do
    ids = String.split(args)
    Enum.reduce_while(ids, nil, fn x, _ ->
      result = find_similar(x, ids)
      if result == nil, do: {:cont, nil}, else: {:halt, str_common(x, result)}
    end)
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

  defp str_diff(str1, str2) do
    String.graphemes(str1)
    |> Enum.zip(String.graphemes(str2))
    |> Enum.map(fn {x, y} -> x != y end)
  end

  defp str_common(str1, str2) do
    String.graphemes(str1)
    |> Enum.zip(String.graphemes(str2))
    |> Enum.filter(fn {x, y} -> x == y end)
    |> Enum.map(fn {x, _} -> x end)
    |> Enum.join
  end

  defp find_similar(str, strs) do
    Enum.find(strs, fn x ->
      Enum.count(str_diff(str, x), fn y -> y == true end) == 1
    end)
  end
end
