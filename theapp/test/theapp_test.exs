defmodule TheappTest do
  use ExUnit.Case
  doctest Theapp

  test "greets the world" do
    assert Theapp.hello() == :world
  end
end
