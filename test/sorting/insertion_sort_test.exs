defmodule AlgorithmsBook.Sorting.InsertionSortTest do
  use ExUnit.Case
  alias AlgorithmsBook.Sorting.InsertionSort

  test "should return an empty list if the same is passed by" do
    assert InsertionSort.sort([]) == []
  end

  test "should reuturn a list with one element if the same is passed by" do
    assert InsertionSort.sort([1]) == [1]
  end

  test "should return sorted list if a sorted list is passed by" do
    assert InsertionSort.sort([1, 2, 3]) == [1, 2, 3]
  end

  test "should return the list sorted from lowest to higest" do
    assert InsertionSort.sort([3, 2, 1]) == [1, 2, 3]
  end

  test "should return the list sorted from lowest to higest as the example in the book" do
    assert InsertionSort.sort([5, 2, 4, 6, 1, 3]) == [1, 2, 3, 4, 5, 6]
  end
end
