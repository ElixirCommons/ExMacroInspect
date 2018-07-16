defmodule ExMacroInspectTest do
  use ExUnit.Case
  doctest ExMacroInspect

  test "greets the world" do
    assert ExMacroInspect.hello() == :world
  end
end
