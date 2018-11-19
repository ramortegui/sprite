defmodule SprintTest do
  use ExUnit.Case
  doctest Sprint

  test "greets the world" do
    assert Sprint.hello() == :world
  end
end
