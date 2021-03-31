defmodule Campaign.PubSubTest do
  use ExUnit.Case
  doctest Campaign.PubSub

  test "greets the world" do
    assert Campaign.PubSub.hello() == :world
  end
end
