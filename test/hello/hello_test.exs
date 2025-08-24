defmodule Hello.HelloTest do
  use ExUnit.Case

  test "say hello" do
    assert Hello.Hello.hello() == :world
  end

  test "greet default" do
    assert Hello.Hello.greet() == "Hello, akshar!"
  end

  test "greet personally" do
    assert Hello.Hello.greet("prasad") == "Hello, prasad!"
  end
end
