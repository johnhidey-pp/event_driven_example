defmodule UserObfuscationTest do
  use ExUnit.Case
  doctest UserObfuscation

  test "greets the world" do
    assert UserObfuscation.hello() == :world
  end
end
