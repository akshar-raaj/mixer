defmodule HelloTest do
  use ExUnit.Case

  test "say hello" do
    assert Hello.hello() == :world
  end

  test "greet default" do
    assert Hello.greet() == "Hello, akshar!"
  end

  test "greet personally" do
    assert Hello.greet("prasad") == "Hello, prasad!"
  end
end
