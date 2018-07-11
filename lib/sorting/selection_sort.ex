defmodule AlgorithmsBook.Sorting.SelectionSort do
  def sort([]), do: []
  def sort([n]), do: [n]

  def sort(list) do
    min = Enum.min(list)

    new_list =
      list
      |> List.delete(min)
      |> sort()

    [min] ++ new_list
  end
end
