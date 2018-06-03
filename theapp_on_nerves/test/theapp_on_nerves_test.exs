defmodule TheappOnNervesTest do
  use ExUnit.Case
  doctest TheappOnNerves

  test "greets the world" do
    assert TheappOnNerves.hello() == :world
  end
end
