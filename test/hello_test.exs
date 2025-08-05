defmodule HelloTest do
  use ExUnit.Case
  doctest Hello

  test "greets the world" do
    assert Hello.hello() == :world
  end

  test "greets personaly default" do
    assert Hello.greet() == "Hello, akshar!"
  end

  test "greet personally" do
    assert Hello.greet("prasad") == "Hello, prasad!"
  end
end
