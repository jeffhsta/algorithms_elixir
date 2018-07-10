defmodule AlgorithmsBook.Sorting.InsertionSort do

  def sort([]), do: []
  def sort(list = [_]), do: list
  def sort([head | tail]) do
    Enum.reduce(tail, [head], fn cur, acc -> push_list_items(acc, cur) end)
  end

  defp push_list_items(list, key) do
    list_size = Enum.count(list)
    right_position =
      Enum.reduce(list, list_size, fn cur, acc -> f(key, cur, acc) end)

    remake_list(right_position, key, list)
  end

  defp remake_list(0, key, list), do: [key] ++ list
  defp remake_list(right_position, key, list) do
    first_piece = Enum.slice(list, 0..right_position - 1)
    second_piece = Enum.slice(list, right_position..-1)
    first_piece ++ [key] ++ second_piece
  end

  def f(key, cur, acc) when cur > key, do: acc - 1
  def f(key, cur, acc) when cur <= key, do: acc
end
