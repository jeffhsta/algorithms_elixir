defmodule AlgorithmsBookTest do
  use ExUnit.Case
  doctest AlgorithmsBook

  test "greets the world" do
    assert AlgorithmsBook.hello() == :world
  end
end
