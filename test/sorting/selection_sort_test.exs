defmodule AlgorithmsBook.Sorting.SelectionSortTest do
  use ExUnit.Case
  alias AlgorithmsBook.Sorting.SelectionSort

  test "should return an empty list if the same os passed" do
    assert SelectionSort.sort([]) == []
  end

  test "should return an list with one element if the same was passed" do
    assert SelectionSort.sort([1]) == [1]
  end

  test "should return the same list if a sorted list was pass" do
    assert SelectionSort.sort([1, 2, 3, 4]) == [1, 2, 3, 4]
  end

  test "should return a sorted list" do
    assert SelectionSort.sort([2, 5, 3, 1, 4]) == [1, 2, 3, 4, 5]
  end
end
